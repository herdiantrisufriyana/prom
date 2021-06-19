#' DI-VNN calibration and evaluation for estimation task in PROM study
#'
#' Calibrate and evaluate a DI-VNN model in a single pipeline for estimation 
#' task in this PROM study.
#'
#' @param timing_data Whole set with the time of delivery, a list of 
#' ExpressionSet that includes training, calibration, and testing sets, in 
#' which the outcome is already changed to the time of delivery.
#' @param data Whole set with PROM, a list of ExpressionSet that includes 
#' training, calibration, and testing sets.
#' @param timing_model DI-VNN modeling results for estimation task, a list of 
#' Keras model object, early-stopping callback object, training index vector, 
#' validation index vector, a list of history of the Keras training, and a list 
#' of resampled evaluation results.
#' @param model DI-VNN modeling results for classification task, a list of Keras 
#' model object, early-stopping callback object, training index vector, 
#' validation index vector, a list of history of the Keras training, and a list 
#' of resampled evaluation results.
#' @param calib_model Trained caret model for calibrating the classification 
#' model, a caret object of the output calibrating model of DI-VNN in 
#' \code{divnn_calibrator_evaluator}.
#' @param batch_size Batch size, an integer of the number of instances used 
#' for each step or iteration.
#' @param title Title for log, a character of the title.
#' @param dir Path for saving the results, a character of the folder path.
#' @param file File name prefix, a character of the file name prefix.
#'
#' @details
#' This function specifically works for a DI-VNN pipeline in this PROM study.
#' 
#' @return Various results, a list of objects for the model (caret-like model 
#' object), calibrating model (caret object), and evaluation results (evalm 
#' object).
#' 

divnn_timereg_evaluator=function(timing_data
                                 ,data
                                 ,timing_model
                                 ,model
                                 ,calib_model
                                 ,batch_size=128
                                 ,title
                                 ,dir='.'
                                 ,file=NULL){
  
  # Print message for reproducible logging.
  cat(title,'\n')
  cat('Started:',as.character(now()),'\n')
  
  #Get timing regression of DI-VNN.
  cat('Get timing regression of DI-VNN\n')
  prediction=
    timing_model$ontonet %>%
    
    # Predict the outcome of the internal validation set.
    predict_generator(
      generator=
        generator.ontoarray(
          timing_data[['int']]
          ,seq(ncol(timing_data[['int']]))
          ,batch_size=batch_size
        )
      ,steps=ceiling(ncol(timing_data[['int']])/512)
      ,verbose=1
    ) %>%
    
    # Give back the name of the DI-VNN ontologies.
    setNames(
      timing_model$history$metrics %>%
        names() %>%
        .[str_detect(.,'val_')
          &str_detect(.,'_loss')
          &str_detect(.,'ONT|root')] %>%
        str_remove_all('val_|_loss')
    ) %>%
    
    # Set back number of instances, that is changed due to batch sizing.
    lapply(function(y){
      y[seq(ncol(timing_data[['int']])),,drop=F]
    }) %>%
    
    # Combine with the outcome data.
    c(list(outcome=timing_data[['int']]$outcome)) %>%
    as.data.frame() %>%
    
    # Wrap up.
    select(root,outcome) %>%
    `rownames<-`(colnames(timing_data[['int']]))
  
  # Create an empty list to create a caret-like list.
  timing_model2=list()
  timing_model2$results=
    timing_model$evaluation %>%
    lapply(as.data.frame) %>%
    do.call(rbind,.) %>%
    select(root_rmse) %>%
    summarize(RMSE=mean(root_rmse),ROCSD=sd(root_rmse))
  timing_model2$pred=
    prediction %>%
    rename(timing_pred=root,timing=outcome) %>%
    select(timing,timing_pred)
  if(!is.null(file)) saveRDS(timing_model2,paste0(dir,'/timing_',file,'.rds'))
  
  # Model evaluation on validation sets
  eval_model=
    eval_divnn_reg(
      timing_data=timing_data
      ,data=data
      ,timing_model=timing_model
      ,model=model
      ,calib_model=calib_model
      ,batch_size=batch_size
    )
  
  if(!is.null(file)){
    saveRDS(eval_model,paste0(dir,'/eval_timing_',file,'.rds'))
  }
  
  # Clean up memory.
  gc()
  
  # Log off.
  cat('End:',as.character(now()))
  
  list(timing_model=timing_model2,eval_timing_model=eval_model)
  
}