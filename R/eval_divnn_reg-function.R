#' DI-VNN evaluation for estimation task in PROM study
#'
#' Evaluate deep-insight visible neural network for estimation task in this 
#' PROM study.
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
#'
#' @details
#' This function specifically works for a DI-VNN pipeline in this PROM study.
#' 
#' @return Evaluation results of DI-VNN, a dataframe of the results.
#' 

eval_divnn_reg=function(timing_data
                        ,data
                        ,timing_model
                        ,model
                        ,calib_model
                        ,batch_size=128){
  
  # Create a list of character to call  a split of training set, 
  # and all testing sets.
  list('calib','ran','geo','tem','bgt') %>%
    pblapply(function(x){
      
      # Evaluate DI-VNN timing regression for this subset.
      cat('Evaluate DI-VNN timing regression for set of:',x,'\n')
      prediction=
        timing_model$ontonet %>%
        
        # Predict the outcome.
        predict_generator(
          generator=
            generator.ontoarray(
              timing_data[[x]]
              ,seq(ncol(timing_data[[x]]))
              ,batch_size=batch_size
            )
          ,steps=ceiling(ncol(timing_data[[x]])/batch_size)
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
          y[seq(ncol(timing_data[[x]])),,drop=F]
        }) %>%
        
        # Combine with the outcome data.
        c(list(outcome=timing_data[[x]]$outcome)) %>%
        
        # Wrap up.
        as.data.frame() %>%
        select(root,outcome) %>%
        `rownames<-`(colnames(timing_data[[x]]))
      
      # Create an empty list to create a caret-like list.
      timing_model2=list()
      timing_model2$results=
        timing_model$evaluation %>%
        lapply(as.data.frame) %>%
        do.call(rbind,.) %>%
        select(root_rmse) %>%
        summarize(RMSE=mean(root_rmse),ROCSD=sd(root_rmse))
      timing_model$pred=
        prediction %>%
        rename(timing_pred=root,timing=outcome) %>%
        select(timing,timing_pred)
      
      # Evaluate non-calibrated DI-VNN for this subset.
      cat('Evaluate non-calibrated DI-VNN for set of:',x,'\n')
      pred_data=
        model$ontonet %>%
        
        # Predict the outcome.
        predict_generator(
          generator=
            generator.ontoarray(
              data[[x]]
              ,seq(ncol(data[[x]]))
              ,batch_size=batch_size
            )
          ,steps=ceiling(ncol(data[[x]])/batch_size)
          ,verbose=1
        ) %>%
        
        # Give back the name of the DI-VNN ontologies.
        setNames(
          model$history$metrics %>%
            names() %>%
            .[str_detect(.,'val_')
              &str_detect(.,'_loss')
              &str_detect(.,'ONT|root')] %>%
            str_remove_all('val_|_loss')
        ) %>%
        
        # Set back number of instances, that is changed due to batch sizing.
        lapply(function(y){
          y[seq(ncol(data[[x]])),,drop=F]
        }) %>%
        
        # Combine with the outcome data.
        c(list(outcome=data[[x]]$outcome)) %>%
        as.data.frame() %>%
        
        # Turn probability to prediction.
        select(root,outcome) %>%
        mutate(root=round(root)) %>%
        rename(event=root) %>%
        `rownames<-`(colnames(data[[x]]))
      
      # Evaluate calibrated DI-VNN for this subset.
      cat('Evaluate calibrated DI-VNN for set of:',x,'\n')
      calib_data=
        model$ontonet %>%
        
        # Predict the outcome.
        predict_generator(
          generator=
            generator.ontoarray(
              data[[x]]
              ,seq(ncol(data[[x]]))
              ,batch_size=batch_size
            )
          ,steps=ceiling(ncol(data[[x]])/batch_size)
          ,verbose=1
        ) %>%
        
        # Give back the name of the DI-VNN ontologies.
        setNames(
          model$history$metrics %>%
            names() %>%
            .[str_detect(.,'val_')
              &str_detect(.,'_loss')
              &str_detect(.,'ONT|root')] %>%
            str_remove_all('val_|_loss')
        ) %>%
        
        # Set back number of instances, that is changed due to batch sizing.
        lapply(function(y){
          y[seq(ncol(data[[x]])),,drop=F]
        }) %>%
        
        # Combine with the outcome data.
        c(list(outcome=data[[x]]$outcome)) %>%
        as.data.frame() %>%
        
        # Retain probability for calibration.
        select(root,outcome) %>%
        rename(event=root) %>%
        mutate(nonevent=event) %>%
        select(nonevent,everything()) %>%
        `rownames<-`(colnames(data[[x]])) %>%
        
        # Get prediction from the calibrated model.
        cbind(
          suppressWarnings(predict(calib_model,newdata=.,type='prob')) %>%
            rename_all(function(x)paste0(x,'2'))
        ) %>%
        select(-nonevent,-event) %>%
        rename_all(function(x)str_remove_all(x,'2')) %>%
        select(event) %>%
        mutate(event=round(event)) %>%
        mutate(
          event=
            ifelse(event==1,'event','nonevent') %>%
            factor(c('nonevent','event'))
        ) %>%
        `rownames<-`(colnames(data[[x]]))
      
      # Return the evaluation results.
      data.frame(
        timing=timing_data[[x]]$outcome
        ,outcome=data[[x]]$outcome
        ,pred=pred_data$event
        ,calib_pred=calib_data$event
        ,timing_pred=timing_model$pred$timing_pred
      )
    }) %>%
    setNames(paste0('timing_',c('calib','ran','geo','tem','bgt')))
}