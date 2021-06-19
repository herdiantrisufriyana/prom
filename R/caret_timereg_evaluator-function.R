#' Caret training and evaluation for estimation task
#'
#' Train and evaluate a caret model in a single pipeline.
#'
#' @param data Whole set, an ExpressionSet that includes internal validation 
#' (training and calibration), and testing sets.
#' @param model Trained caret model, a caret object of the output model from 
#' \code{caret_trainer_evaluator}.
#' @param calib_model Trained caret model for calibrating, a caret object of 
#' the output calibrating model from \code{caret_trainer_evaluator}.
#' @param tuning Tuning parameters, a dataframe consisting all combinations of 
#' tuning parameters.
#' @param training Training strategy, a dataframe consisting details on the 
#' training strategy, e.g., internal validation method, etc.
#' @param title Title for log, a character of the title.
#' @param dir Path for saving the results, a character of the folder path.
#' @param file File name prefix, a character of the file name prefix.
#' @param cl Number of cluster, an integer for the number of CPU cluster used 
#' for all of the processes.
#'
#' @details
#' This function is highly contextual for this PROM study, especially for the 
#' \code{data} and the \code{training}. The \code{model} and \code{calib_model} 
#' should be outputs of \code{caret_trainer_evaluator}.
#' 
#' @return Various results, a list of object/dataframe for the model 
#' (caret object) and evaluation results (dataframe).
#' 

caret_timereg_evaluator=function(data
                                 ,model
                                 ,calib_model
                                 ,tuning
                                 ,training
                                 ,title
                                 ,dir='.'
                                 ,file=NULL
                                 ,cl=1){
  
  # Print message for reproducible logging.
  cat(title,'\n')
  cat('Started:',as.character(now()),'\n')
  pb=startpb(0,9)
  on.exit(closepb(pb))
  setpb(pb,0)
  
  # Create multiple CPU clusters for parallel computing.
  cl=makePSOCKcluster(cl)
  registerDoParallel(cl)
  
  # Bring these packages to the CPU clusters.
  if(model$method=='glmnet'){
    clusterEvalQ(cl,{
      library('parallel')
      library('doParallel')
      library('tidyverse')
      library('pbapply')
      library('caret')
      library('glmnet')
    })
  }else if(model$method=='Rborist'){
    clusterEvalQ(cl,{
      library('parallel')
      library('doParallel')
      library('tidyverse')
      library('pbapply')
      library('caret')
      library('Rborist')
    })
  }else if(model$method=='gbm'){
    clusterEvalQ(cl,{
      library('parallel')
      library('doParallel')
      library('tidyverse')
      library('pbapply')
      library('caret')
      library('gbm')
    })
  }
  
  # Change outcome to the time of delivery.
  setpb(pb,1)
  timing_data=
    data %>%
    .[,pData(protocolData(.))$int] %>%
    get_set() %>%
    rownames_to_column(var='id') %>%
    left_join(
      data %>%
        protocolData() %>%
        pData() %>%
        rownames_to_column(var='id') %>%
        mutate(timing=as.duration(latest_date-admission_date)/ddays(1)) %>%
        select(id,timing)
      ,by='id'
    ) %>%
    select(id,timing,everything()) %>%
    column_to_rownames(var='id')
  
  # Hyperparameter tuning
  setpb(pb,2)
  suppressWarnings(set.seed(33,sample.kind=sample.kind))
  timing_model=
    suppressWarnings(caret::train(
      timing~.
      ,data=timing_data %>% select(-outcome)
      ,method=model$method
      ,metric='RMSE'
      ,trControl=training$timereg_tuning_trControl
      ,tuneGrid=tuning
    ))
  
  # Model training
  setpb(pb,3)
  timing_model=
    suppressWarnings(caret::train(
      timing~.
      ,data=timing_data %>% select(-outcome)
      ,method=model$method
      ,metric='RMSE'
      ,trControl=training$timereg_final_trControl
      ,tuneGrid=timing_model$bestTune
    ))
  if(!is.null(file)) saveRDS(timing_model,paste0(dir,'/timing_',file,'.rds'))
  
  # Model evaluation on validation sets
  ticker=
    data.frame(
      set=c('calib','ran','geo','tem','bgt')
      ,add=seq(5)
    )
  eval_timing_model=
    list('calib','ran','geo','tem','bgt') %>%
    lapply(function(x){
      setpb(pb,3+ticker$add[ticker$set==x])
      if(x=='calib'){
        data2=
          data %>%
          .[,pData(protocolData(.))$int] %>%
          .[,!colnames(.)%in%training$pre_calib_set]
      }else{
        data2=
          data %>%
          .[,pData(protocolData(.))[[x]]]
      }
      timing_data=
        data2 %>%
        get_set() %>%
        rownames_to_column(var='id') %>%
        left_join(
          data %>%
            protocolData() %>%
            pData() %>%
            rownames_to_column(var='id') %>%
            mutate(
              timing=as.duration(latest_date-admission_date)/ddays(1)
            ) %>%
            select(id,timing)
          ,by='id'
        ) %>%
        select(id,timing,everything()) %>%
        column_to_rownames(var='id')
      
      pred_data=
        data2 %>%
        get_set() %>%
        predict(model,newdata=.) %>%
        data.frame(event=.)
      
      calib_data=
        data2 %>%
        get_set() %>%
        cbind(predict(model,newdata=.,type='prob')) %>%
        predict(calib_model,newdata=.) %>%
        data.frame(event=.)
      
      data.frame(
        timing=timing_data$timing
        ,outcome=timing_data$outcome
        ,pred=pred_data$event
        ,calib_pred=calib_data$event
        ,timing_pred=predict(timing_model,newdata=timing_data)
      )
    }) %>%
    setNames(paste0('timing_',c('calib','ran','geo','tem','bgt')))
  if(!is.null(file)){
    saveRDS(eval_timing_model,paste0(dir,'/eval_timing_',file,'.rds'))
  }
  
  # Close the CPU clusters and clean up memory.
  stopCluster(cl)
  registerDoSEQ()
  rm(cl)
  gc()
  
  # Log off.
  setpb(pb,9)
  cat('\nEnd:',as.character(now()))
  
  list(timing_model=timing_model,eval_timing_model=eval_timing_model)
  
}