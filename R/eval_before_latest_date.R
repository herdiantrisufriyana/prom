# ```{r Build a function for evaluation before the latest date, include=FALSE}
eval_before_latest_date=function(data,model,calib_model){
  cat('Evaluating non-calibrated model\n')
  no_calib=
    list('ran','geo','tem','bgt') %>%
    pblapply(function(x){
      data %>%
        .[,pData(protocolData(.))[[x]]] %>%
        .[,pData(protocolData(.))$admission_date
          <pData(protocolData(.))$latest_date] %>%
        get_set() %>%
        cbind(predict(model,newdata=.,type='prob')) %>%
        select(nonevent,event,outcome) %>%
        mutate(obs=outcome) %>%
        select(-outcome) %>%
        evalm(silent=T,showplots=F)
    }) %>%
    setNames(paste0('nocalib_',c('ran','geo','tem','bgt')))
  
  cat('Evaluating calibrated model\n')
  no_calib %>%
    c(list('ran','geo','tem','bgt') %>%
        pblapply(function(x){
          data %>%
            .[,pData(protocolData(.))[[x]]] %>%
            .[,pData(protocolData(.))$admission_date
              <pData(protocolData(.))$latest_date] %>%
            get_set() %>%
            cbind(predict(model,newdata=.,type='prob')) %>%
            select(event,outcome) %>%
            cbind(
              predict(calib_model,newdata=.,type='prob') %>%
                rename_all(function(x)paste0(x,'2'))
            ) %>%
            select(-event) %>%
            rename_all(function(x)str_remove_all(x,'2')) %>%
            mutate(obs=outcome) %>%
            select(-outcome) %>%
            evalm(silent=T,showplots=F)
        }) %>%
        setNames(paste0('calib_',c('ran','geo','tem','bgt')))
    )
}
# ```

# ```{r Empty lists to save models and the evaluation results, include=FALSE}
eval_model_bld=list()
# ```

# ```{r Evaluate causal ridge regression before the latest date, include=FALSE}
if(run_heavy_computation){
  eval_model_bld$causal_ridge=
    pw_hlin %>%
    .[rownames(.) %>% .[str_detect(.,'causal')],] %>%
    eval_before_latest_date(model$causal_ridge,calib_model$causal_ridge)
  
  saveRDS(eval_model_bld$causal_ridge,'data/eval_bld_causal_ridge.rds')
}else{
  cat(readRDS('data/log.rds')[['eval_bld_causal_ridge']])
  eval_model_bld$causal_ridge=readRDS('data/eval_bld_causal_ridge.rds')
}
# ```

# ```{r Evaluate PC elastic net regression before the latest date, include=FALSE}
if(run_heavy_computation){
  eval_model_bld$pc_elnet=
    pw_pc %>%
    eval_before_latest_date(model$pc_elnet,calib_model$pc_elnet)
  
  saveRDS(eval_model_bld$pc_elnet,'data/eval_bld_pc_elnet.rds')
}else{
  cat(readRDS('data/log.rds')[['eval_bld_pc_elnet']])
  eval_model_bld$pc_elnet=readRDS('data/eval_bld_pc_elnet.rds')
}
# ```

# ```{r Evaluate PC random forest before the latest date, include=FALSE}
if(run_heavy_computation){
  eval_model_bld$pc_rf=
    pw_pc[selected_pc$term,] %>%
    eval_before_latest_date(model$pc_rf,calib_model$pc_rf)
  
  saveRDS(eval_model_bld$pc_rf,'data/eval_bld_pc_rf.rds')
}else{
  cat(readRDS('data/log.rds')[['eval_bld_pc_rf']])
  eval_model_bld$pc_rf=readRDS('data/eval_bld_pc_rf.rds')
}
# ```

# ```{r Evaluate PC gradient boosting machine before the latest date, include=FALSE}
if(run_heavy_computation){
  eval_model_bld$pc_gbm=
    pw_pc[selected_pc$term,] %>%
    eval_before_latest_date(model$pc_gbm,calib_model$pc_gbm)
  
  saveRDS(eval_model_bld$pc_gbm,'data/eval_bld_pc_gbm.rds')
}else{
  cat(readRDS('data/log.rds')[['eval_bld_pc_gbm']])
  eval_model_bld$pc_gbm=readRDS('data/eval_bld_pc_gbm.rds')
}
# ```

# ```{r Transform test data before the latest date for DI-VNN input, include=FALSE}
if(run_heavy_computation){
  test_data_bld=
    list('ran','geo','tem','bgt') %>%
    lapply(function(x){
      cat('Compile data for set of:',x,'\n')
      data=
        pw_hlin %>%
        .[,pData(protocolData(.))$admission_date
          <pData(protocolData(.))$latest_date] %>%
        .[,!pData(phenoData(.))$censoring] %>%
        .[,pData(protocolData(.))[[x]]]
      test_transformer(
        test_data=data
        ,SGD1bit_fit=input$fit
        ,similarity=input$similarity
        ,mapping=input$mapping
        ,ontology=input$ontology
        ,ranked=T
        ,dims=7
        ,decreasing=F
        ,seed_num=33
      )
    }) %>%
    setNames(c('ran','geo','tem','bgt'))
  saveRDS(test_data_bld,'data/test_data_bld.rds')
}else{
  cat(readRDS('data/log.rds')[['test_data_bld']])
  test_data_bld=readRDS('data/test_data_bld.rds')
}
# ```

# ```{r Evaluate DI-VNN before the latest date, include=FALSE}
if(run_heavy_computation){
  eval_model_bld$divnn=
    test_data_bld %>%
    eval_divnn(
      modeling_divnn
      ,batch_size=512
      ,calib_model$divnn
    )
  
  saveRDS(eval_model_bld$divnn,'data/eval_bld_divnn.rds')
}else{
  cat(readRDS('data/log.rds')[['eval_bld_divnn']])
  eval_model_bld$divnn=readRDS('data/eval_bld_divnn.rds')
}
# ```

# ```{r The same comparison but before the latest date, eval=FALSE, include=FALSE}
eval_model_bld %>%
  lapply(X=names(.),Y=.,function(X,Y){
    Z=Y[[X]] %>%
      lapply(function(x)x$optres$Group1['AUC-ROC',]) %>%
      do.call(rbind,.) %>%
      rownames_to_column(var='set') %>%
      mutate(model=X)
    suppressWarnings(separate(Z,CI,c('lb','ub'),sep='-'))
  }) %>%
  do.call(rbind,.) %>%
  mutate(
    lb=ifelse(lb=='NA',Score,lb)
    ,ub=ifelse(ub=='NA',Score,ub)
  ) %>%
  mutate_at(
    colnames(.) %>% .[!.%in%c('model','set')]
    ,function(x)as.numeric(x)
  )%>%
  mutate(model=case_when(
    model=='causal_ridge'~'1. Causal LR'
    ,model=='pc_elnet'~'2. PC-LR'
    ,model=='pc_rf'~'3. PC-RF'
    ,model=='pc_gbm'~'4. PC-GBM'
    ,model=='divnn'~'5. DI-VNN'
    ,TRUE~''
  )) %>%
  mutate(model=factor(model,sort(unique(model)))) %>%
  mutate(
    calibrated=ifelse(str_detect(set,'nocalib'),'Non-Calibrated','Calibrated')
  ) %>%
  mutate(set=case_when(
    set=='nocalib_ran'~'1. Random test'
    ,set=='calib_ran'~'1. Random test'
    ,set=='nocalib_geo'~'2. Geographical test'
    ,set=='calib_geo'~'2. Geographical test'
    ,set=='nocalib_tem'~'3. Temporal test'
    ,set=='calib_tem'~'3. Temporal test'
    ,set=='nocalib_bgt'~'4. Geotemporal test'
    ,set=='calib_bgt'~'4. Geotemporal test'
    ,TRUE~''
  )) %>%
  mutate(set=factor(set,rev(sort(unique(set))))) %>%
  group_by(set) %>%
  mutate(set_score=mean(Score)) %>%
  ungroup() %>%
  rbind(
    calib_model %>%
      lapply(X=names(.),Y=.,function(X,Y){
        mutate(
          Y[[X]]$results
          ,ROC_lb=ROC-qnorm(0.975)*ROCSD
          ,ROC_ub=ROC+qnorm(0.975)*ROCSD
        ) %>%
          mutate(model=X) %>%
          select(model,ROC,ROC_lb,ROC_ub) %>%
          setNames(c('model','Score','lb','ub'))
      }) %>%
      do.call(rbind,.) %>%
      mutate(model=case_when(
        model=='causal_ridge'~'1. Causal LR'
        ,model=='pc_elnet'~'2. PC-LR'
        ,model=='pc_rf'~'3. PC-RF'
        ,model=='pc_gbm'~'4. PC-GBM'
        ,model=='divnn'~'5. DI-VNN'
        ,TRUE~''
      )) %>%
      mutate(model=reorder(model,Score)) %>%
      mutate(
        set='0. Internal validation'
        ,calibrated='Calibrated'
        ,set_score=mean(Score)
      ) %>%
      select(set,Score,lb,ub,model,everything())
  ) %>%
  rbind(
    model %>%
      lapply(X=names(.),Y=.,function(X,Y){
        mutate(
          Y[[X]]$results
          ,ROC_lb=ROC-qnorm(0.975)*ROCSD
          ,ROC_ub=ROC+qnorm(0.975)*ROCSD
        ) %>%
          mutate(model=X) %>%
          select(model,ROC,ROC_lb,ROC_ub) %>%
          setNames(c('model','Score','lb','ub'))
      }) %>%
      do.call(rbind,.) %>%
      mutate(model=case_when(
        model=='causal_ridge'~'1. Causal LR'
        ,model=='pc_elnet'~'2. PC-LR'
        ,model=='pc_rf'~'3. PC-RF'
        ,model=='pc_gbm'~'4. PC-GBM'
        ,model=='divnn'~'5. DI-VNN'
        ,TRUE~''
      )) %>%
      mutate(model=reorder(model,Score)) %>%
      mutate(
        set='0. Internal validation'
        ,calibrated='Non-Calibrated'
        ,set_score=mean(Score)
      ) %>%
      select(set,Score,lb,ub,model,everything())
  ) %>%
  lapply(X=1:2,Y=.,function(X,Y){
    if(X==1){
      Y  %>%
        arrange(set,desc(Score)) %>%
        kable() %>%
        kable_classic()
    }else{
      Y %>%
        # mutate(model=reorder(model,Score)) %>%
        qplot(model,Score,data=.) +
        geom_errorbar(aes(ymin=lb,ymax=ub),width=0.5) +
        geom_hline(aes(yintercept=set_score),lty=2) +
        geom_hline(yintercept=0.5,lty=2) +
        facet_grid(set~calibrated) +
        coord_flip() +
        scale_x_discrete('Data Partition') +
        scale_y_continuous('AUROC (95% CI)') +
        theme(strip.text.y=element_text(angle=0))
    }
  })
# ```

# ```{r Visualization tables before the latest date, include=FALSE}
if(run_heavy_computation){
  visualization_bld=list()
  
  cat('Get ontonet visualisation table.\n')
  visualization_bld$ontonet=
    output %>%
    .[,colnames(.)
      %in%
        colnames(
          pw_hlin %>%
            .[,pData(protocolData(.))$admission_date
              <pData(protocolData(.))$latest_date]
        )
    ] %>%
    viz.ontonet(
      feature=F
      ,eval.results=modeling_divnn$evaluation
      ,eval.metric='roc'
      ,eval.pal=c('#E64B35FF','#00A087FF')
    )
  
  cat('Get ontoarray visualisation table.\n')
  visualization_bld$ontoarray=
    output %>%
    viz.ontoarray(modeling_divnn$ontonet,batch_size=512,verbose=T)
  
  saveRDS(visualization_bld,'data/visualization_bld.rds')
}else{
  visualization_bld=readRDS('data/visualization_bld.rds')
}
# ```

# ```{r Filter non-zero ontotype before the latest date, include=FALSE}
visualized_codes_bld=
  visualization_bld$ontoarray %>%
  lapply(function(x){
    x$ontotype %>%
      lapply(X=seq(nrow(.)),Y=.,Z=x$output,function(X,Y,Z){
        K=Z[Y$x[X],Y$y[X],Y$z[X]]
        if(K==0){
          NULL
        }else{
          K
        }
      }) %>%
      setNames(x$ontotype$feature)
  }) %>%
  setNames(names(visualization_bld$ontoarray)) %>%
  unlist() %>%
  data.frame(output=.) %>%
  rownames_to_column(var='ontotype') %>%
  separate(ontotype,c('ontotype','code'),sep='\\.') %>%
  mutate(outcome=ifelse(output>=0,'event','nonevent')) %>%
  left_join(
    pw_hlin %>%
      fData() %>%
      rownames_to_column(var='code')
    ,by='code'
  ) %>%
  select(outcome,ontotype,code,desc) %>%
  arrange(ontotype,code,outcome) %>%
  group_by(code,ontotype,desc) %>%
  summarize(outcome=paste0(outcome,collapse=' & '),.groups='drop') %>%
  mutate(outcome=ifelse(outcome=='event & nonevent','both',outcome)) %>%
  arrange(code,ontotype,factor(outcome,c('event','nonevent','both')))
# ```

# ```{r Show non-zero ontotype before the latest date, eval=FALSE, include=FALSE}
visualized_codes_bld %>%
  kable() %>%
  kable_classic()
# ```

# ```{r Compare before and up to the latest date, eval=FALSE, include=FALSE}
mean(visualized_codes==visualized_codes_bld)
# ```