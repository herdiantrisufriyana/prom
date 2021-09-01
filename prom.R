################################################################################
# title: 'Supplement: Prognostication for prelabor rupture of membranes and the 
#         time of delivery in nationwide insured women: development, validation, 
#         and deployment'
# author:
#   - name: Herdiantri Sufriyana
#     affiliation:
#     - &gibi Graduate Institute of Biomedical Informatics, College of Medical
#       Science and Technology, Taipei Medical University, Taipei, Taiwan
#     - Department of Medical Physiology, Faculty of Medicine, Universitas 
#       Nahdlatul Ulama Surabaya, Surabaya, Indonesia
#     email: herdiantrisufriyana@unusa.ac.id
#   - name: Yu-Wei Wu
#     affiliation:
#     - *gibi
#     - &tmuh Clinical Big Data Research Center, Taipei Medical University
#       Hospital, Taipei, Taiwan
#   - name: Emily Chia-Yu Su
#     affiliation:
#     - *gibi
#     - *tmuh
#     - Research Center for Artificial Intelligence in Medicine, Taipei Medical
#       University, Taipei, Taiwan
################################################################################



################################################################################
# Methods
################################################################################



################################################################################
## Research guidelines
################################################################################



################################################################################
## Programming environment
################################################################################



################################################################################
##### Set up reproducible environment ##########################################
if(!require(renv)) install.packages('renv')
if(!file.exists('renv')) renv::init(restart=F)
################################################################################



################################################################################
##### Set sample kind ##########################################################
# sample.kind=NULL # if using R 3.5 or earlier
sample.kind='Rounding' # if using R 3.6 or later
################################################################################



################################################################################
##### Set to run or not run very heavy computations ############################
# Many computations were very heavy;
# thus, we provided the RDS files as substitutes and load only ones
# that can be ran in most computers.
# Set to TRUE if you want to run the very heavy computations.
run_heavy_computation=F
################################################################################



################################################################################
##### Recommended memory limit, include=FALSE ##################################
# Minimum 1 GB free memory should be allocated
memory.limit(size=1000000)
################################################################################



################################################################################
##### Files not included in GitHub for some reasons ############################
# Explicitly including data source
# Send a data access request to the BPJS Kesehatan. Use their data and our 
# preprocessing codes to get these files.

# data/public2.rds
# data/target_population.rds
# data/pregnancy_status.rds
# data/outcome.rds
# data/target_visits.rds
# data/annotation.rds
# data/mh_nationwide.rds
# data/mh_provider.rds
# data/cf_nationwide.rds
# data/cf_provider.rds
# data/inferdata.rds
# data/predidata.rds
# data/infercause.rds
# data/predicause.rds
# data/int_nps.rds

# Too large for GitHub (>25 mb)
# If one needs these files below, send email to herdiantrisufriyana@unusa.ac.id.

# data/timing_pc_elnet.rds
# data/pc_elnet.rds
# data/calib_pc_elnet.rds
# data/timing_pc_rf.rds
# data/timing_pc_gbm.rds
# data/pc_gbm.rds
# data/pc_rf.rds
# data/calib_pc_gbm.rds
# data/calib_pc_rf.rds
# data/small_timing_pc_rf.rds
# data/timing_causal_ridge.rds
# data/eval_pc_elnet.rds
# data/eval_pc_gbm.rds
# data/calib_causal_ridge.rds
# data/pw_hlin.rds
# data/causal_ridge.rds
# data/nw_int_hlin.rds
# data/test_data_reg.rds
# data/eval_divnn.rds
# data/calib_divnn.rds
################################################################################



################################################################################
##### Install and set specific version of Bioconductor #########################
source('R/check_install_load-function.R')

# Install devtools to install specific version of BiocManager.
check_install_load('devtools',version='2.4.1',repo='cran',load=F)

# Install specific version of BiocManager and Bioconductor.
check_install_load('BiocManager',version='1.30.10',repo='cran',load=F)
install_steps=T
if(BiocManager::version()!='3.11'){
  BiocManager::install(version='3.11',update=TRUE,ask=FALSE)
  install_steps=c(F,T)
}
################################################################################



################################################################################
##### Install and load packages with specific version ##########################
for(i in install_steps){
  if(i) renv::restore()
  
  check_install_load('tidyverse','1.3.1',repo='bioc',load=i)
  check_install_load('dslabs','0.7.4',repo='bioc',load=i)
  check_install_load('kableExtra','1.3.4',repo='bioc',load=i)
  check_install_load('parallel','4.0.2',repo='bioc',load=i)
  check_install_load('doParallel','1.0.16',repo='bioc',load=i)
  check_install_load('pbapply','1.4.3',repo='bioc',load=i)
  check_install_load('lubridate','1.7.10',repo='bioc',load=i)
  check_install_load('broom','0.7.9',repo='bioc',load=i)
  check_install_load('caret','6.0.88',repo='bioc',load=i)
  check_install_load('gmethods','0.1.0',repo='herdiantrisufriyana',load=i)
  check_install_load('igraph','1.2.6',repo='bioc',load=i)
  check_install_load('glmnet','4.2',repo='bioc',load=i)
  check_install_load('Rborist','0.2.3',repo='bioc',load=i)
  check_install_load('gbm','2.1.8',repo='bioc',load=i)
  check_install_load('gam','1.20',repo='bioc',load=i)
  check_install_load('preprocessCore','1.50.0',repo='bioc',load=i)
  check_install_load('limma','3.44.3',repo='bioc',load=i)
  check_install_load('AnnotationDbi','1.50.3',repo='bioc',load=i)
  check_install_load('Rcpp','1.0.7',repo='bioc',load=i)
  check_install_load('GO.db','3.11.4',repo='bioc',load=i)
  check_install_load('WGCNA','1.70.3',repo='bioc',load=i)
  check_install_load('matrixStats','0.60.1',repo='bioc',load=i)
  check_install_load('Rtsne','0.15',repo='bioc',load=i)
  check_install_load('reticulate','1.20',repo='bioc',load=i)
  check_install_load('Biobase','2.48.0',repo='bioc',load=i)
  check_install_load('medhist','0.1.0',repo='herdiantrisufriyana',load=i)
  check_install_load('survival','3.2.3',repo='bioc',load=i)
  check_install_load('imputeTS','3.2',repo='bioc',load=i)
  check_install_load('geepack','1.3.2',repo='bioc',load=i)
  check_install_load('rsdr','0.1.0',repo='herdiantrisufriyana',load=i)
  check_install_load('zeallot','0.1.0',repo='bioc',load=i)
  check_install_load('divnn','0.1.3',repo='herdiantrisufriyana',load=i)
  check_install_load('clixo','0.1.1',repo='herdiantrisufriyana',load=i)
  check_install_load('MLeval','0.3',repo='bioc',load=i)
  check_install_load('ggnetwork','0.5.10',repo='bioc',load=i)
  check_install_load('visNetwork','2.0.9',repo='bioc',load=i)
  check_install_load('ggpubr','0.4.0',repo='bioc',load=i)
  check_install_load('extrafont','0.17',repo='bioc',load=i)
  check_install_load('ggsci','2.9',repo='bioc',load=i)
  check_install_load('readxl','1.3.1',repo='bioc',load=i)
  check_install_load('tensorflow','2.0.0',repo='devtools',load=F)
  check_install_load('keras','2.3.0.0',repo='devtools',load=F)
  
  if(i){
    options(dplyr.summarise.inform=F)
    dslabs::ds_theme_set()
    select=dplyr::select
    rename=dplyr::rename
    slice=dplyr::slice
    use_condaenv('./renv/python/condaenvs/renv-python',required=T)
    renv::use_python(name='./renv/python/condaenvs/renv-python')
  }else{
    extrafont::font_import()
    reticulate::conda_create(
      envname='./renv/python/condaenvs/renv-python'
      ,packages='python=3.6.3'
    )
    reticulate::use_condaenv('./renv/python/condaenvs/renv-python',required=T)
    renv::use_python(name='./renv/python/condaenvs/renv-python')
    keras::install_keras(
      method='conda',
      version='2.3.0',
      tensorflow='2.0.0-gpu',
      envname='./renv/python/condaenvs/renv-python',
      conda_python_version='3.6.3',
      extra_packages=
        c('numpy','pandas','matplotlib==3.1.0','scikit-learn','h5py==2.10.0'),
      restart_session=F
    )
    renv::snapshot()
  }
}

rm(i)
################################################################################



################################################################################
##### Load log for the expensive computation ###################################
# This is needed to print messages at the time we run the expensive computation.
source('data/log.R')
################################################################################



################################################################################
## Sampling procedures of the data source
################################################################################



################################################################################
## The sampling procedures of the dataset in this study
################################################################################



################################################################################
##### Read public data II tables from an R file ################################
# This is the output of the raw data after being preprocessed by data.Rmd in:
# https://github.com/herdiantrisufriyana/medhist/preprocessing
public=readRDS('data/public2.rds')
################################################################################



################################################################################
##### Combine tables ###########################################################
public$visits=
  
  # Access a list of visit datasets based on capitation, fee for service (FFS), 
  # and diagnosis-related group (DRG).
  public[c('visit_cap','visit_ffs','visit_drg')] %>%
  
  # For each element of the list, select 4 columns and bind the elements by row.
  lapply(select,visit_id,subject_id,healthcare_id,admission_date) %>%
  do.call(rbind,.) %>%
  
  # Join with diagnosis dataset by visit_id, follow the dataframe above.
  left_join(public$diagnosis,by='visit_id') %>%
  
  # Exclude diagnoses at admission since it's unlikely definitive.
  filter(!code_type%in%c('Admission diagnosis')) %>%
  select(-code_type) %>%
  
  # Find the earliest visit per subject and filter only the unique visits.
  group_by(subject_id) %>%
  mutate(db_start_date=min(admission_date)) %>%
  ungroup() %>%
  filter(!duplicated(.))
################################################################################



################################################################################
##### Determine target population ##############################################
public$target_population=
  
  ##### The health insurance holders of #####
public$subject %>%
  lapply(X=1,Y=.,function(X,Y){
    # Record this step to the table of subject selection
    data.frame(
      step='total'
      ,exc_visit=0
      ,inc_visit=sum(public$visits$subject_id %in% Y$subject_id)
      ,exc_subject=0
      ,inc_subject=nrow(Y)
    ) %>%
      saveRDS('data/selection.rds')
    Y
  }) %>%
  .[[1]] %>%
  
  ##### 12-to-55-years-old (at visit between 2015 and 2016) #####
filter(
  between(as.duration(as_date('2015-01-01')-birth_date)/dyears(1),12,55) |
    between(as.duration(as_date('2016-12-31')-birth_date)/dyears(1),12,55)
) %>%
  lapply(X=1,Y=.,function(X,Y){
    # Record this step to the table of subject selection.
    readRDS('data/selection.rds') %>%
      rbind(
        data.frame(
          step='age selection by 12 to 55 years old'
          ,exc_visit=
            .$inc_visit[nrow(.)]
          -sum(public$visits$subject_id %in% Y$subject_id)
          ,inc_visit=sum(public$visits$subject_id %in% Y$subject_id)
          ,exc_subject=.$inc_subject[nrow(.)]-nrow(Y)
          ,inc_subject=nrow(Y)
        )
      ) %>%
      saveRDS('data/selection.rds')
    Y
  }) %>%
  .[[1]] %>%
  
  ##### females #####
filter(sex=='female') %>%
  lapply(X=1,Y=.,function(X,Y){
    # Record this step to the table of subject selection.
    readRDS('data/selection.rds') %>%
      rbind(
        data.frame(
          step='sex selection by female'
          ,exc_visit=
            .$inc_visit[nrow(.)]
          -sum(public$visits$subject_id %in% Y$subject_id)
          ,inc_visit=sum(public$visits$subject_id %in% Y$subject_id)
          ,exc_subject=.$inc_subject[nrow(.)]-nrow(Y)
          ,inc_subject=nrow(Y)
        )
      ) %>%
      saveRDS('data/selection.rds')
    Y
  }) %>%
  .[[1]] %>%
  
  ##### who visit healthcare providers #####
filter(subject_id%in%public$visits$subject_id) %>%
  lapply(X=1,Y=.,function(X,Y){
    # Record this step to the table of subject selection.
    readRDS('data/selection.rds') %>%
      rbind(
        data.frame(
          step='visit healthcare providers'
          ,exc_visit=
            .$inc_visit[nrow(.)]
          -sum(public$visits$subject_id %in% Y$subject_id)
          ,inc_visit=sum(public$visits$subject_id %in% Y$subject_id)
          ,exc_subject=.$inc_subject[nrow(.)]-nrow(Y)
          ,inc_subject=nrow(Y)
        )
      ) %>%
      saveRDS('data/selection.rds')
    Y
  }) %>%
  .[[1]]
################################################################################



################################################################################
##### Determine pregnant women of target population ############################
public$pregnancy_status=
  
  # Get pregnancy status of the target population.
  public$target_population %>%
  lapply(X=1,Y=.,Z=public$visits,K=public$annotation,function(X,Y,Z,K){
    
    # Use these regular expression for the target population
    # to find codes related to pregnancy.
    L=Z %>%
      filter(subject_id%in%Y$subject_id) %>%
      left_join(K,by='code') %>%
      filter(
        str_detect(
          str_to_lower(paste(code,desc))
          ,paste0(c(
            'obstet'
            ,'pregnan'
            ,'labou?r\\s+'
            ,'deliver'
            ,'cesar'
            ,'natal'
            ,'z3[3467]'
            ,'o\\d+'
          ),collapse='|')
        )
      )
    
    # From the pregnancy-related visits, find the earliest and the latest.
    M=L %>%
      group_by(subject_id) %>%
      summarize(
        preg_e=min(admission_date)
        ,preg_l=max(admission_date)
        ,.groups='drop'
      ) %>%
      ungroup()
    
    # Find the related codes for the end of pregnancy.
    N=L %>%
      
      # This may include the false-positive codes
      filter(
        str_detect(
          str_to_lower(paste(code,desc))
          ,paste0(c(
            'abort'
            ,'deliver'
            ,'cesar'
            ,'labou?r\\s+'
            ,'natal'
            ,'postpartum'
            ,'terminat'
            ,'o0[0123]'
            ,'o152'
            ,'o364'
            ,'o63'
            ,'o7[02]'
            ,'o8[579]'
            ,'o90'
            ,'z3[79]'
          ),collapse='|')
        )
      ) %>%
      
      # By manual inspection, exclude the false-positive codes.
      filter(!(
        str_detect(
          str_to_lower(paste(code,desc))
          ,paste0(c(
            'aborter'
            ,'ante'
            ,'peri'
            ,'delayed'
            ,'false'
            ,'failed'
            ,'prenatal'
            ,'threatened'
            ,'o311'
            ,'z351'
            ,'o600'
            ,'o96'
          ),collapse='|')
        ) &
          !str_detect(
            str_to_lower(code)
            ,paste0(c(
              'o0[34568]'
              ,'o15[12]'
              ,'o7[02]'
              ,'o8[79]'
            ),collapse='|')
          )
      )) %>%
      
      # Record the codes for the end of pregnancy. 
      lapply(X=1,Y=.,function(X,Y){
        saveRDS(Y,'data/termination_codes.rds')
        Y
      }) %>%
      .[[1]] %>%
      
      # Find the earliest and latest dates of 
      # the related codes for  the end of pregnancy.
      group_by(subject_id) %>%
      summarize(
        termin_e=min(admission_date)
        ,termin_l=max(admission_date)
        ,.groups='drop'
      ) %>%
      ungroup()
    
    # Get visits after the end of the first pregnancy in the dataset period.
    O=L %>%
      left_join(N,by='subject_id') %>%
      filter(admission_date>termin_l)
    
    # Get the earliest date of the second-pregnancy visits.
    P=O %>%
      group_by(subject_id) %>%
      summarize(
        preg_e2=min(admission_date)
        ,.groups='drop'
      ) %>%
      ungroup()
    
    # Find the related codes for the end of the second pregnancy.
    Q=O %>%
      
      # This may include the false-positive codes
      filter(
        str_detect(
          str_to_lower(paste(code,desc))
          ,paste0(c(
            'abort'
            ,'deliver'
            ,'cesar'
            ,'labou?r\\s+'
            ,'natal'
            ,'postpartum'
            ,'terminat'
            ,'o0[0123]'
            ,'o152'
            ,'o364'
            ,'o63'
            ,'o7[02]'
            ,'o8[579]'
            ,'o90'
            ,'z3[79]'
          ),collapse='|')
        )
      ) %>%
      
      # By manual inspection, exclude the false-positive codes.
      filter(!(
        str_detect(
          str_to_lower(paste(code,desc))
          ,paste0(c(
            'aborter'
            ,'ante'
            ,'peri'
            ,'delayed'
            ,'false'
            ,'failed'
            ,'prenatal'
            ,'threatened'
            ,'o311'
            ,'z351'
            ,'o600'
            ,'o96'
          ),collapse='|')
        ) &
          !str_detect(
            str_to_lower(code)
            ,paste0(c(
              'o0[34568]'
              ,'o15[12]'
              ,'o7[02]'
              ,'o868'
              ,'o8[79]'
            ),collapse='|')
          )
      )) %>%
      
      # Find the earliest and latest dates of 
      # the related codes for  the end of the second pregnancy.
      group_by(subject_id) %>%
      summarize(
        termin_e2=suppressWarnings(min(admission_date))
        ,termin_l2=suppressWarnings(max(admission_date))
        ,.groups='drop'
      ) %>%
      ungroup()
    
    # Join offset dates to find the pregnancy periods.
    R=M %>%
      left_join(N,by='subject_id') %>%
      left_join(P,by='subject_id') %>%
      left_join(Q,by='subject_id') %>%
      select(
        subject_id
        ,preg_e
        ,termin_e
        ,termin_l
        ,preg_e2
        ,termin_e2
        ,termin_l2
        ,preg_l
        ,everything()
      )
    
    # Join the offset dates to the target population data
    # and compute the number of either gestation and termination.
    S=Y %>%
      left_join(R,by='subject_id') %>%
      mutate(
        gestation=
          as.integer(!is.na(preg_e))
        + as.integer(!is.na(preg_e2))
        ,termination=
          as.integer(!is.na(termin_l))
        + as.integer(!is.na(termin_l2))
      )
    
    # Filtered by gestation, select different offsets depending on
    # the pregnancy period, and combine the filtering results. 
    # This separates 2 pregnancy periods of a subject into 2 instances.
    rbind(
      filter(S,gestation==0) %>%
        select(
          subject_id,preg_e,termin_e,termin_l,preg_l,gestation,termination
        ) %>%
        mutate(gestation_n=0)
      ,filter(S,gestation==1) %>%
        select(
          subject_id,preg_e,termin_e,termin_l,preg_l,gestation,termination
        ) %>%
        mutate(gestation_n=1)
      ,filter(S,gestation==2) %>%
        select(
          subject_id,preg_e,termin_e,termin_l,preg_l,gestation,termination
        ) %>%
        mutate(gestation_n=1)
      ,filter(S,gestation==2) %>%
        select(
          subject_id,preg_e2,termin_e2,termin_l2,preg_l,gestation,termination
        ) %>%
        rename(preg_e=preg_e2,termin_e=termin_e2,termin_l=termin_l2) %>%
        mutate(gestation_n=2)
    ) %>%
      
      # If no termination for a pregnancy period of a subject,
      # then label the period as having censored outcome.
      mutate(censoring=is.na(termin_l)) %>%
      
      # Join to the target population data and arranged by subject_id
      left_join(
        S %>%
          select(
            -preg_e
            ,-termin_e
            ,-termin_l
            ,-preg_e2
            ,-termin_e2
            ,-termin_l2
            ,-preg_l
            ,-gestation
            ,-termination
          )
        ,by='subject_id'
      ) %>%
      arrange(
        factor(subject_id,S$subject_id %>% .[!duplicated(.)])
      )
    
  }) %>%
  .[[1]]
################################################################################



################################################################################
##### Determine outcome ########################################################
public$outcome=
  
  # Filter visits from the target population only.
  public$visits %>%
  filter(subject_id %in% public$target_population$subject_id) %>%
  
  # Extract outcome, which is O42.
  extract_outcome(
    icd10_event='O42'
    ,latest_event=min
    ,day_to_event=0
    ,icd10_nonevent=''
    ,latest_nonevent=max
    ,day_to_nonevent=0
    ,verbose=0
  ) %>%
  
  # Join the pregnancy status data to the outcome data.
  left_join(public$pregnancy_status,by='subject_id') %>%
  
  # If non-event, the latest date should be 
  # the earliest date of the end of pregnancy.
  lapply(X=1,Y=.,function(X,Y){
    Z=Y %>%
      filter(!censoring & outcome=='nonevent') %>%
      mutate(latest_date=termin_e)
    K=Y %>%
      filter(!(!censoring & outcome=='nonevent'))
    rbind(Z,K) %>%
      arrange(factor(subject_id,unique(Y$subject_id)))
  }) %>%
  .[[1]] %>%
  
  # Get only column to filter visits before the outcome 
  # for each pregnancy episode.
  select(subject_id,latest_date,outcome,censoring,gestation_n)
################################################################################



################################################################################
##### Determine target visits ##################################################
public$target_visits=
  
  # Join the outcome data to the visit data.
  public$outcome %>%
  right_join(public$visits,by='subject_id') %>%
  select(visit_id, everything()) %>%
  
  # If the outcome is censored, take visits up to the outcome date.
  # Otherwise, take all visits.
  filter(!is.na(censoring)) %>%
  filter(censoring | (!censoring & admission_date<=latest_date)) %>%
  mutate(code=ifelse(is.na(code)|code=='','NA',code)) %>%
  
  # Take only codes that are available 
  # in all combinations of outcome and censoring status.
  lapply(X=1,Y=.,function(X,Y){
    Z=Y %>%
      select(outcome,censoring,code) %>%
      filter(!duplicated(.)) %>%
      mutate(count=1) %>%
      group_by(code) %>%
      summarize(count=sum(count)) %>%
      arrange(desc(count)) %>%
      filter(count==4) %>%
      pull(code)
    
    Y %>% filter(code%in%Z)
  }) %>%
  .[[1]] %>%
  
  # Take needed columns and make subject_id different 
  # between pregnancy episodes of the same subject.
  select(-censoring,-outcome,-latest_date) %>%
  unite(subject_id,subject_id,gestation_n,sep='.')
################################################################################



################################################################################
##### Update related variables #################################################
# Take only subjects' outcome that are assigned to the target visits.
public$outcome2=
  public$outcome %>%
  unite(subject_id,subject_id,gestation_n,sep='.') %>%
  filter(subject_id%in%public$target_visits$subject_id)

# Take only subjects' pregnancy status that are assigned to the target visits.
public$pregnancy_status2=
  public$pregnancy_status %>%
  unite(subject_id,subject_id,gestation_n,sep='.') %>%
  filter(subject_id%in%public$target_visits$subject_id)

# Add more criterion to the target population.
public$target_population2=
  
  public$target_population %>%
  left_join(
    select(public$pregnancy_status,subject_id,gestation_n)
    ,by=c('subject_id')
  ) %>%
  unite(subject_id,subject_id,gestation_n,sep='.') %>%
  
  ##### before the latest date of event/non-event #####
##### and split if >1 pregnancies #####
filter(subject_id%in%public$target_visits$subject_id) %>%
  lapply(X=1,Y=.,function(X,Y){
    # Record this step to the table of subject selection.
    step_desc='up to the latest date for uncensored and split if >1 pregnancies'
    readRDS('data/selection.rds') %>%
      filter(step!=step_desc) %>%
      rbind(
        data.frame(
          step=step_desc
          ,exc_visit=
            .$inc_visit[nrow(.)]
          -sum(public$target_visits$subject_id %in% Y$subject_id)
          ,inc_visit=sum(public$target_visits$subject_id %in% Y$subject_id)
          ,exc_subject=.$inc_subject[nrow(.)]-nrow(Y)
          ,inc_subject=nrow(Y)
        )
      ) %>%
      saveRDS('data/selection.rds')
    Y
  }) %>%
  .[[1]]
################################################################################



################################################################################
##### Save selection results to RDS file #######################################
saveRDS(public$target_population2,'data/target_population.rds')
saveRDS(public$pregnancy_status2,'data/pregnancy_status.rds')
saveRDS(public$outcome2,'data/outcome.rds')
saveRDS(public$target_visits,'data/target_visits.rds')
saveRDS(public$annotation,'data/annotation.rds')
################################################################################



################################################################################
##### Remove public data II after selection ####################################
rm(public)
################################################################################









################################################################################
## Data preprocessing
################################################################################



################################################################################
##### Load an outcome table ####################################################
outcome=
  readRDS('data/outcome.rds') %>%
  left_join(
    readRDS('data/pregnancy_status.rds')
    ,by=c('subject_id','censoring')
  ) %>%
  rename(reghc_id=healthcare_id)
################################################################################



################################################################################
##### Visits with categorical identity as additional variables #################
visit_cip=
  
  # Transform age into a categorical variable based on domain knowledge.
  outcome %>%
  mutate(
    age=case_when(
      ((latest_date-birth_date)/dyears(1))<20~'Too Young'
      ,(((latest_date-birth_date)/dyears(1))>=20 &
          ((latest_date-birth_date)/dyears(1))<=35)
      ~'Low Risk'
      ,((latest_date-birth_date)/dyears(1))>35~'Too Old'
      ,TRUE~'NA'
    )
  ) %>%
  
  # Select subject_id and all categorical variables (not medical history).
  select(subject_id,age,marital_status,insurance_class,occupation_segment) %>%
  gather(variable,value,-subject_id) %>%
  unite(desc,variable,value,sep='_') %>%
  mutate(desc=str_replace_all(desc,'_|-|\\s',' ')) %>%
  separate(desc,c('first_word','desc'),sep=' ',extra='merge') %>%
  mutate_at('first_word',str_to_sentence) %>%
  unite(desc,first_word,desc,sep=' ') %>%
  
  # Create a code for each category.
  lapply(X=1,Y=.,function(X,Y){
    select(.,desc) %>%
      filter(!duplicated(.)) %>%
      
      # Create a code for each categorical variable.
      mutate(code=sapply(desc,function(x){
        str_split(x,'\\s')[[1]] %>%
          substr(1,1) %>%
          paste(collapse='') %>%
          str_to_upper()
      })) %>%
      
      # For each code, assign number to non-single code.
      group_by(code) %>%
      mutate(code_seq=seq(n()),max_code_seq=n()) %>%
      ungroup() %>%
      unite(code2,code,code_seq,sep='',remove=F) %>%
      mutate(code=ifelse(max_code_seq==1,code,code2)) %>%
      
      # Save all categorical variables and the codes.
      select(code,desc) %>%
      saveRDS('data/cat_identity.rds')
    Y
  }) %>%
  .[[1]] %>%
  
  # Join the codes of the categorical variables.
  left_join(readRDS('data/cat_identity.rds'),by='desc') %>%
  
  # Join the target visits.
  left_join(
    readRDS('data/target_visits.rds') %>%
      select(-code) %>%
      mutate(seq=seq(nrow(.))) %>%
      select(seq,everything())
    ,by='subject_id'
  ) %>%
  
  # Select columns according to the standard for medhist.
  select(
    seq
    ,visit_id
    ,subject_id
    ,healthcare_id
    ,admission_date
    ,code
    ,db_start_date
  ) %>%
  
  # Add the categorical variables as if these are diagnosis/procedure codes 
  # of which dates are the dates of any codes in a visit of a subject.
  rbind(
    readRDS('data/target_visits.rds') %>%
      mutate(seq=seq(nrow(.))) %>%
      select(seq,everything())
  )
################################################################################



################################################################################
##### Convenient sampling from an authoritative ################################
convenient_sampling=
  matrix(
    c('variable'
      ,'PROM'
      ,'Preterm birth'
      ,'Multiple pregnancy'
      ,'IAI'
      ,'Previous PROM'
      ,'Cervical shortening'
      ,'APH'
      ,'Low BMI'
      ,'Low SES'
      ,'Cigarette smoking'
      ,'Illicit drug use'
    )
    ,ncol=1,byrow=T
  ) %>%
  `colnames<-`(.[1,]) %>%
  .[-1,,drop=F] %>%
  as.data.frame()
################################################################################



################################################################################
##### Snowball sampling results ################################################
dag=list()

# Take notes while applying systematic human learning 
# by snowball sampling based on the convenient sampling.
dag$factor=
  matrix(
    c('dependent_factor','independent_factor','citation'
      ,'Preterm birth','PROM','ACOG (2016a)'
      ,'PROM','Previous preterm birth','ACOG (2016a)'
      ,'PROM','Family history of preterm birth','ACOG (2016a)'
      ,'PROM','Multiple pregnancy','ACOG (2016a)'
      ,'PROM','IAI','ACOG (2016a)'
      ,'PROM','Previous PROM','ACOG (2016a)'
      ,'PROM','Cervical shortening','ACOG (2016a)'
      ,'PROM','APH','ACOG (2016a)'
      ,'PROM','Low BMI','ACOG (2016a)'
      ,'PROM','Low SES','ACOG (2016a)'
      ,'PROM','Cigarette smoking','ACOG (2016a)'
      ,'PROM','Illicit drug use','ACOG (2016a)'
      ,'PROM','Maternal age','Song J, et al (2019)'
      ,'PROM','Race','Fiscella K (1996)'
      ,'PROM','Low education','Wang W, et al (2020)'
      ,'PROM','Stress','Wang W, et al (2020)'
      ,'PROM','GTI','Pandey D, et al (2019); Yan JJ, et al (2016)'
      ,'PROM','Periodontal disease','Figueiredo MGOP, et al (2019)'
      ,'PROM','Uterine anomaly','Hua M, et al (2011)'
      ,'PROM','Polyhydramnios','Odibo IN, et al (2016)'
      ,'PROM','Pneumonia','Getahun D, et al (2007)'
      ,'PROM','Tuberculosis','Fernández AA, et al (2017)'
      ,'PROM','Assisted reproduction','Lei LL, et al (2019)'
      ,'PROM','Chorioamnionitis','Fukami T, et al (2017)'
      ,'PROM','Conization','Zhuang H, et al (2019)'
      ,'PROM','Placenta on anterior wall','Torricelli M, et al (2015)'
      ,'PROM','Asthma','Baghlaf H, et al (2019)'
      ,'PROM','Influenza','Littauer EQ, et al (2017)'
      
      ,'Preterm birth','Multiple pregnancy'
      ,'ACOG (2016b); Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','IAI','ACOG (2016a)'
      ,'Preterm birth','Previous preterm birth','ACOG (2016a)'
      ,'Preterm birth','Previous PROM','ACOG (2016a)'
      ,'Preterm birth','Family history of preterm birth'
      ,'Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Cervical shortening','ACOG (2016a)'
      ,'Preterm birth','APH','ACOG (2016a)'
      ,'Preterm birth','Low BMI','ACOG (2016a)'
      ,'Preterm birth','Low SES','ACOG (2016a)'
      ,'Preterm birth','Cigarette smoking','ACOG (2016a)'
      ,'Preterm birth','Illicit drug use','ACOG (2016a)'
      ,'Preterm birth','Low education','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Maternal age','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Race','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Stress','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Depression','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','UTI','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','GTI','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Periodontal disease','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Uterine anomaly','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Previous stillbirth','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Induced abortion','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Polyhydramnios','Frey HA, and Klebanoff MA (2016)'
      ,'Preterm birth','Pneumonia','Stinson LF, et al (2019)'
      ,'Preterm birth','Typhoid','Stinson LF, et al (2019)'
      ,'Preterm birth','Malaria','Stinson LF, et al (2019)'
      ,'Preterm birth','Tuberculosis','Stinson LF, et al (2019)'
      ,'Preterm birth','Pyelonephritis','Stinson LF, et al (2019)'
      ,'Preterm birth','Assisted reproduction','Chen M, and Heilbronn LK (2017)'
      ,'Preterm birth','Chorioamnionitis','Kim CJ, et al (2015)'
      ,'Preterm birth','Conization','Jolley JA, and Wing DA (2008)'
      ,'Preterm birth','LEEP loop','Jolley JA, and Wing DA (2008)'
      ,'Preterm birth','Placenta in anterior wall','Sekiguchi A, et al (2013)'
      ,'Preterm birth','Parity','Shechter-Maor G, et al (2020)'
      ,'Preterm birth','Anorexia nervosa','Ante Z, et al (2020)'
      ,'Preterm birth','Type-2 diabetes mellitus','Ringholm L, et al (2019)'
      ,'Preterm birth','Anemia','Ardic C, et al (2019)'
      ,'Preterm birth','Asthma','Baghlaf H, et al (2019)'
      ,'Preterm birth','Chromosomal aberration','Toutain J, et al (2018)'
      ,'Preterm birth','Influenza','Meijer WJ, et al (2015)'
      ,'Preterm birth','Acute respiratory syndrome','Wong SF, et al (2004)'
      
      ,'Multiple pregnancy','Assisted reproduction'
      ,'Thilaganathan B, and Khalil A (2014)'
      ,'Multiple pregnancy','Maternal age'
      ,paste(
        'Thilaganathan B, and Khalil A (2014);'
        ,'Martin JA, and Osterman MJK (2019)'
      )
      ,'Multiple pregnancy','Race','Martin JA, and Osterman MJK (2019)'
      
      ,'Chorioamnionitis','IAI','Tantengco OAG, et al (2019)'
      ,'IAI','UTI','Tantengco OAG, et al (2019)'
      ,'IAI','GTI','Romero R, et al (2019); Tantengco OAG, et al (2019)'
      ,'IAI','Periodontal disease','Stinson LF, et al (2019)'
      ,'IAI','Pneumonia','Stinson LF, et al (2019)'
      ,'IAI','Multiple pregnancy','Lee SM, et al (2020)'
      ,'IAI','Cervical shortening','Kiefer DG, et al (2009)'
      ,'IAI','Race','Menon R, et al (2011)'
      ,'IAI','Parity','Park KH, et al (2012)'
      
      ,'Cervical shortening','Uterine anomaly','Guimarães FHA, et al (2013)'
      ,'Cervical shortening','Conization','Guimarães FHA, et al (2013)'
      ,'Cervical shortening','LEEP loop','Guimarães FHA, et al (2013)'
      ,'Cervical shortening'
      ,'Isthmo-cervical incompetence','Guimarães FHA, et al (2013)'
      ,'Cervical shortening','Maternal age','Tan P C, et al (2011)'
      ,'Cervical shortening','Race','Dijkstra K, et al (1999)'
      ,'Cervical shortening','Stress','Dijkstra K, et al (1999)'
      ,'Cervical shortening','GTI','Sendag F, et al (2010)'
      ,'Cervical shortening','Parity','Kang WS, et al (2010)'
      
      ,'APH','Maternal age','Fan D, et al (2017)'
      ,'APH','Gestational age','Fan D, et al (2017)'
      ,'APH','Placenta on anterior wall','Fan D, et al (2017)'
      ,'APH','Parity','Fan D, et al (2017)'
      ,'APH','Low SES','Bhandari S, et al (2014)'
      ,'APH','Cigarette smoking','Bhandari S, et al (2014)'
      ,'APH','Illicit drug use','Bhandari S, et al (2014)'
      ,'APH','Race','Shen JJ, et al (2005)'
      ,'APH','Assisted reproduction','Qin J, et al (2016)'
      
      ,'Low BMI','Anorexia nervosa','Bjørnholt SM, et al (2019)'
      ,'Low BMI','Diet restrictions','Bjørnholt SM, et al (2019)'
      ,'Low BMI','Stress','Han YS, et al (2011)'
      
      ,'Cigarette smoking','Pregnancy','Najman JM, et al (1998)'
      ,'Cigarette smoking','Low SES','Najman JM, et al (1998)'
      ,'Cigarette smoking','Maternal age','De Genna NM, et al (2017)'
      ,'Cigarette smoking','Race','De Genna NM, et al (2017)'
      ,'Cigarette smoking','Low education','De Genna NM, et al (2017)'
      
      ,'Illicit drug use','Low SES','Marzban M, et al (2019)'
      ,'Illicit drug use','Cigarette smoking'
      ,'Oga EA, et al (2018); De Genna NM, et al (2017)'
      ,'Illicit drug use','Maternal age','Homsup P, et al (2018)'
      ,'Illicit drug use','Race','Homsup P, et al (2018)'
      ,'Illicit drug use','Low education','Homsup P, et al (2018)'
      ,'Illicit drug use','Stress','Rocha PC, et al (2016)'
      
      ,'GTI','Type-2 diabetes mellitus','Nichols GA, et al (2017)'
      ,'GTI','Tuberculosis','Sharma JB, et al (2018)'
      
      ,'Periodontal disease','Anemia','Genco RJ, and Borgnakke WS (2013)'
      ,'Periodontal disease','Low education','Genco RJ, and Borgnakke WS (2013)'
      ,'Periodontal disease','Allergy','Genco RJ, and Borgnakke WS (2013)'
      ,'Periodontal disease','Maternal age','Genco RJ, and Borgnakke WS (2013)'
      ,'Periodontal disease','Type-2 diabetes mellitus'
      ,'Genco RJ, and Borgnakke WS (2013)'
      ,'Periodontal disease','Cigarette smoking'
      ,'Genco RJ, and Borgnakke WS (2013)'
      ,'Periodontal disease','Stress','Genco RJ, and Borgnakke WS (2013)'
      ,'Periodontal disease','Asthma','Moraschini V, et al (2018)'
      ,'Periodontal disease','Anorexia nervosa','Chiba FY, et al (2019)'
      
      ,'Polyhydramnios','Fetal anomalies','Moise KJ (1997)'
      ,'Polyhydramnios','Multiple pregnancy','Moise KJ (1997)'
      ,'Polyhydramnios','Type-2 diabetes mellitus','Moise KJ (1997)'
      ,'Polyhydramnios','Chromosomal aberration'
      ,'Sagi-Dain L, and Sagi S (2015)'
      ,'Polyhydramnios','Assisted reproduction','Lei LL, et al (2019)'
      ,'Polyhydramnios','Anemia','Mathew M, et al (2008)'
      
      ,'Pneumonia','Asthma','Goodnight WH, and Soper DE (2005)'
      ,'Pneumonia','Anemia','Goodnight WH, and Soper DE (2005)'
      ,'Pneumonia','Varicella','Goodnight WH, and Soper DE (2005)'
      ,'Pneumonia','Influenza','Goodnight WH, and Soper DE (2005)'
      ,'Pneumonia','Acute respiratory syndrome'
      ,'Goodnight WH, and Soper DE (2005)'
      
      ,'Tuberculosis','Race','Malhamé I, et al (2016)'
      ,'Tuberculosis','Low SES','Malhamé I, et al (2016)'
      ,'Tuberculosis','Asthma','Yii AC, et al (2019)'
      ,'Tuberculosis','Influenza','de Paus RA, et al (2013)'
      
      ,'Chorioamnionitis','Gestational age','Kim CJ, et al (2015)'
      ,'Chorioamnionitis','Cigarette smoking','Kim CJ, et al (2015)'
      ,'Chorioamnionitis','Parity','Kim CJ, et al (2015)'
      ,'Chorioamnionitis','Varicella','Kim CJ, et al (2015)'
      ,'Chorioamnionitis','Influenza','Kim CJ, et al (2015)'
      ,'Chorioamnionitis','Acute respiratory syndrome','Kim CJ, et al (2015)'
      ,'Chorioamnionitis','Asthma','Baghlaf H, et al (2019)'
      
      ,'Conization','Cervical neoplasia','Van Calsteren K, et al (2005)'
      
      ,'Asthma','Varicella','Murphy VE, et al (2017)'
      ,'Asthma','Influenza','Murphy VE, et al (2017)'
    )
    ,ncol=3,byrow=T
  ) %>%
  `colnames<-`(.[1,]) %>%
  .[-1,] %>%
  as.data.frame()

# Make a common-cause table.
dag$common_cause$df=
  dag$factor %>%
  lapply(X=seq(sum(!duplicated(.$dependent_factor))-1)
         ,Y=pull(.,dependent_factor) %>% .[!duplicated(.)]
         ,Z=.,function(X,Y,Z){
           
           data.frame(V1=Y[X],V2=Y[(X+1):length(Y)]) %>%
             mutate(
               
               # Common causes
               V1_V2=sapply(X=seq(nrow(.)),Y=V1,Z=V2,K=Z,function(X,Y,Z,K){
                 intersect(
                   filter(K,dependent_factor==Y[X])$independent_factor
                   ,filter(K,dependent_factor==Z[X])$independent_factor
                 ) %>%
                   paste(collapse=',')
               })
               
               # Causes of the first variable only
               ,V1_only=sapply(X=seq(nrow(.)),Y=V1,Z=V2,K=Z,function(X,Y,Z,K){
                 setdiff(
                   filter(K,dependent_factor==Y[X])$independent_factor
                   ,filter(K,dependent_factor==Z[X])$independent_factor
                 ) %>%
                   paste(collapse=',')
               })
               
               # Causes of the second variable only
               ,V2_only=sapply(X=seq(nrow(.)),Y=V1,Z=V2,K=Z,function(X,Y,Z,K){
                 setdiff(
                   filter(K,dependent_factor==Z[X])$independent_factor
                   ,filter(K,dependent_factor==Y[X])$independent_factor
                 ) %>%
                   paste(collapse=',')
               })
             )
         }) %>%
  do.call(rbind,.)

# Identify the unique common causes.
dag$common_cause$vec=
  unlist(lapply(dag$common_cause$df$V1_V2,str_split,pattern=',')) %>%
  .[.!='' & !duplicated(.)]

# Bind tables for the edges.
dag$baseline_edges=
  rbind(
    filter(dag$factor,dependent_factor=='PROM')
    ,filter(dag$factor,!dependent_factor%in%c('PROM','Preterm birth')) %>%
      filter(independent_factor %in% dag$common_cause$vec)
  )

# Construct the nodes only.
dag$baseline_nodes=
  
  # Use either independent or dependent factor.
  c(dag$baseline_edges$dependent_factor
    ,dag$baseline_edges$independent_factor) %>%
  .[!duplicated(.)] %>%
  data.frame(name=.) %>%
  
  # Assign a code for each causal factor.
  `rownames<-`(str_pad(seq(nrow(.)),str_count(max(nrow(.))),'left','0')) %>%
  rownames_to_column(var='label') %>%
  
  # Apply different prefixes for outcome (Y), 
  # and the first (A) and second-level factors (L)
  mutate(
    label=
      paste0(
        case_when(
          name=='PROM'
          ~'Y'
          ,name %in%
            filter(dag$factor,dependent_factor=='PROM')$independent_factor
          ~'A'
          ,TRUE~'L'
        )
        ,label
      )
  ) %>%
  select(name,label)

# Construct the edges that connect the common causes to the effects.
dag$baseline_edges=
  dag$baseline_edges %>%
  left_join(
    setNames(dag$baseline_nodes,c('independent_factor','from'))
    ,by='independent_factor'
  ) %>%
  left_join(
    setNames(dag$baseline_nodes,c('dependent_factor','to'))
    ,by='dependent_factor'
  ) %>%
  select(from,to,citation)
################################################################################



################################################################################
##### Determine measurement of causal factors ##################################
# Add measurement variables.
dag$measure_edges=
  dag$baseline_nodes %>%
  select(label) %>%
  rename(from=label) %>%
  mutate(to=paste0(from,'*'),citation=NA)

# Define components of each causal factor by ICD-10 coding.
dag$measure_nodes=
  dag$baseline_nodes %>%
  mutate(
    regex=case_when(
      name=='PROM'~'O42'
      ,name=='Multiple pregnancy'~'O3[01]'
      ,name=='Chorioamnionitis'~'O411'
      ,name=='IAI'~'O41[89]'
      ,name=='Cervical shortening'~'6751'
      ,name=='APH'~'O46'
      ,name=='Illicit drug use'~'F19'
      ,name=='GTI'~'914[139]|A6[03]|O23[59]|R87'
      ,name=='Periodontal disease'~'K05'
      ,name=='Polyhydramnios'~'O40'
      ,name=='Pneumonia'~'J1[23458]'
      ,name=='Tuberculosis'~'A1[569]'
      ,name=='Asthma'~'J4[56]'
      ,name=='Low SES'~'THIRD|UNEMPLOYED'
      ,name=='Maternal age'~'TOO YOUNG|TOO OLD'
      ,name=='Uterine anomaly'~'Q51'
      ,name=='Assisted reproduction'~'Z31|N98'
      ,name=='Influenza'~'J(00|09|10|11)'
      ,name=='UTI'~'N390|O23[01249]'
      ,name=='Parity'~'Z641'
      ,name=='Anorexia nervosa'~'F500|R63[0346]'
      ,name=='Type-2 diabetes mellitus'~'E1[124]'
      ,name=='Anemia'~'D5[^4]|D6[0-4]'
      ,name=='Chromosomal aberration'~'Q9'
      ,name=='Varicella'~'B01'
      ,name=='Acute respiratory syndrome'~'J80'
      ,TRUE~''
    )
  ) %>%
  filter(regex!='') %>%
  lapply(X=seq(nrow(.)),Y=.,function(X,Y){
    data.frame(name=Y$regex[X],label=paste0(Y$label[X],'*'))
  }) %>%
  do.call(rbind,.)

# For each measurement variable, add unmeasured variable 
# as a factor that affects the measurement variable.
dag$measure_edges=
  dag$measure_edges %>%
  filter(to %in% dag$measure_nodes$label) %>%
  rbind(mutate(.,from=str_replace_all(from,'[:alpha:]','U')))
################################################################################



################################################################################
##### Compute nationwide day interval of medical history #######################
if(run_heavy_computation){
  mh_nationwide=
    readRDS('data/target_visits.rds') %>%
    mutate(healthcare_id='nationwide') %>%
    extract_medical_history(cl=detectCores()-1)
  saveRDS(mh_nationwide,'data/mh_nationwide.rds')
}else{
  cat(readRDS('data/log.rds')[['mh_nationwide']])
  mh_nationwide=readRDS('data/mh_nationwide.rds')
}
################################################################################



################################################################################
##### Compute provider-wise day interval of medical history ####################
if(run_heavy_computation){
  mh_provider=
    readRDS('data/target_visits.rds') %>%
    extract_medical_history(cl=detectCores()-1)
  saveRDS(mh_provider,'data/mh_provider.rds')
}else{
  cat(readRDS('data/log.rds')[['mh_provider']])
  mh_provider=readRDS('data/mh_provider.rds')
}
################################################################################



################################################################################
##### Compute nationwide day interval of causal factor #########################
if(run_heavy_computation){
  cf_nationwide=
    
    # Exclude outcome.
    dag$measure_nodes %>%
    filter(label!='Y01*') %>%
    
    # For each causal factor, filter rows with the codes related to the factor 
    # regardless the healthcare facilities.
    lapply(X=seq(nrow(.))
           ,Y=.
           ,Z=
             visit_cip %>%
             mutate(healthcare_id='nationwide') %>%
             left_join(
               readRDS('data/cat_identity.rds') %>%
                 rbind(annotation)
               ,by='code'
             )
           ,function(X,Y,Z){
             
             if(Y$label[X]%in%c('A19*','A20*')){
               K=Z %>%
                 filter(!str_detect(str_to_upper(code),'[:digit:]')) %>%
                 filter(str_detect(str_to_upper(desc),Y$name[X]))
             }else{
               K=Z %>% filter(str_detect(str_to_upper(code),Y$name[X]))
             }
             
             K %>%
               select(-desc) %>%
               mutate(
                 code=
                   Y$label[X] %>%
                   str_remove_all('\\*')
               )
             
           }) %>%
    do.call(rbind,.) %>%
    filter(!duplicated(.)) %>%
    select(-seq) %>%
    
    # Extract the day intervals.
    extract_medical_history(cl=detectCores()-1) %>%
    filter(!duplicated(.)) %>%
    
    # Join to the target visits.
    right_join(
      readRDS('data/target_visits.rds') %>%
        select(-code) %>%
        mutate(healthcare_id='nationwide')
      ,by=c('visit_id'
            ,'subject_id'
            ,'healthcare_id'
            ,'admission_date'
            ,'db_start_date')
    ) %>%
    select(
      visit_id
      ,subject_id
      ,healthcare_id
      ,admission_date
      ,db_start_date
      ,everything()
    )
  
  saveRDS(cf_nationwide,'data/cf_nationwide.rds')
}else{
  cat(readRDS('data/log.rds')[['cf_nationwide']])
  cf_nationwide=readRDS('data/cf_nationwide.rds')
}
################################################################################



################################################################################
##### Compute provider-wise day interval of causal factor ######################
if(run_heavy_computation){
  cf_provider=
    
    # Exclude outcome.
    dag$measure_nodes %>%
    filter(label!='Y01*') %>%
    
    # For each causal factor, filter rows with the codes related to the factor 
    # in each of the healthcare facilities.
    lapply(X=seq(nrow(.))
           ,Y=.
           ,Z=
             visit_cip %>%
             left_join(
               readRDS('data/cat_identity.rds') %>%
                 rbind(annotation)
               ,by='code'
             )
           ,function(X,Y,Z){
             
             if(Y$label[X]%in%c('A19*','A20*')){
               K=Z %>%
                 filter(!str_detect(str_to_upper(code),'[:digit:]')) %>%
                 filter(str_detect(str_to_upper(desc),Y$name[X]))
             }else{
               K=Z %>% filter(str_detect(str_to_upper(code),Y$name[X]))
             }
             
             K %>%
               select(-desc) %>%
               mutate(
                 code=
                   Y$label[X] %>%
                   str_remove_all('\\*')
               )
             
           }) %>%
    do.call(rbind,.) %>%
    filter(!duplicated(.)) %>%
    select(-seq) %>%
    
    # Extract the day intervals.
    extract_medical_history(cl=detectCores()-1) %>%
    filter(!duplicated(.)) %>%
    
    # Join to the target visits.
    right_join(
      readRDS('data/target_visits.rds') %>%
        select(-code)
      ,by=c('visit_id'
            ,'subject_id'
            ,'healthcare_id'
            ,'admission_date'
            ,'db_start_date')
    ) %>%
    select(
      visit_id
      ,subject_id
      ,healthcare_id
      ,admission_date
      ,db_start_date
      ,everything()
    )
  
  saveRDS(cf_provider,'data/cf_provider.rds')
}else{
  cat(readRDS('data/log.rds')[['cf_provider']])
  cf_provider=readRDS('data/cf_provider.rds')
}
################################################################################



################################################################################
##### Build a function to personalize PROM tidy set ############################
source('R/prom_tidyset_personalization-function.R')
################################################################################












################################################################################
## Data partition
################################################################################



################################################################################
##### Build a function to split for external validation ########################
source('R/extv-function.R')
################################################################################



################################################################################
##### Compile tidy sets followed by data partitioning ##########################
if(run_heavy_computation){
  
  # Nationwide data for inference by medical histories with splitting 
  # information for external validation
  inferdata=
    mh_nationwide %>%
    compile_mh_outcome(select(outcome,subject_id,latest_date,outcome)) %>%
    prom_tidyset_personalization(
      outcome=outcome
      ,experimenter=
        MIAME(
          name='Herdiantri Sufriyana'
          ,lab='Emily Chia-Yu Su Lab'
          ,contact='herdiantrisufriyana@unusa.ac.id'
          ,title='Medical history dataset for causal inference'
          ,abstract=
            str_replace_all(
              'This dataset is a medical-history table from the BPJS Kesehatan.
              The target population is health insurance holders of 
              12-to-55-years-old females who visit healthcare providers between 
              2015 and 2016. The outcome of interest is prelabor rupture of 
              membrane (PROM). The medical history scenario is recorded across
              healthcare providers nationwide.'
              ,'\n',' '
            ) %>%
            str_replace_all('\\s+',' ')
          ,url='https://github.com/herdiantrisufriyana/prom'
        )
      ,annotation=readRDS('data/annotation.rds')
    ) %>%
    extv(geo_p=0.12,tem_p=0.35,bgt_p=1,ran_p=0.2)
  saveRDS(inferdata,'data/inferdata.rds')
  
  # Provider-wise data for prediction by medical histories with splitting 
  # information for external validation
  predidata=
    mh_provider %>%
    compile_mh_outcome(select(outcome,subject_id,latest_date,outcome)) %>%
    prom_tidyset_personalization(
      outcome=outcome
      ,experimenter=
        MIAME(
          name='Herdiantri Sufriyana'
          ,lab='Emily Chia-Yu Su Lab'
          ,contact='herdiantrisufriyana@unusa.ac.id'
          ,title='Medical history dataset for prediction'
          ,abstract=
            str_replace_all(
              'This dataset is a medical-history table from the BPJS Kesehatan.
              The target population is health insurance holders of 
              12-to-55-years-old females who visit healthcare providers between 
              2015 and 2016. The outcome of interest is prelabor rupture of 
              membrane (PROM). The medical history scenario is recorded
              individually within each healthcare provider nationwide.'
              ,'\n',' '
            ) %>%
            str_replace_all('\\s+',' ')
          ,url='https://github.com/herdiantrisufriyana/prom'
        )
      ,annotation=readRDS('data/annotation.rds')
    ) %>%
    extv(geo_p=0.12,tem_p=0.35,bgt_p=1,ran_p=0.2)
  saveRDS(predidata,'data/predidata.rds')
  
  # Nationwide data for inference by causal factors with splitting information 
  # for external validation
  infercause=
    cf_nationwide %>%
    compile_mh_outcome(select(outcome,subject_id,latest_date,outcome)) %>%
    prom_tidyset_personalization(
      outcome=outcome
      ,experimenter=
        MIAME(
          name='Herdiantri Sufriyana'
          ,lab='Emily Chia-Yu Su Lab'
          ,contact='herdiantrisufriyana@unusa.ac.id'
          ,title='Medical history dataset for causal inference'
          ,abstract=
            str_replace_all(
              'This dataset is a medical-history table from the BPJS Kesehatan.
              The codes are re-assigned into causal factors (defined by regex).
              The target population is health insurance holders of 
              12-to-55-years-old females who visit healthcare providers between 
              2015 and 2016. The outcome of interest is prelabor rupture of 
              membrane (PROM). The medical history scenario is recorded across
              healthcare providers nationwide.'
              ,'\n',' '
            ) %>%
            str_replace_all('\\s+',' ')
          ,url='https://github.com/herdiantrisufriyana/prom'
        )
      ,annotation=
        dag$measure_nodes %>%
        mutate(label=str_remove_all(label,'\\*')) %>%
        rename(code=label,desc=name) %>%
        select(code,desc)
    ) %>%
    extv(geo_p=0.12,tem_p=0.35,bgt_p=1,ran_p=0.2)
  saveRDS(infercause,'data/infercause.rds')
  
  # Provider-wise data for prediction by causal factors with splitting 
  # information for external validation
  predicause=
    cf_provider %>%
    compile_mh_outcome(select(outcome,subject_id,latest_date,outcome)) %>%
    prom_tidyset_personalization(
      outcome=outcome
      ,experimenter=
        MIAME(
          name='Herdiantri Sufriyana'
          ,lab='Emily Chia-Yu Su Lab'
          ,contact='herdiantrisufriyana@unusa.ac.id'
          ,title='Medical history dataset for prediction'
          ,abstract=
            str_replace_all(
              'This dataset is a medical-history table from the BPJS Kesehatan.
              The codes are re-assigned into causal factors (defined by regex).
              The target population is health insurance holders of 
              12-to-55-years-old females who visit healthcare providers between 
              2015 and 2016. The outcome of interest is prelabor rupture of 
              membrane (PROM). The medical history scenario is recorded
              individually within each healthcare provider nationwide.'
              ,'\n',' '
            ) %>%
            str_replace_all('\\s+',' ')
          ,url='https://github.com/herdiantrisufriyana/prom'
        )
      ,annotation=
        dag$measure_nodes %>%
        mutate(label=str_remove_all(label,'\\*')) %>%
        rename(code=label,desc=name) %>%
        select(code,desc)
    ) %>%
    extv(geo_p=0.12,tem_p=0.35,bgt_p=1,ran_p=0.2)
  saveRDS(predicause,'data/predicause.rds')
  
}else{
  inferdata=readRDS('data/inferdata.rds')
  predidata=readRDS('data/predidata.rds')
  infercause=readRDS('data/infercause.rds')
  predicause=readRDS('data/predicause.rds')
}
################################################################################









################################################################################
## Association tests
################################################################################



################################################################################
##### Create interactive causal diagram ########################################
pre_causal_diagram=
  dag$baseline_edges[,-3] %>%
  
  # Join the node table as 'from'.
  left_join(
    dag$baseline_nodes %>%
      rename(from=label) %>%
      mutate(label=paste(from,name)) %>%
      select(from,label)
    ,by='from'
  ) %>%
  select(-from) %>%
  rename(from=label) %>%
  
  # Join the node table as 'to'.
  left_join(
    dag$baseline_nodes %>%
      rename(to=label) %>%
      mutate(label=paste(to,name)) %>%
      select(to,label)
    ,by='to'
  ) %>%
  select(-to) %>%
  rename(to=label)
################################################################################



################################################################################
##### Construct binary data of training set for causal inference ###############
if(run_heavy_computation){
  cf_nw_int_bin=
    infercause %>%
    .[,pData(protocolData(.))$int] %>%
    trans_binary(verbose=F)
  
  saveRDS(cf_nw_int_bin,'data/cf_nw_int_bin.rds')
}else{
  cf_nw_int_bin=readRDS('data/cf_nw_int_bin.rds')
}
################################################################################



################################################################################
##### Prepare formula for causal inference #####################################
dag$formula$A02=outcome~A02+A20
dag$backdoor$A02=c('A21','A25')

dag$formula$A03=outcome~A03+A15+A28+A04
dag$backdoor$A03=c('A08')

dag$formula$A04=outcome~A04+A10+A11+A13+A02
dag$backdoor$A04=c('A05','A21')

dag$formula$A06=outcome~A06+A19+A20
dag$backdoor$A06=c('A08','A09','A21','A25','A27')

dag$formula$A10=outcome~A10
dag$backdoor$A10=c('A14')

dag$formula$A11=outcome~A11+A15+A20
dag$backdoor$A11=c('A23','A22','A08')

dag$formula$A12=outcome~A12+A02
dag$backdoor$A12=c('A25')

dag$formula$A13=outcome~A13+A15+A28
dag$backdoor$A13=c()

dag$formula$A15=outcome~A15+A28
dag$backdoor$A15=c()

dag$formula$A19=outcome~A19
dag$backdoor$A19=c()

dag$formula$A20=outcome~A20
dag$backdoor$A20=c()

dag$formula$A28=outcome~A28
dag$backdoor$A28=c()
################################################################################



################################################################################
##### Show an example of causal diagram for inference of a cause ###############
source('R/backdoor_path-function.R')
################################################################################




################################################################################
##### Causal DAG function and the resulting images #############################
source('R/causal_dag-function.R')
caudag_img=
  dag$baseline_nodes %>%
  
  # Use only the first-level factors.
  filter(str_sub(label,1,1)=='A') %>%
  pull(label) %>%
  
  # For each factor, use it to make a causal diagram plot.
  lapply(causal_dag)
################################################################################



################################################################################
##### Conduct logistic regression for causal inference #########################
# Fit the logistic regression.
dag$glm=
  dag$formula %>%
  lapply(
    FUN=glm
    ,family=binomial(link='logit')
    ,data=
      cf_nw_int_bin %>%
      pData() %>%
      mutate(outcome=ifelse(censoring,NA,as.integer(outcome=='event'))) %>%
      select(outcome) %>%
      cbind(
        cf_nw_int_bin %>%
          exprs() %>%
          t() %>%
          as.data.frame()
      )
  )

# Compute the OR and the 95% CI.
dag$coef=
  dag$glm %>%
  lapply(tidy) %>%
  lapply(
    mutate
    ,OR=exp(estimate)
    ,OR_lb=exp(estimate-qnorm(0.975)*std.error)
    ,OR_ub=exp(estimate+qnorm(0.975)*std.error)
    ,Pr=OR/(1+OR)
    ,Pr_lb=OR_lb/(1+OR_lb)
    ,Pr_ub=OR_ub/(1+OR_ub)
  )
################################################################################



################################################################################
##### Conduct IPW for causal inference based on the causal diagram #############
if(run_heavy_computation){
  cat('Conduct IPW for causal inference based on the causal diagram\n')
  cat('Started:',as.character(now()),'\n')
  
  dag$ipw=
    
    # Fit the IPW.
    dag$formula %>%
    lapply(
      FUN=ipw
      ,data=
        cf_nw_int_bin %>%
        pData() %>%
        mutate(outcome=ifelse(censoring,NA,as.integer(outcome=='event'))) %>%
        select(outcome) %>%
        cbind(
          cf_nw_int_bin %>%
            exprs() %>%
            t() %>%
            as.data.frame()
        )
      ,bootstrap=30
      ,state=33
      ,verbose=T
    ) %>%
    
    # Reduce the size of IPW object.
    lapply(function(x){
      x$data=NULL
      x$index=NULL
      x
    })
  
  cat('End:',as.character(now()))
  saveRDS(dag$ipw,'data/ipw.rds')
}else{
  cat(readRDS('data/log.rds')[['ipw']])
  dag$ipw=readRDS('data/ipw.rds')
}
################################################################################



################################################################################
##### Save significant causal covariates #######################################
dag$sig=
  lapply(X=1:2,Y=dag$coef,Z=dag$ipw,function(X,Y,Z){
    if(X==1){
      # Logistic regression
      sapply(Y,function(x){
        ifelse(
          between(1,round(x$OR_lb[2],4),round(x$OR_ub[2],4)) |
            is.na(x$OR[2])
          ,0,1
        )
      })
    }else{
      # IPW
      sapply(Z,function(x){
        ifelse(
          between(0,round(x$CI95_interval[1],4),round(x$CI95_interval[2],4)) |
            is.na(x$marginal_effect)
          ,0,1
        )
      })
    }
  }) %>%
  do.call(rbind,.) %>%
  `rownames<-`(c('glm','ipw'))
################################################################################









################################################################################
## Quality control of candidate predictors
################################################################################



################################################################################
##### Combine selected causal factors and medical histories ####################
# Nationwide data for inference by causal factors,
# confirmed by IPW, and by medical histories
inferboth=
  ExpressionSet(
    assayData=
      rbind(
        exprs(infercause) %>%
          .[colnames(dag$sig)[dag$sig['ipw',]==1],,drop=F] %>%
          `rownames<-`(paste0('causal_',rownames(.)))
        ,exprs(inferdata)
      )
    ,phenoData=phenoData(inferdata)
    ,featureData=
      rbind(
        fData(infercause) %>%
          .[colnames(dag$sig)[dag$sig['ipw',]==1],,drop=F] %>%
          `rownames<-`(paste0('causal_',rownames(.)))
        ,fData(inferdata)
      ) %>%
      AnnotatedDataFrame(varMetadata=fvarMetadata(inferdata))
    ,experimentData=
      MIAME(
        name='Herdiantri Sufriyana'
        ,lab='Emily Chia-Yu Su Lab'
        ,contact='herdiantrisufriyana@unusa.ac.id'
        ,title='Medical history dataset for causal inference'
        ,abstract=
          str_replace_all(
            'This dataset is a medical-history table from the BPJS Kesehatan.
            Selected causal factors, that is re-assigned by regex, are added.
            The target population is health insurance holders of 
            12-to-55-years-old females who visit healthcare providers between 
            2015 and 2016. The outcome of interest is prelabor rupture of 
            membrane (PROM). The medical history scenario is recorded
            individually within each healthcare provider nationwide.'
            ,'\n',' '
          ) %>%
          str_replace_all('\\s+',' ')
        ,url='https://github.com/herdiantrisufriyana/prom'
      )
    ,annotation=annotation(inferdata)
    ,protocolData=protocolData(inferdata)
  )

# Provider-wise data for prediction by causal factors,
# confirmed by IPW, and by medical histories
prediboth=
  ExpressionSet(
    assayData=
      rbind(
        exprs(predicause) %>%
          .[colnames(dag$sig)[dag$sig['ipw',]==1],,drop=F] %>%
          `rownames<-`(paste0('causal_',rownames(.)))
        ,exprs(predidata)
      )
    ,phenoData=phenoData(predidata)
    ,featureData=
      rbind(
        fData(predicause) %>%
          .[colnames(dag$sig)[dag$sig['ipw',]==1],,drop=F] %>%
          `rownames<-`(paste0('causal_',rownames(.)))
        ,fData(predidata)
      ) %>%
      AnnotatedDataFrame(varMetadata=fvarMetadata(predidata))
    ,experimentData=
      MIAME(
        name='Herdiantri Sufriyana'
        ,lab='Emily Chia-Yu Su Lab'
        ,contact='herdiantrisufriyana@unusa.ac.id'
        ,title='Medical history dataset for prediction'
        ,abstract=
          str_replace_all(
            'This dataset is a medical-history table from the BPJS Kesehatan.
            Selected causal factors, that is re-assigned by regex, are added.
            The target population is health insurance holders of 
            12-to-55-years-old females who visit healthcare providers between 
            2015 and 2016. The outcome of interest is prelabor rupture of 
            membrane (PROM). The medical history scenario is recorded
            individually within each healthcare provider nationwide.'
            ,'\n',' '
          ) %>%
          str_replace_all('\\s+',' ')
        ,url='https://github.com/herdiantrisufriyana/prom'
      )
    ,annotation=annotation(predidata)
    ,protocolData=protocolData(predidata)
  )
################################################################################



################################################################################
##### Candidate predictors with non-zero variances #############################
var_candidate_predictors=
  
  # Use only training set.
  prediboth %>%
  .[,pData(protocolData(.))$int] %>%
  
  # Get predictors and the outcome.
  lapply(X=1,Y=.,function(X,Y){
    exprs(Y) %>%
      t() %>%
      as.data.frame() %>%
      cbind(select(pData(Y),'outcome'))
  }) %>%
  .[[1]] %>%
  
  # Summarize a standard deviation for each predictor per outcome.
  select(outcome,everything()) %>%
  gather(key,value,-outcome) %>%
  group_by(key,outcome) %>%
  summarize(sd_value=sd(value,na.rm=T),.groups='drop') %>%
  arrange(factor(key,unique(key)),outcome) %>%
  spread(outcome,sd_value) %>%
  setNames(str_remove_all(names(.),'-')) %>% 
  arrange(factor(key,rownames(prediboth)[rownames(prediboth)%in%key]))
################################################################################



################################################################################
##### Train-set-based NPS predictors excluding outcome leaker ##################
# Select predictors without perfect separation problem.
if(run_heavy_computation){
  
  int_nps=
    prediboth %>%
    .[,pData(protocolData(.))$int] %>%
    extract_nps_mh() %>%
    arrange(factor(key,rownames(prediboth)[rownames(prediboth)%in%key]))
  
  saveRDS(int_nps,'data/int_nps.rds')
  
}else{
  int_nps=readRDS('data/int_nps.rds')
}

# Identify codes related to the end of pregnancy.
outcome_leaker=
  int_nps %>%
  left_join(rename(annotation,key=code),by='key') %>%
  filter(
    str_detect(
      str_to_lower(paste(key,desc))
      ,paste0(c(
        'abort'
        ,'deliver'
        ,'cesar'
        ,'labou?r\\s+'
        ,'natal'
        ,'postpartum'
        ,'terminat'
        ,'o0[0123]'
        ,'o152'
        ,'o364'
        ,'o63'
        ,'o7[02]'
        ,'o8[579]'
        ,'o90'
        ,'z3[79]'
      ),collapse='|')
    )
  ) %>%
  filter(!(
    str_detect(
      str_to_lower(paste(key,desc))
      ,paste0(c(
        'aborter'
        ,'ante'
        ,'peri'
        ,'delayed'
        ,'false'
        ,'failed'
        ,'prenatal'
        ,'threatened'
        ,'o311'
        ,'z351'
        ,'o600'
        ,'o96'
      ),collapse='|')
    ) &
      !str_detect(
        str_to_lower(key)
        ,paste0(c(
          'o0[34568]'
          ,'o15[12]'
          ,'o7[02]'
          ,'o8[79]'
        ),collapse='|')
      )
  )) %>%
  select(key,desc)

# Exclude the outcome-leaker codes.
int_nps_eol_p=
  int_nps %>%
  left_join(
    outcome_leaker %>%
      select(key) %>%
      mutate(excluded=1)
    ,by='key'
  ) %>%
  filter(is.na(excluded)) %>%
  select(-excluded)
################################################################################



################################################################################
##### Correlations of candidate predictors #####################################
cor_predictors=
  
  # Use only training set.
  prediboth %>%
  .[,pData(protocolData(.))$int] %>%
  
  # Get predictors and the outcome.
  lapply(X=1,Y=.,function(X,Y){
    exprs(Y) %>%
      t() %>%
      as.data.frame() %>%
      cbind(select(pData(Y),'outcome'))
  }) %>%
  .[[1]] %>%
  
  # Get only predictors without perfect separation problem 
  # and not outcome leakers. 
  select(outcome,everything()) %>%
  mutate_all(function(x)ifelse(is.na(x),0,x)) %>%
  .[,int_nps_eol_p$key] %>%
  
  # Compute inter-predictor Pearson correlation coefficients.
  cor()
################################################################################









################################################################################
## Feature extraction as historical rates
################################################################################



################################################################################
##### Compute historical rate based on nationwide training set #################
if(run_heavy_computation){
  nw_int_hlin=
    inferboth %>%
    .[int_nps_eol_p$key
      ,pData(protocolData(.))$int] %>%
    trans_hist_rate(
      interpolation='linear'
      ,verbose=F
    )
  
  saveRDS(nw_int_hlin,'data/nw_int_hlin.rds')
}else{
  nw_int_hlin=readRDS('data/nw_int_hlin.rds')
}
################################################################################



################################################################################
##### Use the nationwide rate to get it for whole prediction set ###############
if(run_heavy_computation){
  pw_hlin=
    prediboth %>%
    .[int_nps_eol_p$key,] %>%
    trans_hist_rate(
      hist_rate=preproc(nw_int_hlin)$hist_rate
      ,interpolation='linear'
      ,verbose=F
    )
  
  saveRDS(pw_hlin,'data/pw_hlin.rds')
}else{
  pw_hlin=readRDS('data/pw_hlin.rds')
}
################################################################################









################################################################################
## Feature representation as principal components by 10-fold cross validation
################################################################################



################################################################################
##### Fit PC models with resampling based on train set #########################
if(run_heavy_computation){
  pw_int_rsdr=
    pw_hlin %>%
    .[,pData(protocolData(.))$int] %>%
    exprs() %>%
    t() %>%
    as.data.frame() %>%
    rsdr(
      rs_method='CV'
      ,rs_number=10
      ,dr_method='PCA'
      ,cl=detectCores()/2
    )
  saveRDS(pw_int_rsdr,'data/pw_int_rsdr.rds')
}else{
  cat(readRDS('data/log.rds')[['pw_int_rsdr']])
  pw_int_rsdr=readRDS('data/pw_int_rsdr.rds')
}
################################################################################









################################################################################
## Set up tuning-training-calibrating configuration and internal validation
################################################################################



################################################################################
##### Build a function to get set for training or testing ######################
source('R/get_set-function.R')
################################################################################



################################################################################
##### Prepare train set and parameters #########################################
# Create an empty list to save training parameters.
training_parameters=list()

# Hold out 20% of training set for calibration.
suppressWarnings(set.seed(66,sample.kind=sample.kind))
training_parameters$pre_calib_set=
  
  # Training set
  pw_hlin %>%
  .[,pData(protocolData(.))$int] %>%
  pData() %>%
  rownames_to_column(var='id') %>%
  
  # Uncensored outcome
  filter(!censoring) %>%
  
  # Get 80% for pre-calibrated set.
  lapply(X=1,Y=.,function(X,Y){
    Z=createDataPartition(Y$outcome,times=1,p=0.8)
    Y$id[Z$Resample1]
  }) %>%
  .[[1]]

# Compute outcome weights.
training_parameters$outcome_weights=
  
  # Training set
  pw_hlin %>%
  .[,pData(protocolData(.))$int] %>%
  pData() %>%
  select(outcome,censoring) %>%
  
  # Compute the probabilities, taking censoring into account.
  cbind(
    table(.) %>%
      as.numeric() %>%
      setNames(c('nonevent_uncensored','event_uncensored'
                 ,'nonevent_censored','event_censored')) %>%
      t() %>%
      as.data.frame() %>%
      mutate(
        total=
          nonevent_uncensored+
          nonevent_censored+
          event_uncensored+
          event_censored
        ,nonevent_prob=nonevent_uncensored/total
        ,event_prob=event_uncensored/total
      ) %>%
      select(nonevent_prob,event_prob)
  ) %>%
  rownames_to_column(var='id') %>%
  
  # Uncensored outcome
  filter(!censoring) %>%
  select(-censoring) %>%
  
  # Compute the weight from half od the inverse probability.
  mutate(
    weight=
      ifelse(
        outcome=='event'
        ,(1/event_prob)*0.5
        ,(1/nonevent_prob)*0.5
      )
  ) %>%
  column_to_rownames(var='id') %>%
  select(weight)

# Define classification tuning to apply 5-fold cross validation.
training_parameters$tuning_trControl=
  trainControl(
    method='cv'
    ,number=5
    ,summaryFunction=twoClassSummary
    ,classProbs=T
    ,savePredictions=T
    ,allowParallel=T
  )

# Define classification training to apply 30-time bootstrapping.
training_parameters$final_trControl=
  trainControl(
    method='boot'
    ,number=30
    ,summaryFunction=twoClassSummary
    ,classProbs=T
    ,savePredictions=T
    ,allowParallel=T
  )

# Define estimation tuning to apply 5-fold cross validation.
training_parameters$timereg_tuning_trControl=
  trainControl(
    method='cv'
    ,number=5
    ,savePredictions=F
    ,allowParallel=T
  )

# Define estimation training to apply 30-time bootstrapping.
training_parameters$timereg_final_trControl=
  trainControl(
    method='boot'
    ,number=30
    ,savePredictions=F
    ,allowParallel=T
  )
################################################################################



################################################################################
##### Build a function for caret training and evaluation #######################
source('R/caret_trainer_evaluator-function.R')
################################################################################



################################################################################
##### Build a function for caret time-regression and evaluation ################
source('R/caret_timereg_evaluator-function.R')
################################################################################









################################################################################
## Hyperparameter tuning, final training, and calibrating
################################################################################



################################################################################
##### Empty lists to save models and the evaluation results ####################
model=list()
calib_model=list()
eval_model=list()
timing_model=list()
eval_timing_model=list()
################################################################################



################################################################################
##### Conduct causal ridge regression by parallel computing ####################
if(run_heavy_computation){
  c(model$causal_ridge
    ,calib_model$causal_ridge
    ,eval_model$causal_ridge) %<-% caret_trainer_evaluator(
      data=
        pw_hlin %>%
        .[rownames(.) %>% .[str_detect(.,'causal')],]
      ,method='glmnet'
      ,calib_method='glm'
      ,tuning=data.frame(alpha=0,lambda=10^seq(-9,0,len=10))
      ,training=training_parameters
      ,title='Conduct causal ridge regression by parallel computing'
      ,dir='data'
      ,file='causal_ridge'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['causal_ridge']])
  c(model$causal_ridge
    ,calib_model$causal_ridge
    ,eval_model$causal_ridge) %<-% list(
      readRDS('data/causal_ridge.rds')
      ,readRDS('data/calib_causal_ridge.rds')
      ,readRDS('data/eval_causal_ridge.rds')
    )
}
################################################################################



################################################################################
##### Conduct causal ridge timing regression by parallel computing #############
if(run_heavy_computation){
  c(timing_model$causal_ridge
    ,eval_timing_model$causal_ridge) %<-% caret_timereg_evaluator(
      data=
        pw_hlin %>%
        .[rownames(.) %>% .[str_detect(.,'causal')],]
      ,model=model$causal_ridge
      ,calib_model=calib_model$causal_ridge
      ,tuning=data.frame(alpha=0,lambda=10^seq(-9,0,len=10))
      ,training=training_parameters
      ,title='Conduct causal ridge timing regression by parallel computing'
      ,dir='data'
      ,file='causal_ridge'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['timing_causal_ridge']])
  c(timing_model$causal_ridge
    ,eval_timing_model$causal_ridge) %<-% list(
      readRDS('data/timing_causal_ridge.rds')
      ,readRDS('data/eval_timing_causal_ridge.rds')
    )
}
################################################################################



################################################################################
##### Prepare and combine PCs for all sets #####################################
if(run_heavy_computation){
  cat('Prepare and combine PCs for all sets\n')
  cat('Started:',as.character(now()),'\n')
  
  # Transform any features into the PCs.
  pw_pc=
    list('int','ran','geo','tem','bgt') %>%
    lapply(function(x){
      cat('For ',x,': ',sep='')
      pw_hlin %>%
        .[,pData(protocolData(.))[[x]]] %>%
        transformation(
          rsdr_object=pw_int_rsdr
          ,verbose=T
        )
    }) %>%
    setNames(c('int','ran','geo','tem','bgt'))
  
  # Provider-wise data for prediction by PCs
  pw_pc=
    ExpressionSet(
      assayData=
        pw_pc %>%
        lapply(exprs) %>%
        do.call(cbind,.) %>%
        .[,colnames(pw_hlin)]
      ,phenoData=
        pw_pc %>%
        lapply(phenoData) %>%
        lapply(pData) %>%
        do.call(rbind,.) %>%
        `rownames<-`(str_split_fixed(rownames(.),'\\.',2)[,2]) %>%
        .[colnames(pw_hlin),] %>%
        AnnotatedDataFrame() %>%
        `varMetadata<-`(varMetadata(phenoData(pw_pc$int)))
      ,featureData=featureData(pw_pc$int)
      ,experimentData=
        MIAME(
          name='Herdiantri Sufriyana'
          ,lab='Emily Chia-Yu Su Lab'
          ,contact='herdiantrisufriyana@unusa.ac.id'
          ,title='Medical history PC dataset for prediction'
          ,abstract=
            str_replace_all(
              'This dataset is a medical-history table from the BPJS Kesehatan.
              Selected causal factors, that is re-assigned by regex, are added.
              All are transformed by resampled dimensional reduction using 
              principal components analysis with 10-fold cross validation (CV).
              The target population is health insurance holders of 
              12-to-55-years-old females who visit healthcare providers between 
              2015 and 2016. The outcome of interest is prelabor rupture of 
              membrane (PROM). The medical history scenario is recorded
              individually within each healthcare provider nationwide.'
              ,'\n',' '
            ) %>%
            str_replace_all('\\s+',' ')
          ,url='https://github.com/herdiantrisufriyana/prom'
        )
      ,annotation=annotation(pw_pc$int)
      ,protocolData=
        pw_pc %>%
        lapply(protocolData) %>%
        lapply(pData) %>%
        do.call(rbind,.) %>%
        `rownames<-`(str_split_fixed(rownames(.),'\\.',2)[,2]) %>%
        .[colnames(pw_hlin),] %>%
        AnnotatedDataFrame() %>%
        `varMetadata<-`(varMetadata(protocolData(pw_pc$int)))
    )
  
  gc()
  cat('End:',as.character(now()))
}else{
  cat(readRDS('data/log.rds')[['pw_pc']])
}
################################################################################



################################################################################
##### Conduct PC elastic net regression by parallel computing ##################
if(run_heavy_computation){
  c(model$pc_elnet
    ,calib_model$pc_elnet
    ,eval_model$pc_elnet) %<-% caret_trainer_evaluator(
      data=pw_pc
      ,method='glmnet'
      ,calib_method='gamLoess'
      ,tuning=expand.grid(alpha=seq(0,1,len=5),lambda=10^seq(-9,0,len=5))
      ,training=training_parameters
      ,title='Conduct PC elastic net regression by parallel computing'
      ,dir='data'
      ,file='pc_elnet'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['pc_elnet']])
  c(model$pc_elnet
    ,calib_model$pc_elnet
    ,eval_model$pc_elnet) %<-% list(
      readRDS('data/pc_elnet.rds')
      ,readRDS('data/calib_pc_elnet.rds')
      ,readRDS('data/eval_pc_elnet.rds')
    )
}
################################################################################



################################################################################
##### Conduct PC elastic net timing regression by parallel computing ###########
if(run_heavy_computation){
  c(timing_model$pc_elnet
    ,eval_timing_model$pc_elnet) %<-% caret_timereg_evaluator(
      data=pw_pc
      ,model=model$pc_elnet
      ,calib_model=calib_model$pc_elnet
      ,tuning=expand.grid(alpha=seq(0,1,len=5),lambda=10^seq(-9,0,len=5))
      ,training=training_parameters
      ,title='Conduct PC elastic net timing regression by parallel computing'
      ,dir='data'
      ,file='pc_elnet'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['timing_pc_elnet']])
  c(timing_model$pc_elnet
    ,eval_timing_model$pc_elnet) %<-% list(
      readRDS('data/timing_pc_elnet.rds')
      ,readRDS('data/eval_timing_pc_elnet.rds')
    )
}
################################################################################



################################################################################
##### Select the top-weight PCs for downstream analysis ########################
selected_pc=
  
  # Get PC weights from the PC elastic net regression model.
  coef(model$pc_elnet$finalModel,model$pc_elnet$bestTune$lambda) %>%
  as.matrix() %>%
  as.data.frame() %>%
  rownames_to_column(var='term') %>%
  
  # Clean up.
  mutate(term=str_remove_all(term,'\\`|\\(|\\)')) %>%
  setNames(c('term','estimate')) %>%
  filter(estimate!=0) %>%
  arrange(desc(abs(estimate))) %>%
  filter(!term %in% c('Intercept')) %>%
  
  # Find the top-weight PCs up to the maximum number to get 200 EPV.
  slice(1:60) %>%
  mutate(idx=str_remove_all(term,'PC') %>% as.integer())
################################################################################



################################################################################
##### Conduct PC random forest by parallel computing ###########################
if(run_heavy_computation){
  c(model$pc_rf
    ,calib_model$pc_rf
    ,eval_model$pc_rf) %<-% caret_trainer_evaluator(
      data=pw_pc[selected_pc$term,]
      ,method='Rborist'
      ,calib_method='glm'
      ,tuning=expand.grid(predFixed=seq(5,45,len=5),minNode=seq(20,100,len=5))
      ,training=training_parameters
      ,title='Conduct PC random forest by parallel computing'
      ,dir='data'
      ,file='pc_rf'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['pc_rf']])
  c(model$pc_rf
    ,calib_model$pc_rf
    ,eval_model$pc_rf) %<-% list(
      readRDS('data/pc_rf.rds')
      ,readRDS('data/calib_pc_rf.rds')
      ,readRDS('data/eval_pc_rf.rds')
    )
}
################################################################################



################################################################################
##### Conduct PC-RF timing regression by parallel computing ####################
if(run_heavy_computation){
  c(timing_model$pc_rf
    ,eval_timing_model$pc_rf) %<-% caret_timereg_evaluator(
      data=pw_pc[selected_pc$term,]
      ,model=model$pc_rf
      ,calib_model=calib_model$pc_rf
      ,tuning=expand.grid(predFixed=seq(5,45,len=5),minNode=seq(20,100,len=5))
      ,training=training_parameters
      ,title='Conduct PC-RF timing regression by parallel computing'
      ,dir='data'
      ,file='pc_rf'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['timing_pc_rf']])
  c(timing_model$pc_rf
    ,eval_timing_model$pc_rf) %<-% list(
      readRDS('data/timing_pc_rf.rds')
      ,readRDS('data/eval_timing_pc_rf.rds')
    )
}
################################################################################



################################################################################
##### Conduct PC gradient boosting machine by parallel computing ###############
if(run_heavy_computation){
  c(model$pc_gbm
    ,calib_model$pc_gbm
    ,eval_model$pc_gbm) %<-% caret_trainer_evaluator(
      data=pw_pc[selected_pc$term,]
      ,method='gbm'
      ,calib_method='gamLoess'
      ,tuning=
        expand.grid(
          interaction.depth=1
          ,shrinkage=seq(0.0005,0.05,len=25)
          ,n.minobsinnode=20
        ) %>%
        mutate(n.trees=seq(0,2500,len=26) %>% .[-1] %>% rev()) %>%
        select(n.trees,everything())
      ,training=training_parameters
      ,title='Conduct PC gradient boosting machine by parallel computing'
      ,dir='data'
      ,file='pc_gbm'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['pc_gbm']])
  c(model$pc_gbm
    ,calib_model$pc_gbm
    ,eval_model$pc_gbm) %<-% list(
      readRDS('data/pc_gbm.rds')
      ,readRDS('data/calib_pc_gbm.rds')
      ,readRDS('data/eval_pc_gbm.rds')
    )
}
################################################################################



################################################################################
##### Conduct PC-GBM timing regression by parallel computing ###################
if(run_heavy_computation){
  c(timing_model$pc_gbm
    ,eval_timing_model$pc_gbm) %<-% caret_timereg_evaluator(
      data=pw_pc[selected_pc$term,]
      ,model=model$pc_gbm
      ,calib_model=calib_model$pc_gbm
      ,tuning=
        expand.grid(
          interaction.depth=1
          ,shrinkage=seq(0.0005,0.05,len=25)
          ,n.minobsinnode=20
        ) %>%
        mutate(n.trees=seq(0,2500,len=26) %>% .[-1] %>% rev()) %>%
        select(n.trees,everything())
      ,training=training_parameters
      ,title='Conduct PC-GBM timing regression by parallel computing'
      ,dir='data'
      ,file='pc_gbm'
      ,cl=detectCores()/2
    )
}else{
  cat(readRDS('data/log.rds')[['timing_pc_gbm']])
  c(timing_model$pc_gbm
    ,eval_timing_model$pc_gbm) %<-% list(
      readRDS('data/timing_pc_gbm.rds')
      ,readRDS('data/eval_timing_pc_gbm.rds')
    )
}
################################################################################









################################################################################
## Deep-insight visible neural network (DI-VNN)
################################################################################



################################################################################
##### DI-VNN feature selection and representation ##############################
if(run_heavy_computation){
  input=list()
  
  # Use provider-wise, pre-calibrated, training set for modeling.
  input$pw=
    pw_hlin %>%
    .[,!pData(phenoData(.))$censoring] %>%
    .[,pData(protocolData(.))$int] %>%
    .[,colnames(.)%in%training_parameters$pre_calib_set,drop=F]
  
  # Use nationwide, pre-calibrated, training set for feature selection.
  input$nw=
    nw_int_hlin %>%
    .[,!pData(phenoData(.))$censoring] %>%
    .[,colnames(.)%in%training_parameters$pre_calib_set,drop=F]
  
  output=list()
  
  # Get uncensored outcome.
  output$outcome=
    input$pw %>%
    phenoData() %>%
    pData() %>%
    select(outcome)
  
  # Get features corresponding to uncensored outcome.
  output$raw$pw=
    input$pw %>%
    exprs() %>%
    t() %>%
    .[rownames(output$outcome),]
  
  output$raw$nw=
    input$nw %>%
    exprs() %>%
    t() %>%
    .[rownames(output$outcome),]
  
  # Select features utilizing differential analysis
  # by moderated-t stats with Benjamini-Hochberg multiple testing correction.
  output$fit=
    t(output$raw$nw) %>%
    normalize.quantiles() %>%
    `dimnames<-`(dimnames(t(output$raw$nw))) %>%
    lmFit(model.matrix(~outcome,output$outcome)) %>%
    eBayes() %>%
    topTable(coef=2,nrow(.$coefficients),adjust.method='BH',sort.by='none') %>%
    filter(adj.P.Val<0.05)
  
  # Get the selected features as unnormalized ones.
  output$unnorm$pw=
    output$raw$pw %>%
    .[,rownames(output$fit)]
  
  output$unnorm$nw=
    output$raw$nw %>%
    .[,rownames(output$fit)]
  
  # Normalize features quantile-to-quantile
  # using differential average of features as target.
  output$norm=
    output$unnorm$pw %>%
    t() %>%
    normalize.quantiles.use.target(output$fit$AveExpr) %>%
    t() %>%
    `dimnames<-`(dimnames(output$unnorm$pw))
  
  # Transform features by 1-bit stochastic gradient descent (SGD)
  # using the differential average.
  cat('Transform features by 1-bit stochastic gradient descent (SGD)\n')
  output$predictor_v=
    output$norm %>%
    sweep(2,output$fit$AveExpr,'-') %>%
    pbsapply(function(x){ifelse(x==0,0,ifelse(x>0,1,-1))}) %>%
    matrix(
      ncol=ncol(output$unnorm$pw)
      ,byrow=F
      ,dimnames=dimnames(output$unnorm$pw)
    ) %>%
    as.data.frame()
  
  # Get feature-wise mean of unnormalized features.
  output$predictor_m=
    output$unnorm$nw %>%
    colMeans2()
  
  # Get feature-wise standard deviation (SD) of unnormalized features.
  output$predictor_s=
    output$unnorm$nw %>%
    colSds()
  
  # Scale unnormalized features by the mean and SD.
  output$scaled=
    output$unnorm$nw %>%
    sweep(2,output$predictor_m,'-') %>%
    sweep(2,output$predictor_s,'/')
  
  # Compute feature-feature Pearson correlation matrix
  # of unnormalized features.
  cat('Compute feature-feature Pearson correlation matrix\n')
  output$predictor_p=
    colnames(output$unnorm$nw) %>%
    lapply(X=seq(length(.)-1),Y=.,function(X,Y){
      data.frame(
        predictor1=Y[X]
        ,predictor2=Y[(X+1):length(.)]
      )
    }) %>%
    do.call(rbind,.) %>%
    mutate(
      pearson=
        pbsapply(X=seq(nrow(.)),Y=.,Z=output$scaled,function(X,Y,Z){
          cor(
            Z[,Y$predictor1[X]]
            ,Z[,Y$predictor2[X]]
          )
        })
    ) %>%
    rbind(
      setNames(select(.,predictor2,predictor1,everything()),colnames(.))
      ,data.frame(
        predictor1=colnames(output$unnorm$nw)
        ,predictor2=colnames(output$unnorm$nw)
        ,pearson=1
      )
    ) %>%
    spread(predictor2,pearson) %>%
    column_to_rownames(var='predictor1') %>%
    as.matrix()
  
  # Conduct Barnes-Hut t-moderated stochastic neighbor embedding (t-SNE).
  cat('Conduct Barnes-Hut t-moderated stochastic neighbor embedding (t-SNE)\n')
  suppressWarnings(set.seed(33,sample.kind=sample.kind))
  output$predictor_tsne=
    output$predictor_p %>%
    Rtsne(dims=3,verbose=T,is_distance=T)
  
  # Construct clique-extracted ontology (CliXO) (choose your own OS).
  output$predictor_c=
    output$predictor_p %>%
    clixo(os='windows')
  
  # Compile input.
  input=list()
  
  input$value=output$predictor_v
  
  input$outcome=
    output$outcome %>%
    mutate(outcome=as.integer(outcome=='event')) %>%
    pull(outcome) %>%
    setNames(rownames(input$value))
  
  input$similarity=output$predictor_p
  
  input$mapping=
    output$predictor_tsne$Y %>%
    `rownames<-`(colnames(input$value))
  
  input$ontology=output$predictor_c
  
  input$fit=output$fit
  
  # Compile into a TidySet.
  cat('Compile into a TidySet\n')
  output=
    TidySet.compile(
      value=input$value
      ,outcome=input$outcome
      ,similarity=input$similarity
      ,mapping=input$mapping
      ,ontology=input$ontology
      ,ranked=T
      ,dims=7
      ,decreasing=F
      ,seed_num=33
    )
  
  saveRDS(input,'data/input.rds')
  saveRDS(output,'data/output.rds')
}else{
  cat(readRDS('data/log.rds')[['output_predictor_v']])
  cat(readRDS('data/log.rds')[['output_predictor_p']])
  cat(readRDS('data/log.rds')[['output_predictor_tsne']])
  cat(readRDS('data/log.rds')[['output']])
  input=readRDS('data/input.rds')
  output=readRDS('data/output.rds')
}
################################################################################



################################################################################
##### Change outcome for timing regression #####################################
output_reg=
  output %>%
  `phenoData<-`(
    output %>%
      phenoData() %>%
      `pData<-`(
        output %>%
          pData() %>%
          rownames_to_column(var='id') %>%
          mutate(
            outcome=
              pw_hlin %>%
              .[,!pData(phenoData(.))$censoring] %>%
              .[,pData(protocolData(.))$int] %>%
              .[,colnames(.)%in%training_parameters$pre_calib_set,drop=F] %>%
              protocolData() %>%
              pData() %>%
              rownames_to_column(var='id') %>%
              mutate(
                timing=as.duration(latest_date-admission_date)/ddays(1)
              ) %>%
              select(id,timing) %>%
              pull(timing) %>%
              setNames(rownames(input$value))
          ) %>%
          column_to_rownames(var='id')
      )
  )
################################################################################



################################################################################
##### Create a function to refresh keras backend session #######################
source('R/refresh_session-function.R')
refresh_session()
################################################################################



################################################################################
##### Create a function to create training function given lambda ###############
source('R/trainer_generator-function.R')
################################################################################



################################################################################
##### Create a function to create regressor function given lambda ##############
source('R/regressor_generator-function.R')
################################################################################



################################################################################
##### Conduct hyperparameter tuning for a DI-VNN ###############################
lambda=10^seq(-10,-1,len=10)
if(run_heavy_computation){
  cat('Conduct hyperparameter tuning for DI-VNN model\n')
  cat('Started:',as.character(now()),'\n')
  
  surrogate_model=
    trainer_generator(
      output
      ,class_weight=
        pw_hlin %>%
        .[,colnames(.)%in%training_parameters$pre_calib_set,drop=F] %>%
        phenoData() %>%
        pData() %>%
        select(outcome) %>%
        mutate(outcome=as.integer(outcome=='event')) %>%
        cbind(
          training_parameters$outcome_weights %>%
            .[rownames(.)%in%training_parameters$pre_calib_set,,drop=F]
        ) %>%
        filter(!duplicated(.)) %>%
        arrange(outcome) %>%
        lapply(X=1,Y=.,function(X,Y){
          setNames(Y$weight,Y$outcome)
        }) %>%
        .[[1]]
      ,epochs=5
      ,patience=round(5/2)
      ,batch_size=512
      ,warm_up=0.05
      ,lr=2^-6
      ,min_lr=2^-6/512
      ,tuning_mode=T
      ,verbose=1
    )
  
  tuning_divnn=list()
  i=1
  for(j in seq(i,length(lambda))){
    suppressWarnings(set.seed(33,sample.kind=sample.kind))
    tuning_divnn[[j]]=surrogate_model(lambda[j])
  }
  
  rm(i,j)
  cat('End:',as.character(now()))
  saveRDS(tuning_divnn,'data/tuning_divnn.rds')
}else{
  cat(readRDS('data/log.rds')[['tuning_divnn']])
  tuning_divnn=readRDS('data/tuning_divnn.rds')
}
################################################################################



################################################################################
##### Conduct modeling for a DI-VNN ############################################
if(run_heavy_computation){
  cat('Conduct modeling for DI-VNN\n')
  cat('Started:',as.character(now()),'\n')
  
  surrogate_model=
    trainer_generator(
      output
      ,path='data/ontonet'
      ,class_weight=
        pw_hlin %>%
        .[,colnames(.)%in%training_parameters$pre_calib_set,drop=F] %>%
        phenoData() %>%
        pData() %>%
        select(outcome) %>%
        mutate(outcome=as.integer(outcome=='event')) %>%
        cbind(
          training_parameters$outcome_weights %>%
            .[rownames(.)%in%training_parameters$pre_calib_set,,drop=F]
        ) %>%
        filter(!duplicated(.)) %>%
        arrange(outcome) %>%
        lapply(X=1,Y=.,function(X,Y){
          setNames(Y$weight,Y$outcome)
        }) %>%
        .[[1]]
      ,epochs=500
      ,patience=100
      ,batch_size=512
      ,warm_up=0.05
      ,lr=2^-6
      ,min_lr=2^-6/512
      ,tuning_mode=F
      ,checkpoint=T
      ,verbose=1
    )
  suppressWarnings(set.seed(33,sample.kind=sample.kind))
  modeling_divnn=surrogate_model(lambda[10])
  
  cat('End:',as.character(now()))
  save_model_weights_hdf5(modeling_divnn$ontonet,'data/ontonet.h5')
  saveRDS(modeling_divnn,'data/modeling_divnn.rds')
}else{
  cat(readRDS('data/log.rds')[['modeling_divnn']])
  modeling_divnn=readRDS('data/modeling_divnn.rds')
  refresh_session()
  modeling_divnn$ontonet=
    output %>%
    generator.ontonet(l2_norm=lambda[10]) %>%
    # readLines('data/ontonet.json') %>%
    # model_from_json() %>%
    load_model_weights_hdf5('data/ontonet.h5') %>%
    compile(
      optimizer=optimizer_sgd(
        lr=modeling_divnn$history$metrics$lr %>%
          .[which.max(modeling_divnn$history$metrics$val_root_roc)]
        ,momentum=0.9
      )
      ,loss='mean_squared_error'
      ,loss_weights=c(rep(
        0.3/(0.3*(length(.$outputs)-1)+1),length(.$outputs)-1)
        ,1/(0.3*(length(.$outputs)-1)+1)
      )
      ,metrics=c(
        tf$keras$metrics$AUC(name='roc')
        ,tf$keras$metrics$TruePositives(name='tp')
        ,tf$keras$metrics$FalseNegatives(name='fn')
        ,tf$keras$metrics$FalsePositives(name='fp')
        ,tf$keras$metrics$TrueNegatives(name='tn')
      )
    )
}
################################################################################



################################################################################
##### Conduct hyperparameter tuning for a DI-VNN timing regressor ##############
lambda_reg=10^seq(-10,-1,len=10)
if(run_heavy_computation){
  cat('Conduct hyperparameter tuning for DI-VNN timing regressor model\n')
  cat('Started:',as.character(now()),'\n')
  
  surrogate_model_reg=
    regressor_generator(
      output_reg
      ,epochs=5
      ,patience=round(5/2)
      ,batch_size=512
      ,warm_up=0.05
      ,lr=2^-6
      ,min_lr=2^-6/512
      ,tuning_mode=T
      ,verbose=1
    )
  
  tuning_divnn_reg=list()
  i=1
  for(j in seq(i,length(lambda_reg))){
    suppressWarnings(set.seed(33,sample.kind=sample.kind))
    tuning_divnn_reg[[j]]=surrogate_model_reg(lambda_reg[j])
  }
  
  rm(i,j)
  cat('End:',as.character(now()))
  saveRDS(tuning_divnn_reg,'data/tuning_divnn_reg.rds')
}else{
  cat(readRDS('data/log.rds')[['tuning_divnn_reg']])
  tuning_divnn_reg=readRDS('data/tuning_divnn_reg.rds')
}
################################################################################



################################################################################
##### Conduct modeling for a DI-VNN timing regressor ###########################
if(run_heavy_computation){
  cat('Conduct modeling for DI-VNN timing regressor\n')
  cat('Started:',as.character(now()),'\n')
  
  surrogate_model_reg=
    regressor_generator(
      output_reg
      ,path='data/ontonet_reg'
      ,epochs=500
      ,patience=100
      ,batch_size=512
      ,warm_up=0.05
      ,lr=2^-6
      ,min_lr=2^-6/512
      ,tuning_mode=F
      ,checkpoint=T
      ,verbose=1
    )
  suppressWarnings(set.seed(33,sample.kind=sample.kind))
  modeling_divnn_reg=surrogate_model_reg(lambda_reg[3])
  
  cat('End:',as.character(now()))
  save_model_weights_hdf5(modeling_divnn_reg$ontonet,'data/ontonet_reg.h5')
  saveRDS(modeling_divnn_reg,'data/modeling_divnn_reg.rds')
}else{
  cat(readRDS('data/log.rds')[['modeling_divnn_reg']])
  modeling_divnn_reg=readRDS('data/modeling_divnn_reg.rds')
  refresh_session()
  modeling_divnn_reg$ontonet=
    output_reg %>%
    generator.ontonet(
      l2_norm=lambda_reg[3]
      ,output_unit=1
      ,output_activation=NULL
    ) %>%
    # readLines('data/ontonet.json') %>%
    # model_from_json() %>%
    load_model_weights_hdf5('data/ontonet_reg.h5') %>%
    compile(
      optimizer=optimizer_sgd(
        lr=modeling_divnn_reg$history$metrics$lr %>%
          .[which.min(modeling_divnn_reg$history$metrics$val_root_rmse)]
        ,momentum=0.9
      )
      ,loss='mean_squared_error'
      ,loss_weights=c(rep(
        0.3/(0.3*(length(.$outputs)-1)+1),length(.$outputs)-1)
        ,1/(0.3*(length(.$outputs)-1)+1)
      )
      ,metrics=c(tf$keras$metrics$RootMeanSquaredError(name='rmse'))
    )
}
################################################################################



################################################################################
##### Create a function to transform test data for DI-VNN input ################
source('R/test_transformer-function.R')
################################################################################



################################################################################
##### Transform test data for DI-VNN input #####################################
if(run_heavy_computation){
  test_data=
    list('int','calib','ran','geo','tem','bgt') %>%
    lapply(function(x){
      cat('Compile data for set of:',x,'\n')
      
      # Select the subset.
      if(x=='int'){
        data=
          pw_hlin %>%
          .[,!pData(phenoData(.))$censoring] %>%
          .[,pData(protocolData(.))$int]
      }else if(x=='calib'){
        data=
          pw_hlin %>%
          .[,!pData(phenoData(.))$censoring] %>%
          .[,pData(protocolData(.))$int] %>%
          .[,!colnames(.)%in%training_parameters$pre_calib_set,drop=F]
      }else{
        data=
          pw_hlin %>%
          .[,!pData(phenoData(.))$censoring] %>%
          .[,pData(protocolData(.))[[x]]]
      }
      
      # Transform the subset.
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
    setNames(c('calib','ran','geo','tem','bgt'))
  saveRDS(test_data,'data/test_data.rds')
}else{
  cat(readRDS('data/log.rds')[['test_data']])
  test_data=readRDS('data/test_data.rds')
}
################################################################################



################################################################################
##### Change outcome of test data for timing regression ########################
if(run_heavy_computation){
  test_data_reg=
    list('int','calib','ran','geo','tem','bgt') %>%
    
    # Select the subset.
    lapply(function(x){
      cat('Compile data for set of:',x,'\n')
      if(x=='int'){
        data=
          pw_hlin %>%
          .[,!pData(phenoData(.))$censoring] %>%
          .[,pData(protocolData(.))$int]
      }else if(x=='calib'){
        data=
          pw_hlin %>%
          .[,!pData(phenoData(.))$censoring] %>%
          .[,pData(protocolData(.))$int] %>%
          .[,!colnames(.)%in%training_parameters$pre_calib_set,drop=F]
      }else{
        data=
          pw_hlin %>%
          .[,!pData(phenoData(.))$censoring] %>%
          .[,pData(protocolData(.))[[x]]]
      }
      
      # Transform the subset.
      data2=
        data %>%
        test_transformer(
          SGD1bit_fit=input$fit
          ,similarity=input$similarity
          ,mapping=input$mapping
          ,ontology=input$ontology
          ,ranked=T
          ,dims=7
          ,decreasing=F
          ,seed_num=33
        )
      
      # Change outcome with the time of delivery.
      data2 %>%
        `phenoData<-`(
          data2 %>%
            phenoData() %>%
            `pData<-`(
              data2 %>%
                pData() %>%
                rownames_to_column(var='id') %>%
                mutate(
                  outcome=
                    data %>%
                    protocolData() %>%
                    pData() %>%
                    rownames_to_column(var='id') %>%
                    mutate(
                      timing=as.duration(latest_date-admission_date)/ddays(1)
                    ) %>%
                    select(id,timing) %>%
                    pull(timing) %>%
                    setNames(colnames(data))
                ) %>%
                column_to_rownames(var='id')
            )
        )
      
    }) %>%
    setNames(c('int','calib','ran','geo','tem','bgt'))
  saveRDS(test_data_reg,'data/test_data_reg.rds')
}else{
  cat(readRDS('data/log.rds')[['test_data_reg']])
  test_data_reg=readRDS('data/test_data_reg.rds')
}
################################################################################



################################################################################
##### Build a function for DI-VNN evaluation ###################################
source('R/eval_divnn-function.R')
################################################################################



################################################################################
##### Build a function for DI-VNN calibration and evaluation ###################
source('R/divnn_calibrator_evaluator-function.R')
################################################################################



################################################################################
##### Build a function for DI-VNN timing regression evaluation #################
source('R/eval_divnn_reg-function.R')
################################################################################



################################################################################
##### Build a function for DI-VNN time-regression and evaluation ###############
source('R/divnn_timereg_evaluator-function.R')
################################################################################



################################################################################
##### Calibrate and evaluate DI-VNN ############################################
if(run_heavy_computation){
  c(model$divnn
    ,calib_model$divnn
    ,eval_model$divnn) %<-% divnn_calibrator_evaluator(
      data=test_data
      ,modeling=modeling_divnn
      ,training=training_parameters
      ,batch_size=512
      ,title='Calibrate and evaluate DI-VNN'
      ,dir='data'
      ,file='divnn'
    )
}else{
  cat(readRDS('data/log.rds')[['divnn']])
  c(model$divnn
    ,calib_model$divnn
    ,eval_model$divnn) %<-% list(
      readRDS('data/divnn.rds')
      ,readRDS('data/calib_divnn.rds')
      ,readRDS('data/eval_divnn.rds')
    )
}
################################################################################



################################################################################
##### Evaluate DI-VNN regressor ################################################
if(run_heavy_computation){
  c(timing_model$divnn
    ,eval_timing_model$divnn) %<-% divnn_timereg_evaluator(
      timing_data=test_data_reg
      ,data=test_data
      ,timing_model=modeling_divnn_reg
      ,model=modeling_divnn
      ,calib_model=calib_model$divnn
      ,batch_size=512
      ,title='Evaluate DI-VNN regressor'
      ,dir='data'
      ,file='divnn'
    )
}else{
  cat(readRDS('data/log.rds')[['timing_divnn']])
  c(timing_model$divnn
    ,eval_timing_model$divnn) %<-% list(
      readRDS('data/timing_divnn.rds')
      ,readRDS('data/eval_timing_divnn.rds')
    )
}
################################################################################



################################################################################
##### Plot-table plotting timing regression ####################################
eval_timing_model_plt=
  eval_timing_model %>%
  lapply(X=names(.),Y=.,function(X,Y){
    Y[[X]] %>%
      lapply(X=names(.),Y=.,Z=X,K=Y,function(X,Y,Z,K){
        
        # Combine classification and estimation data.
        cbind(
          Y[[X]] %>%
            select(timing,outcome,timing_pred)
          ,K$divnn[[X]] %>%
            select(pred,calib_pred)
        ) %>%
          select_at(colnames(Y[[X]])) %>%
          
          # Bin per week.
          filter(timing_pred>0) %>%
          mutate(timing_pred=round(timing_pred/7)) %>%
          
          # Define outcome and the prediction.
          mutate(
            outcome=
              ifelse(outcome==1|outcome=='event','event','nonevent') %>%
              factor(c('nonevent','event'))
            ,pred=
              ifelse(pred==1|pred=='event','event','nonevent') %>%
              factor(c('nonevent','event'))
          ) %>%
          mutate(any_metric=factor('event',c('nonevent','event')))%>%
          
          # Summarize each of the evaluation metrics.
          gather(metric_name,metric,-timing,-timing_pred) %>%
          group_by(timing_pred,metric_name,metric) %>%
          summarize(
            avg=mean(timing/7)
            ,lb=mean(timing/7)-qnorm(0.975)*sd(timing/7)/sqrt(n())
            ,ub=mean(timing/7)+qnorm(0.975)*sd(timing/7)/sqrt(n())
          ) %>%
          mutate(set=X,model=Z)
      }) %>%
      do.call(rbind,.)
  }) %>%
  do.call(rbind,.)
################################################################################









################################################################################
## Evaluating the best model for classification and estimation
################################################################################



################################################################################
## External validation
################################################################################



################################################################################
## Exploring the best model
################################################################################



################################################################################
##### Visualization tables #####################################################
if(run_heavy_computation){
  visualization=list()
  
  cat('Get ontonet visualisation table.\n')
  visualization$ontonet=
    output %>%
    viz.ontonet(
      feature=F
      ,eval.results=modeling_divnn$evaluation
      ,eval.metric='roc'
      ,eval.pal=c('#E64B35FF','#00A087FF')
    )
  
  cat('Get ontoarray visualisation table.\n')
  visualization$ontoarray=
    output %>%
    viz.ontoarray(modeling_divnn$ontonet,batch_size=512,verbose=T)
  
  saveRDS(visualization,'data/visualization.rds')
}else{
  cat(readRDS('data/log.rds')[['visualization']])
  visualization=readRDS('data/visualization.rds')
}
################################################################################



################################################################################
##### Build a function to plot ontonet #########################################
source('R/plot.viz.ontonet-function.R')
################################################################################



################################################################################
##### Build a function to plot ontoarray #######################################
source('R/plot.viz.ontoarray-function.R')
################################################################################



################################################################################
##### Filter non-zero ontotype #################################################
visualized_codes=
  
  # Get feature data from the ontoarray.
  visualization$ontoarray %>%
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
  setNames(names(visualization$ontoarray)) %>%
  unlist() %>%
  data.frame(output=.) %>%
  rownames_to_column(var='ontotype') %>%
  separate(ontotype,c('ontotype','code'),sep='\\.') %>%
  
  # Add tendency to event or nonevent.
  mutate(outcome=ifelse(output>=0,'event','nonevent')) %>%
  
  # Add the description.
  left_join(
    pw_hlin %>%
      fData() %>%
      rownames_to_column(var='code')
    ,by='code'
  ) %>%
  select(outcome,ontotype,code,desc) %>%
  arrange(ontotype,code,outcome) %>%
  
  # Simplify outcome.
  group_by(code,ontotype,desc) %>%
  summarize(outcome=paste0(outcome,collapse=' & '),.groups='drop') %>%
  mutate(outcome=ifelse(outcome=='event & nonevent','both',outcome)) %>%
  arrange(code,ontotype,factor(outcome,c('event','nonevent','both')))
################################################################################









################################################################################
## Preparing web application
################################################################################



################################################################################
##### Save variables for app ###################################################
# Save the feature and the reg expression.
int_nps_eol_p %>%
  select(key) %>%
  mutate_at('key',function(x){
    ifelse(str_detect(x,'causal_'),paste0(str_remove_all(x,'causal_'),'*'),x)
  }) %>%
  left_join(rename(dag$measure_nodes,key=label),by='key') %>%
  mutate(name=ifelse(is.na(name),key,name)) %>%
  mutate_at('key',function(x){
    ifelse(str_detect(x,'\\*'),paste0('causal_',str_remove_all(x,'\\*')),x)
  }) %>%
  setNames(c('features','regex')) %>%
  saveRDS('data/features.rds')

# Save nationwide historical rate.
preproc(nw_int_hlin)$hist_rate %>%
  filter(mh%in%readRDS('data/features.rds')$features) %>%
  saveRDS('data/hist_rates.rds')

# Save PC names.
selected_pc$term %>%
  saveRDS('data/pcs.rds')

# Reduce caret object like random forest.
source('R/reduce_rf-function.R')
readRDS('data/timing_pc_rf.rds') %>%
  reduce_rf() %>%
  saveRDS('data/small_timing_pc_rf.rds')
readRDS('data/calib_divnn.rds') %>%
  reduce_rf() %>%
  saveRDS('data/small_calib_divnn.rds')

# Save the ontonotation.
model_weight$divnn %>%
  select(Ontology,Predictor,Description) %>%
  filter(!duplicated(.)) %>%
  arrange(desc(Ontology),Predictor,Description) %>%
  saveRDS('data/ontonotation.rds')
################################################################################



################################################################################
##### Prepare ROC and prediction tables ########################################
# ROC table
calib_model$divnn$pred %>%
  
  # Take needed columns.
  select(Resample,rowIndex,event,obs) %>%
  setNames(c('subset','index','score','outcome')) %>%
  mutate(outcome=as.double(outcome=='event')) %>%
  
  # Create multiple thresholds.
  left_join(
    select(.,index) %>%
      filter(!duplicated(.)) %>%
      arrange(index) %>%
      cbind(
        data.frame(
          key=paste0('th_',str_pad(0:100,3,'left','0'))
          ,value=seq(0,1,len=101)
        ) %>%
          spread(key,value)
      )
    ,by='index'
  ) %>%
  
  # Compute confusion matrix.
  gather(key,th,-subset,-index,-score,-outcome) %>%
  select(-key) %>%
  mutate(pred=as.integer(score>th)) %>%
  mutate(
    tp=as.integer(outcome==1 & pred==1)
    ,fn=as.integer(outcome==1 & pred==0)
    ,fp=as.integer(outcome==0 & pred==1)
    ,tn=as.integer(outcome==0 & pred==0)
  ) %>%
  select(-index,-score,-outcome,-pred) %>%
  group_by(subset,th) %>%
  summarize_all(sum) %>%
  ungroup() %>%
  
  # Compute evaluation metrics.
  mutate(
    tpr=tp/(tp+fn+1e-17)
    ,tnr=tn/(tn+fp+1e-17)
    ,ppv=tp/(tp+fp+1e-17)
    ,npv=tn/(tn+fn+1e-17)
  ) %>%
  select(-subset,-tp,-fn,-fp,-tn) %>%
  
  # Compute ROC components.
  group_by(th) %>%
  summarize_all(function(x){
    y=mean(x)+(-1:1)*qnorm(0.975)*sd(x)/sqrt(length(x))
    paste0(y,collapse='|')
  }) %>%
  gather(metric,interval,-th) %>%
  separate(interval,c('lb','avg','ub'),sep='\\|') %>%
  mutate_at(c('lb','avg','ub'),as.numeric) %>%
  mutate_at(c('lb','avg','ub'),function(x){
    round(ifelse(x<0,0,ifelse(x>1,1,x)),4)
  }) %>%
  
  # Save the ROC table.
  saveRDS('data/classification.rds')

# Prediction table
modeling_divnn$ontonet %>%
  
  # Use calibration split for classification.
  predict_generator(
    generator=
      generator.ontoarray(
        test_data$calib
        ,seq(ncol(test_data$calib))
        ,batch_size=512
      )
    ,steps=ceiling(ncol(test_data$calib)/512)
    ,verbose=1
  ) %>%
  setNames(
    modeling_divnn$history$metrics %>%
      names() %>%
      .[str_detect(.,'val_')
        &str_detect(.,'_loss')
        &str_detect(.,'ONT|root')] %>%
      str_remove_all('val_|_loss')
  ) %>%
  lapply(function(y){
    y[seq(ncol(test_data$calib)),,drop=F]
  }) %>%
  c(list(outcome=test_data$calib$outcome)) %>%
  as.data.frame() %>%
  select(root,outcome) %>%
  rename(event=root) %>%
  mutate(nonevent=event) %>%
  select(nonevent,everything()) %>%
  `rownames<-`(colnames(test_data$calib)) %>%
  
  # Get the calibrated, predicted probability.
  cbind(
    suppressWarnings(predict(calib_model$divnn,newdata=.,type='prob')) %>%
      rename_all(function(x)paste0(x,'2'))
  ) %>%
  select(-nonevent,-event) %>%
  rename_all(function(x)str_remove_all(x,'2')) %>%
  select(event) %>%
  
  # Save the prediction table.
  saveRDS('data/prediction.rds')
################################################################################



################################################################################
##### Show training samples with the best predictions ##########################
pw_hlin %>%
  
  # Select true classification in estimation data of calibration split.
  .[,eval_timing_model$divnn$timing_calib %>%
      select(-timing,-timing_pred) %>%
      cbind(
        eval_timing_model$pc_rf$timing_calib %>%
          select(timing,timing_pred)
      ) %>%
      rownames_to_column(var='id') %>%
      filter(as.integer(calib_pred=='event')==outcome) %>%
      arrange(timing_pred) %>%
      pull(id)
  ] %>%
  
  # Get the phenotype and protocol data.
  lapply(X=1,Y=.,function(X,Y){
    Z=phenoData(Y) %>%
      pData()
    K=protocolData(Y) %>%
      pData()
    Z %>%
      rownames_to_column(var='id') %>%
      left_join(
        K %>%
          rownames_to_column(var='id')
        ,by='id'
      )
  }) %>%
  .[[1]] %>%
  select(-outcome) %>%
  
  # Join the estimation data of calibration split with true classification 
  # to the previous data.
  left_join(
    eval_timing_model$divnn$timing_calib %>%
      select(-timing,-timing_pred) %>%
      cbind(
        eval_timing_model$pc_rf$timing_calib %>%
          select(timing,timing_pred)
      ) %>%
      rownames_to_column(var='id') %>%
      filter(as.integer(calib_pred=='event')==outcome) %>%
      arrange(timing_pred)
    ,by='id'
  ) %>%
  
  # Convert the estimation results as week.
  mutate(timing_pred=round(timing_pred/7),timing=round(timing/7)) %>%
  
  # Join the estimation results based on the classification.
  left_join(
    eval_timing_model_plt  %>%
      filter(
        model=='pc_rf' & set=='timing_calib' & metric_name=='calib_pred'
      ) %>%
      rename(calib_pred=metric) %>%
      ungroup() %>%
      select(calib_pred,timing_pred,lb,ub) %>%
      mutate(
        fall_into_interval=
          timing_pred>=lb & timing_pred<=ub & abs(ub-lb)<=timing_pred
        & lb<=42 & ub<=42
        ,fall_into_interval=
          ifelse(is.na(fall_into_interval),FALSE,fall_into_interval)
      ) %>%
      select(calib_pred,timing_pred,fall_into_interval)
    ,by=c('calib_pred','timing_pred')
  ) %>%
  
  # Identify the estimation results that fall into the true interval.
  filter(fall_into_interval) %>%
  
  # By manual inspection, define the optimum estimation period 
  # for each predicted outcome.
  filter(
    (calib_pred=='nonevent' & timing_pred>=9 & timing_pred<=34)
    |
      (calib_pred=='event' & timing_pred>=6 & timing_pred<=26)
  ) %>%
  
  # Get the estimation results that have error less than 6 weeks 
  # for predicted time of delivery between 6 and 26 weeks' gestation.
  filter(abs(timing_pred-timing)<=6 & timing_pred>6 & timing_pred<26) %>%
  select(
    subject_id
    ,healthcare_id
    ,admission_date
    ,outcome
    ,pred
    ,calib_pred
    ,timing
    ,timing_pred
    ,everything()
  ) %>%
  
  # Save these training examples with the best predictions.
  saveRDS('data/subject_examples.rds')
################################################################################



################################################################################
##### Create individual ontoarray extractor function ###########################
source('R/ontoarray1-function.R')
################################################################################



################################################################################
##### Create alternative example 2 #############################################
app$subject_id='63230897.1'
app$healthcare_id='001924'


app$raw_visit=
  readRDS('data/target_visits.rds') %>%
  filter(subject_id==app$subject_id & healthcare_id==app$healthcare_id) %>%
  select(admission_date,code)

app$prediction_date=as.Date('2016-09-01')

app$raw_visit %>%
  filter(admission_date<=app$prediction_date) %>%
  write_csv('data/example2.csv')
################################################################################



################################################################################
##### Create alternative example 3 #############################################
app$subject_id='12843776.1'
app$healthcare_id='195276'


app$raw_visit=
  readRDS('data/target_visits.rds') %>%
  filter(subject_id==app$subject_id & healthcare_id==app$healthcare_id) %>%
  select(admission_date,code)

app$prediction_date=as.Date('2015-08-29')

app$raw_visit %>%
  filter(admission_date<=app$prediction_date) %>%
  write_csv('data/example3.csv')
################################################################################



################################################################################
##### Create alternative example 4 #############################################
app$subject_id='32331648.1'
app$healthcare_id='192469'


app$raw_visit=
  readRDS('data/target_visits.rds') %>%
  filter(subject_id==app$subject_id & healthcare_id==app$healthcare_id) %>%
  select(admission_date,code)

app$prediction_date=as.Date('2016-09-23')

app$raw_visit %>%
  filter(admission_date<=app$prediction_date) %>%
  write_csv('data/example4.csv')
################################################################################



################################################################################
##### Create alternative example 5 #############################################
app$subject_id='53312440.1'
app$healthcare_id='212823'


app$raw_visit=
  readRDS('data/target_visits.rds') %>%
  filter(subject_id==app$subject_id & healthcare_id==app$healthcare_id) %>%
  select(admission_date,code)

app$prediction_date=as.Date('2016-06-03')

app$raw_visit %>%
  filter(admission_date<=app$prediction_date) %>%
  write_csv('data/example5.csv')
################################################################################



################################################################################
##### Create alternative example 6 #############################################
app$subject_id='102366639.1'
app$healthcare_id='141404'


app$raw_visit=
  readRDS('data/target_visits.rds') %>%
  filter(subject_id==app$subject_id & healthcare_id==app$healthcare_id) %>%
  select(admission_date,code)

app$prediction_date=as.Date('2016-08-24')

app$raw_visit %>%
  filter(admission_date<=app$prediction_date) %>%
  write_csv('data/example6.csv')
################################################################################



################################################################################
##### Input example for the app ################################################
app=list()

app$subject_id='51160204.1'
app$healthcare_id='051103'

app$raw_visit=
  readRDS('data/target_visits.rds') %>%
  filter(subject_id==app$subject_id & healthcare_id==app$healthcare_id) %>%
  select(admission_date,code)

app$prediction_date=as.Date('2016-07-30')
################################################################################



################################################################################
##### Save an input example as csv, eval=FALSE #################################
app$raw_visit %>%
  filter(admission_date<=app$prediction_date) %>%
  write_csv('data/example.csv')
################################################################################



################################################################################
##### Processing codes at the server side ######################################
if(run_heavy_computation){
  cat('Start',as.character(now()),'\n')
  
  # Create null input if no positive features are found.
  app$input0=
    readRDS('data/features.rds') %>%
    mutate(I1=NA) %>%
    select(-regex) %>%
    column_to_rownames(var='features')
  
  if(nrow(app$raw_visit)==0){
    # Use the null input if no visit.
    app$input=app$input0
  }else{
    # Filter visit up to the current date (the prediction date).
    app$visit_up_to_current=
      app$raw_visit %>%
      filter(admission_date<=app$prediction_date)
    
    if(nrow(app$visit_up_to_current)==0){
      # Use the null input if no visit up to the current date.
      app$input=app$input0
    }else{
      # Only use the latest encounter for each code.
      app$visit_latest_enc=
        app$visit_up_to_current %>%
        group_by(code) %>%
        filter(admission_date==max(admission_date)) %>%
        ungroup()
      
      # Only use the codes for the features.
      app$visit_with_features=
        app$visit_latest_enc %>%
        filter(
          code
          %in%(
            readRDS('data/features.rds')$features %>%
              .[!str_detect(.,'causal_')]
          )
          |
            str_detect(
              code
              ,paste0(
                readRDS('data/features.rds')$regex %>%
                  .[str_detect(readRDS('data/features.rds')$features,'causal_')]
                ,collapse='|'
              )
            )
        )
      
      if(nrow(app$visit_with_features)==0){
        # Use the null input if no positive features are found.
        app$input=app$input0
      }else{
        # Create the input dataframe with the positive features.
        app$input=
          readRDS('data/features.rds') %>%
          sapply(X=seq(nrow(.)),Y=.,Z=app$visit_with_features,function(X,Y,Z){
            if(str_detect(Y$features[X],'causal_')){
              K=Z %>%
                filter(str_detect(str_to_upper(code),Y$regex[X]))
            }else{
              K=Z %>%
                filter(code==Y$regex[X])
            }
            if(nrow(K)==0){
              NA
            }else{
              as.duration(app$prediction_date-max(K$admission_date))/ddays(1)
            }
          }) %>%
          setNames(readRDS('data/features.rds')$features) %>%
          data.frame(I1=.)
      }
    }
  }
  
  # Transform into historical rates.
  app$hlin=
    ExpressionSet(
      assayData=
        app$input %>%
        as.matrix()
      ,phenoData=
        data.frame(outcome=NA,row.names='I1') %>%
        AnnotatedDataFrame()
      ,featureData=
        readRDS('data/features.rds') %>%
        column_to_rownames(var='features') %>%
        AnnotatedDataFrame()
    ) %>%
    trans_hist_rate(
      hist_rate=readRDS('data/hist_rates.rds')
      ,interpolation='linear'
      ,verbose=T
    )
  
  # Transform into PCs.
  app$pc=
    app$hlin %>%
    transformation(
      rsdr_object=readRDS('data/pw_int_rsdr.rds')
      ,dimensions=as.integer(str_remove_all(readRDS('data/pcs.rds'),'[:alpha:]'))
      ,output_dim=readRDS('data/pcs.rds')
      ,verbose=T
    )
  
  # Estimate the time of delivery.
  app$estimation=
    app$pc %>%
    exprs() %>%
    t() %>%
    as.data.frame() %>%
    predict(readRDS('data/small_timing_pc_rf.rds'),newdata=.)
  
  # Compile a tidy set.
  app$tidyset=
    test_transformer(
      test_data=app$hlin
      ,SGD1bit_fit=readRDS('data/input.rds')$fit
      ,similarity=readRDS('data/input.rds')$similarity
      ,mapping=readRDS('data/input.rds')$mapping
      ,ontology=readRDS('data/input.rds')$ontology
      ,ranked=T
      ,dims=7
      ,decreasing=F
      ,seed_num=33
    ) %>%
    `colnames<-`('I1')
  
  # Save a single tidy set 
  # for reducing time of the compiling process.
  saveRDS(app$tidyset,'data/single_tidyset.rds')
  
  # Calling DI-VNN.
  cat('Calling DI-VNN\n')
  refresh_session()
  app$ontonet=
    readRDS('data/output.rds') %>%
    generator.ontonet(l2_norm=0.1) %>%
    load_model_weights_hdf5('data/ontonet.h5') %>%
    compile(
      optimizer=optimizer_sgd(
        lr=readRDS('data/modeling_divnn.rds')$history$metrics$lr %>%
          .[which.max(
            readRDS('data/modeling_divnn.rds')$history$metrics$val_root_roc
          )]
        ,momentum=0.9
      )
      ,loss='mean_squared_error'
      ,loss_weights=c(rep(
        0.3/(0.3*(length(.$outputs)-1)+1),length(.$outputs)-1)
        ,1/(0.3*(length(.$outputs)-1)+1)
      )
      ,metrics=c(
        tf$keras$metrics$AUC(name='roc')
        ,tf$keras$metrics$TruePositives(name='tp')
        ,tf$keras$metrics$FalseNegatives(name='fn')
        ,tf$keras$metrics$FalsePositives(name='fp')
        ,tf$keras$metrics$TrueNegatives(name='tn')
      )
    )
  
  # Save the ontonet architecture, weights, and optimizer.
  save_model_hdf5(app$ontonet,'data/entire_ontonet.h5')
  
  # Compute prediction.
  cat('Compute prediction\n')
  app$outputs=
    app$ontonet %>%
    predict_on_batch(
      generator.ontoarray(
        app$tidyset
        ,seq(ncol(app$tidyset))
        ,batch_size=1
      )()[[1]]
    ) %>%
    lapply(as.array) %>%
    setNames(
      readRDS('data/modeling_divnn.rds')$history$metrics %>%
        names() %>%
        .[str_detect(.,'val_')
          &str_detect(.,'_loss')
          &str_detect(.,'ONT|root')] %>%
        str_remove_all('val_|_loss')
    ) %>%
    as.data.frame()
  
  # Calibrate prediction.
  cat('Calibrate prediction\n')
  app$prediction=
    app$outputs %>%
    select(root) %>%
    rename(event=root) %>%
    mutate(nonevent=event) %>%
    select(nonevent,everything()) %>%
    `rownames<-`(colnames(app$tidyset)) %>%
    cbind(
      suppressWarnings(
        predict(readRDS('data/small_calib_divnn.rds'),newdata=.,type='prob')
      ) %>%
        rename_all(function(x)paste0(x,'2'))
    ) %>%
    select(-nonevent,-event) %>%
    rename_all(function(x)str_remove_all(x,'2')) %>%
    select(event) %>%
    `rownames<-`(colnames(app$tidyset)) %>%
    pull(event)
  
  # Retrieve internal properties.
  cat('Retrieve internal properties\n')
  app$ontoarray=
    app$tidyset %>%
    ontoarray1(app$ontonet,1)
  
  cat('End',as.character(now()),'\n')
  
  saveRDS(app,'data/app.rds')
}else{
  cat(readRDS('data/log.rds')[['app']])
  app=readRDS('data/app.rds')
}
################################################################################



################################################################################
##### Post-processing codes at the server side #################################
# Create an empty list to save the results.
results=list()

# Since the prediction is positive, 
# use this precise threshold (the best positive predictive value).
app$threshold=0.67

# Construct estimation table based on the prediction.
estimation=
  cbind(
    readRDS('data/eval_timing_pc_rf.rds')$timing_calib %>%
      select(timing,outcome,timing_pred)
    ,readRDS('data/eval_timing_divnn.rds')$timing_calib %>%
      select(pred)
    ,readRDS('data/prediction.rds') %>%
      mutate(event=as.integer(event>app$threshold)) %>%
      mutate(
        event=
          ifelse(event==1,'event','nonevent') %>%
          factor(c('nonevent','event'))
      ) %>%
      `rownames<-`(colnames(readRDS('data/test_data.rds')$calib)) %>%
      rename(calib_pred=event)
  ) %>%
  select_at(colnames(readRDS('data/eval_timing_pc_rf.rds')$timing_calib)) %>%
  select(calib_pred,timing_pred,timing) %>%
  filter(timing_pred>0) %>%
  mutate(timing_pred=round(timing_pred/7)) %>%
  group_by(calib_pred,timing_pred) %>%
  summarize(
    avg=mean(timing/7)
    ,lb=mean(timing/7)-qnorm(0.975)*sd(timing/7)/sqrt(n())
    ,ub=mean(timing/7)+qnorm(0.975)*sd(timing/7)/sqrt(n())
  )

# Get population-level estimate using calibration split 
# in which the subjects have the same prediction and estimated week.
app$est_timing=
  estimation %>%
  filter(
    calib_pred==ifelse(app$prediction>app$threshold,'event','nonevent')
    & timing_pred==round(app$estimation/7)
  )

# Manually inspect the prediction output.
readRDS('data/prediction.rds') %>%
  mutate(event=as.integer(event>app$threshold))

# Create a dataframe for the result conclusion.
results$main=
  c(prediction=ifelse(app$prediction>app$threshold,'event','nonevent')
    ,estimation=round(app$estimation/7)) %>%
  data.frame(result=.)
################################################################################



################################################################################
##### Draw the timeline of the input example ###################################
# Construct the timeline table
results$timeline_data=
  app$input %>%
  filter(!is.na(I1)) %>%
  rownames_to_column(var='feature') %>%
  rename(days_to_current=I1) %>%
  mutate(admission_date=app$prediction_date-days_to_current) %>%
  inner_join(
    app$ontoarray$representation %>%
      app$ontoarray$ontotable()
    ,by='feature'
  ) %>%
  arrange(fill) %>%
  mutate(level=seq(nrow(.))) %>%
  select(admission_date,fill,level,ontology,feature)

# Plot the timeline.
results$timeline=
  
  # Plot by the encounter date and the rank of values.
  results$timeline_data %>%
  ggplot(aes(admission_date,level),data=.) +
  
  # Give larger space for plotting.
  geom_blank(
    data=
      data.frame(
        admission_date=
          c(app$input %>%
              filter(!is.na(I1)) %>%
              rownames_to_column(var='feature') %>%
              rename(days_to_current=I1) %>%
              mutate(admission_date=app$prediction_date-days_to_current-56) %>%
              inner_join(
                app$ontoarray$representation %>%
                  app$ontoarray$ontotable()
                ,by='feature'
              ) %>%
              pull(admission_date) %>%
              min()
            ,app$prediction_date+round(app$est_timing$ub*7)+3)
        ,level=0
      )
  ) +
  
  # Shade period of the population-level, estimated time of delivery.
  geom_rect(
    data=
      app$est_timing %>%
      mutate(
        admission_date=app$prediction_date
        ,level=
          app$input %>%
          filter(!is.na(I1)) %>%
          rownames_to_column(var='feature') %>%
          rename(days_to_current=I1) %>%
          mutate(admission_date=app$prediction_date-days_to_current) %>%
          inner_join(
            app$ontoarray$representation %>%
              app$ontoarray$ontotable()
            ,by='feature'
          ) %>%
          arrange(abs(fill)) %>%
          mutate(level=seq(nrow(.))) %>%
          pull(level) %>%
          abs() %>%
          max()
      )
    ,aes(
      xmin=admission_date+round(lb*7)
      ,xmax=admission_date+round(ub*7)
      ,ymin=0
      ,ymax=level
    )
    ,fill=ifelse(app$prediction>app$threshold,'#00A087FF','#E64B35FF')
    ,alpha=0.5,lty=2,na.rm=T
  ) +
  
  # Plot the medical histories as label geometry.
  geom_label(
    aes(
      label=paste0(ontology,':',feature)
      ,fill=ifelse(fill>=0,'Positive','Negative')
    )
    ,label.padding=unit(0.1,'lines')
    ,hjust=1.2
    ,vjust=0.5
    ,size=3
    ,alpha=0.5
    ,show.legend=F
  ) +
  geom_text(
    label='\u25BA'
    ,aes(color=ifelse(fill>=0,'Positive','Negative'))
    ,size=3
  ) +
  
  # Draw a line for the prediction date.
  geom_vline(xintercept=app$prediction_date,lty=2) +
  
  # Annotate the prediction date.
  annotate(
    geom='text'
    ,x=app$prediction_date,y=0
    ,label=
      paste0(
        'Time of prediction: '
        ,app$prediction_date
      )
    ,hjust=0,vjust=1.1,angle=90,size=3
  ) +
  
  # Draw a line for the estimated date of delivery.
  geom_vline(xintercept=app$prediction_date+round(app$estimation),lty=2) +
  
  # Annotate the predicted time of delivery and the prediction.
  annotate(
    geom='text'
    ,x=app$prediction_date+round(app$estimation),y=0
    ,label=
      paste0(
        'Predicted time of delivery: '
        ,app$prediction_date+round(app$estimation)
        ,'\n'
        ,'Prediction: '
        ,ifelse(
          app$prediction>app$threshold
          ,'Prelabor rupture of membranes (PROM)'
          ,'NOT Prelabor rupture of membranes (PROM)'
        )
      )
    ,hjust=0,vjust=1.1,angle=90,size=3
  ) +
  
  # Customize plot.
  theme_blank() +
  theme(
    axis.line.x=element_line()
    ,axis.ticks.x=element_line()
    ,axis.text.x=element_text(size=8)
    ,legend.title=element_text(size=10)
    ,legend.position='top'
  ) +
  scale_x_date(
    date_breaks='1 month'
    ,date_minor_breaks='1 week'
    ,date_labels='%b'
  ) +
  scale_color_manual('Output',values=c('#E64B35FF','#00A087FF')) +
  scale_fill_manual('Output',values=c('#E64B35FF','#00A087FF')) +
  theme(title=element_text(size=unit(8,'pt'),face='bold')) +
  ggtitle('Timeline')
################################################################################



################################################################################
##### Create individual ontology network and array #############################
source('R/ontoproperties1-function.R')
################################################################################



################################################################################
##### Population-level performances of the input example #######################
# Construct a dataframe containing population-level evaluation metrics.
results$pop_est_data=
  
  # Combine ROC and estimation table.
  rbind(
    readRDS('data/classification.rds') %>%
      filter(th==app$threshold)
    ,estimation %>%
      filter(
        calib_pred==ifelse(app$prediction>app$threshold,'event','nonevent')
        & timing_pred==round(app$estimation/7)
      ) %>%
      rename(th=calib_pred,metric=timing_pred) %>%
      mutate(th=app$threshold,metric='timing')
  ) %>%
  select(-th) %>%
  
  # Wrap up.
  mutate(
    avg=round(avg,ifelse(metric=='timing',0,3))
    ,lb=round(lb,ifelse(metric=='timing',0,3))
    ,ub=round(ub,ifelse(metric=='timing',0,3))
    ,metric=ifelse(metric=='timing',str_to_title(metric),str_to_upper(metric))
    ,metric=ifelse(metric=='TPR','Sensitivity',metric)
    ,metric=ifelse(metric=='TNR','Specificity',metric)
    ,metric=ifelse(metric=='PPV','Positive Predictive Value',metric)
    ,metric=ifelse(metric=='NPV','Negative Predictive Value',metric)
  ) %>%
  mutate(
    value=paste0(avg,' (95% CI ',lb,' to ',ub,')')
  ) %>%
  select(-lb,-avg,-ub) %>%
  mutate_all(as.character) %>%
  rename_all(str_to_title) %>%
  
  # Create a table for plotting the previous table.
  rbind(
    data.frame(colnames=colnames(.)) %>%
      mutate(value=colnames) %>%
      spread(colnames,value)
  ) %>%
  .[c(nrow(.),1:(nrow(.)-1)),] %>%
  mutate(row=seq(nrow(.))) %>%
  setNames(c(seq(ncol(.))[1:(ncol(.)-1)],'row')) %>%
  gather(column,value,-row) %>%
  mutate_at('column',as.integer) %>%
  mutate(column=ifelse(column>1,column+0.1,column))

# Transform the table as a plot.
results$pop_est=
  results$pop_est_data %>%
  ggplot(aes(x=column,y=row)) +
  geom_blank(data=data.frame(column=3.25,row=7)) +
  geom_hline(yintercept=c(0.8,1.8,7)) +
  geom_text(aes(label=value),hjust=0,vjust=1,size=3) +
  scale_y_reverse() +
  theme_blank() +
  theme(title=element_text(size=unit(8,'pt'),face='bold')) +
  ggtitle('Population-level performances')
################################################################################



################################################################################
##### Save identity and results of example #####################################
results$identity_results=
  data.frame(
    row=1:6
    ,column=rep(1,6)
    ,text=
      c(paste0('Name: ','____________________________',' Age: _________')
        ,paste0(
          'Input: '
          ,app$raw_visit %>%
            filter(admission_date<=app$prediction_date) %>%
            pull(admission_date) %>%
            unique() %>%
            length()
          ,' visits consisting '
          ,app$raw_visit %>%
            filter(admission_date<=app$prediction_date) %>%
            nrow()
          ,' code entries'
        )
        ,paste0(
          'Time of prediction: '
          ,app$prediction_date
        )
        ,paste0(
          'Estimated time of delivery: '
          ,app$prediction_date+round(app$estimation)
        )
        ,paste0(
          'Predicted outcome: '
          ,ifelse(
            app$prediction>app$threshold
            ,'Prelabor rupture of membranes (PROM)'
            ,'NOT Prelabor rupture of membranes (PROM)'
          )
        )
        ,paste0(
          'Predicted probability: ',round(app$prediction,3)
          ,' (threshold=',app$threshold,')'
        )
      )
  )
################################################################################









################################################################################
# Result
################################################################################



################################################################################
##### Prepare data for Figure 1 of the main text ###############################
# Create an empty list to save the results.
ovl=list()

# Instance summary by pregnancy status
ovl$pregnancy=
  readRDS('data/pregnancy_status.rds') %>%
  select(subject_id,gestation) %>%
  filter(!duplicated(.)) %>%
  group_by(gestation) %>%
  summarize(n=n(),.groups='drop') %>%
  mutate(p=n/sum(n)) %>%
  left_join(
    readRDS('data/pregnancy_status.rds') %>%
      separate(subject_id,c('subject_id','gestation_n'),sep='\\.') %>%
      select(subject_id,gestation) %>%
      filter(!duplicated(.)) %>%
      group_by(gestation) %>%
      summarize(n2=n(),.groups='drop') %>%
      mutate(p2=n2/sum(n2))
    ,by='gestation'
  )

# Subjects in re-calibration set
ovl$a=
  pw_hlin %>%
  .[,!pData(phenoData(.))$censoring] %>%
  .[,pData(protocolData(.))$int] %>%
  .[,colnames(.)%in%training_parameters$pre_calib_set] %>%
  protocolData() %>%
  pData() %>%
  pull(subject_id)

# Subjects in calibration set
ovl$b=
  pw_hlin %>%
  .[,!pData(phenoData(.))$censoring] %>%
  .[,pData(protocolData(.))$int] %>%
  .[,!colnames(.)%in%training_parameters$pre_calib_set] %>%
  protocolData() %>%
  pData() %>%
  pull(subject_id)

# Subjects in random set
ovl$c=
  pw_hlin %>%
  .[,!pData(phenoData(.))$censoring] %>%
  .[,pData(protocolData(.))$ran] %>%
  protocolData() %>%
  pData() %>%
  pull(subject_id)

# Create a function to overlap among three groups.
ovl$func=function(a,b,c,na=NULL,nb=NULL,nc=NULL){
  abc=a %>% intersect(b) %>% intersect(c)
  ab=a %>% intersect(b) %>% setdiff(abc)
  bc=b %>% intersect(c) %>% setdiff(abc)
  ac=a %>% intersect(c) %>% setdiff(abc)
  a=a %>% setdiff(c(ab,abc,ac))
  b=b %>% setdiff(c(ab,abc,bc))
  c=c %>% setdiff(c(ac,abc,bc))
  output=
    c(abc=length(abc)
      ,ab=length(ab)
      ,bc=length(bc)
      ,ac=length(ac)
      ,a=length(a)
      ,b=length(b)
      ,c=length(c)) %>%
    setNames(
      c(paste(na,'\u2229',nb,'\u2229',nc)
        ,paste(na,'\u2229',nb,'-',na,'\u2229',nb,'\u2229',nc)
        ,paste(nb,'\u2229',nc,'-',na,'\u2229',nb,'\u2229',nc)
        ,paste(na,'\u2229',nc,'-',na,'\u2229',nb,'\u2229',nc)
        ,paste(na,'-',na,'\u222A',nb,'\u222A',nc)
        ,paste(nb,'-',na,'\u222A',nb,'\u222A',nc)
        ,paste(nc,'-',na,'\u222A',nb,'\u222A',nc)
      )
    )
  paste(names(output),'=',formatC(output,big.mark=','))
}

# Visit table of outcome and censoring summary
ovl$d=
  cf_nw_int_bin %>%
  phenoData() %>%
  pData() %>%
  select(outcome,censoring) %>%
  table(visits=.)

# Subject table of outcome and censoring summary
ovl$e=
  cf_nw_int_bin %>%
  phenoData() %>%
  pData() %>%
  select(outcome,censoring) %>%
  cbind(
    cf_nw_int_bin %>%
      protocolData() %>%
      pData() %>%
      select(subject_id)
  ) %>%
  filter(!duplicated(.)) %>%
  select(outcome,censoring) %>%
  table(subjects=.)

# Compile into one table.
ovl$f=
  
  # Step-by-step summary for visit/subject selection
  readRDS('data/selection.rds') %>%
  setNames(c('set','exc_v_total','v_total','exc_s_total','s_total')) %>%
  mutate(v_nonevent=NA,v_event=NA,s_nonevent=NA,s_event=NA,note=NA,p=NA) %>%
  select(
    set,v_nonevent,v_event,v_total,s_nonevent,s_event,s_total
    ,note,p,everything()
  ) %>%
  mutate(
    note=case_when(
      set=='up to the latest date for uncensored and split if >1 pregnancies'
      ~'a,b,c'
      ,TRUE~'NA'
    )
  ) %>%
  
  # Summary of the visits/subjects by subset
  rbind(
    
    # Visit summary
    pw_hlin %>%
      
      # Summarize censoring.
      .[,pData(phenoData(.))$censoring] %>%
      ncol() %>%
      `names<-`('censoring') %>%
      data.frame(total=.) %>%
      rownames_to_column(var='set') %>%
      mutate(nonevent=NA,event=NA) %>%
      select(set,nonevent,event,everything()) %>%
      
      # Summarize all subsets.
      rbind(
        pw_hlin %>%
          .[,!pData(phenoData(.))$censoring] %>%
          .[,pData(protocolData(.))$int] %>%
          .[,colnames(.)%in%training_parameters$pre_calib_set] %>%
          sapply(X=1,Y=.,function(X,Y)table(Y$outcome)) %>%
          `colnames<-`('precalib') %>%
          cbind(sapply(test_data,function(x)table(x$outcome))) %>%
          t() %>%
          as.data.frame() %>%
          rownames_to_column(var='set') %>%
          mutate(total=nonevent+event)
      ) %>%
      setNames(c('set',paste0('v_',colnames(.)[-1]))) %>%
      
      # Subject summary
      left_join(
        pw_hlin %>%
          
          # Summarize censoring.
          .[,pData(phenoData(.))$censoring] %>%
          protocolData() %>%
          pData() %>%
          select(subject_id) %>%
          filter(!duplicated(.)) %>%
          nrow() %>%
          `names<-`('censoring') %>%
          data.frame(total=.) %>%
          rownames_to_column(var='set') %>%
          mutate(nonevent=NA,event=NA) %>%
          select(set,nonevent,event,everything()) %>%
          
          # Summarize all subsets.
          rbind(
            lapply(X=c('precalib','calib','ran','geo','tem','bgt')
                   ,Y=pw_hlin %>% .[,!pData(phenoData(.))$censoring]
                   ,function(X,Y){
                     
                     if(X=='precalib'){
                       Z=Y %>%
                         .[,pData(protocolData(.))$int] %>%
                         .[,colnames(.)%in%training_parameters$pre_calib_set]
                     }else if(X=='calib'){
                       Z=Y %>%
                         .[,pData(protocolData(.))$int] %>%
                         .[,!colnames(.)%in%training_parameters$pre_calib_set]
                     }else{
                       Z=Y %>%
                         .[,pData(protocolData(.))[[X]]]
                     }
                     Z %>%
                       lapply(X=1,Y=.,function(X,Y){
                         Y %>%
                           phenoData() %>%
                           pData() %>%
                           select(outcome) %>%
                           cbind(
                             Y %>%
                               protocolData() %>%
                               pData() %>%
                               select(subject_id)
                           )
                       }) %>%
                       .[[1]] %>%
                       filter(!duplicated(.)) %>%
                       pull(outcome) %>%
                       table(precalib=.) %>%
                       as.data.frame() %>%
                       spread(precalib,Freq) %>%
                       mutate(set=X) %>%
                       select(set,everything())
                     
                   }) %>%
              do.call(rbind,.) %>%
              mutate(total=nonevent+event)
          ) %>%
          setNames(c('set',paste0('s_',colnames(.)[-1])))
        ,by='set'
      ) %>%
      
      # Annotate each subset for the footnote.
      mutate(
        note=case_when(
          set=='precalib'~'d,e,h'
          ,set=='calib'~'d,f,i'
          ,set=='ran'~'d,g,j'
          ,TRUE~'NA'
        )
      ) %>%
      mutate(p=s_event/s_total) %>%
      mutate(exc_v_total=NA,exc_s_total=NA)
  )
################################################################################



################################################################################
## Association diagram
################################################################################



################################################################################
##### Prepare causal inference table ###########################################
cauinf_tab=
  # Get causal inference results.
  rbind(
    
    # Causal inference table by outcome regression
    dag$coef %>%
      lapply(X=seq(length(.)),Y=.,function(X,Y){
        Y[[X]] %>%
          filter(term!='(Intercept)') %>%
          slice(1) %>%
          mutate(
            code=term
            ,marginal_effect=OR
            ,lb=OR_lb
            ,ub=OR_ub
            ,sig=ifelse(p.value<0.05,'*','')
          ) %>%
          select(code,marginal_effect,lb,ub,sig)
      }) %>%
      do.call(rbind,.) %>%
      mutate(method='Outcome regression')
    
    # Causal inference table by IPW
    ,dag$ipw %>%
      lapply(X=seq(length(.)),Y=.,function(X,Y){
        data.frame(
          code=names(Y)[X]
          ,marginal_effect=exp(Y[[X]]$marginal_effect)
          ,lb=exp(Y[[X]]$CI95_interval['LB'])
          ,ub=exp(Y[[X]]$CI95_interval['UB'])
          ,sig=ifelse(Y[[X]]$p_value<0.05,'*','')
        ) %>%
          `rownames<-`(NULL)
      }) %>%
      do.call(rbind,.) %>%
      mutate(method='Inverse probability weighting (IPW)')
    
  ) %>%
  
  # Include the description of the causal factors.
  left_join(
    dag$baseline_nodes %>%
      rename(code=label) %>%
      mutate(factor=paste(code,name)) %>%
      select(factor,code)
    ,by='code'
  ) %>%
  select(-code) %>%
  
  # Wrap up.
  select(method,factor,everything()) %>%
  mutate_at(c('marginal_effect','lb','ub'),round,3) %>%
  mutate(effect=paste0(marginal_effect,' (95% CI ',lb,' to ',ub,')',sig)) %>%
  select(-marginal_effect,-lb,-ub,-sig) %>%
  spread(method,effect) %>%
  select(factor,`Outcome regression`,everything()) %>%
  mutate(factor=sapply(X=factor,function(X)str_sub(X,5,str_count(X)))) %>%
  rename(`Causal factor`=factor)
################################################################################









################################################################################
## Prognostic prediction of premature rupture of membranes
################################################################################



################################################################################
##### Compute ROC ##############################################################
roc=
  
  # Create ROC table per model.
  calib_model %>%
  lapply(X=names(.),Y=.,function(X,Y){
    Y[[X]]$pred %>%
      
      # Get the prediction table.
      select(Resample,rowIndex,event,obs) %>%
      setNames(c('subset','index','score','outcome')) %>%
      
      # Preprocess the table.
      mutate(outcome=as.double(outcome=='event')) %>%
      left_join(
        select(.,index) %>%
          filter(!duplicated(.)) %>%
          arrange(index) %>%
          cbind(
            data.frame(
              key=paste0('th_',str_pad(0:100,3,'left','0'))
              ,value=seq(0,1,len=101)
            ) %>%
              spread(key,value)
          )
        ,by='index'
      ) %>%
      gather(key,th,-subset,-index,-score,-outcome) %>%
      select(-key) %>%
      
      # Compute confusion matrices.
      mutate(pred=as.integer(score>th)) %>%
      mutate(
        tp=as.integer(outcome==1 & pred==1)
        ,fn=as.integer(outcome==1 & pred==0)
        ,fp=as.integer(outcome==0 & pred==1)
        ,tn=as.integer(outcome==0 & pred==0)
      ) %>%
      select(-index,-score,-outcome,-pred) %>%
      group_by(subset,th) %>%
      summarize_all(sum) %>%
      ungroup() %>%
      
      # Compute evaluation metrics.
      mutate(
        tpr=tp/(tp+fn+1e-17)
        ,tnr=tn/(tn+fp+1e-17)
        ,ppv=tp/(tp+fp+1e-17)
        ,npv=tn/(tn+fn+1e-17)
      ) %>%
      select(-subset,-tp,-fn,-fp,-tn) %>%
      group_by(th) %>%
      
      # Compute the interval estimates.
      summarize_all(function(x){
        y=mean(x)+(-1:1)*qnorm(0.975)*sd(x)/sqrt(length(x))
        paste0(y,collapse='|')
      }) %>%
      gather(metric,interval,-th) %>%
      separate(interval,c('lb','avg','ub'),sep='\\|') %>%
      mutate_at(c('lb','avg','ub'),as.numeric) %>%
      mutate_at(c('lb','avg','ub'),function(x){
        round(ifelse(x<0,0,ifelse(x>1,1,x)),4)
      }) %>%
      
      # Wrap up.
      mutate(model=X) %>%
      select(model,everything()) %>%
      gather(bound,value,-th,-metric,-model) %>%
      spread(metric,value)
  }) %>%
  do.call(rbind,.) %>%
  
  # Clean up naming.
  mutate(model=case_when(
    model=='causal_ridge'~'RR'
    ,model=='pc_elnet'~'PC-ENR'
    ,model=='pc_rf'~'PC-RF'
    ,model=='pc_gbm'~'PC-GBM'
    ,model=='divnn'~'DI-VNN'
    ,TRUE~''
  )) %>%
  mutate(
    model=factor(model,c('RR','PC-ENR','PC-RF','PC-GBM','DI-VNN'))
  )

# Get optimum threshold per model.
opt_th=
  roc %>%
  filter(bound=='avg') %>%
  select(model,th,tpr,tnr) %>%
  mutate(avg_acc=(tpr+tnr)/2) %>%
  arrange(model,desc(avg_acc),th,desc(tpr),desc(tnr)) %>%
  group_by(model) %>%
  slice(1) %>%
  ungroup()

# Get sensitive threshold per model.
sens_th=
  roc %>%
  filter(bound=='avg') %>%
  select(model,th,tpr,tnr) %>%
  mutate(tpr=round(tpr,2)) %>%
  right_join(
    expand.grid(model=.$model %>% .[!duplicated(.)],tpr=seq(0,1,len=101))
    ,by=c('model','tpr')
  ) %>%
  arrange(model) %>%
  group_by(model) %>%
  arrange(model,tpr,tnr,th) %>%
  mutate_at(c('tnr','th'),na_interpolation) %>%
  filter(tpr>=0.95) %>%
  slice(1) %>%
  ungroup()

# Get specific threshold per model.
spec_th=
  roc %>%
  filter(bound=='avg') %>%
  select(model,th,tpr,tnr) %>%
  mutate(tnr=round(tnr,2)) %>%
  right_join(
    expand.grid(model=.$model %>% .[!duplicated(.)],tnr=seq(0,1,len=101))
    ,by=c('model','tnr')
  ) %>%
  arrange(model) %>%
  group_by(model) %>%
  arrange(tnr,tpr,th) %>%
  mutate_at(c('tpr','th'),na_interpolation) %>%
  filter(tnr>=0.95) %>%
  slice(1) %>%
  ungroup()
################################################################################



################################################################################
##### Create plot components ###################################################
# Create table for calibration plot of the calibrated models.
calibration_plot_data=
  
  # Compute the interval estimates of true probabilities.
  calib_model %>%
  lapply(X=names(.),Y=.,function(X,Y){
    mutate(
      Y[[X]]$pred
      ,event=round(event,1)
      ,obs=as.integer(obs=='event')
    ) %>%
      group_by(event) %>%
      summarize(
        model=factor(X,names(Y))
        ,obs=mean(obs)
        ,lb=mean(obs)-qnorm(0.975)*sqrt(mean(obs)*(1-mean(obs))/n())
        ,ub=mean(obs)+qnorm(0.975)*sqrt(mean(obs)*(1-mean(obs))/n())
      )
  }) %>%
  do.call(rbind,.) %>%
  
  # Clean up naming.
  mutate(model=case_when(
    model=='causal_ridge'~'RR'
    ,model=='pc_elnet'~'PC-ENR'
    ,model=='pc_rf'~'PC-RF'
    ,model=='pc_gbm'~'PC-GBM'
    ,model=='divnn'~'DI-VNN'
    ,TRUE~''
  )) %>%
  mutate(
    model=factor(model,c('RR','PC-ENR','PC-RF','PC-GBM','DI-VNN'))
  ) %>%
  
  # Compute the calibration measures.
  left_join(
    group_by(.,model) %>%
      do(tidy(lm(obs~event,data=.))) %>%
      mutate(term=str_remove_all(str_to_lower(term),'[:punct:]')) %>%
      mutate(
        avg=estimate
        ,ci=qnorm(0.975)*std.error
      ) %>%
      select(model,term,avg,ci) %>%
      pivot_wider(names_from='term',values_from=c('avg','ci'))
    ,by='model'
  )

# Plot the calibration table.
calibration_plot=
  
  # Plot the table.
  calibration_plot_data %>%
  qplot(event,obs,data=.) +
  geom_linerange(aes(ymin=lb,ymax=ub)) +
  geom_abline(lty=2) +
  
  # Annotate the calibration measures.
  geom_text(
    aes(
      x=0,y=1.3
      ,label=
        ifelse(
          event==0.3
          ,paste0(
            'Intercept ',round(avg_intercept,2)
            ,' ± '
            ,round(ci_intercept,2)
            ,'\n'
            ,'Slope ',round(avg_event,2)
            ,' ± '
            ,round(ci_event,2)
          )
          ,NA
        )
    )
    ,size=3
    ,hjust=0
    ,vjust=1
    ,alpha=1
    ,na.rm=T
  ) +
  
  # Customized plot.
  facet_wrap(~model,ncol=5) +
  coord_equal() +
  scale_x_continuous('Predicted probability',limits=c(0:1)) +
  scale_y_continuous(
    'True probability\n(95% CI)',limits=c(0,1.3),breaks=seq(0,1,0.2)
  ) +
  theme(
    # axis.text.x=element_text(angle=90,vjust=0.5,hjust=1)
    axis.ticks.x=element_blank()
    ,axis.text.x=element_blank()
    ,axis.title.x=element_blank()
    ,axis.title.y=element_text(hjust=0.3)
  )

# Create probability distribution table of events for the calibrated models.
event_dist_data=
  
  # Compute the numbers of instances per predicted probability for each model.
  calib_model %>%
  lapply(X=names(.),Y=.,function(X,Y){
    mutate(
      Y[[X]]$pred
      ,event=round(event,1)
      ,obs=as.integer(obs=='event')
    ) %>%
      filter(obs==1) %>%
      group_by(event) %>%
      summarize(
        model=factor(X,names(Y))
        ,n=n()/10e+4
      )
  }) %>%
  do.call(rbind,.) %>%
  
  # Clean up naming.
  mutate(model=case_when(
    model=='causal_ridge'~'RR'
    ,model=='pc_elnet'~'PC-ENR'
    ,model=='pc_rf'~'PC-RF'
    ,model=='pc_gbm'~'PC-GBM'
    ,model=='divnn'~'DI-VNN'
    ,TRUE~''
  )) %>%
  mutate(
    model=factor(model,c('RR','PC-ENR','PC-RF','PC-GBM','DI-VNN'))
  )

# Plot the probability distribution of events for each model, as histogram.
event_dist=
  event_dist_data %>%
  qplot(event,n,data=.,geom='col',na.rm=T) +
  geom_vline(data=opt_th,aes(xintercept=th),lty=2) +
  facet_wrap(~model,ncol=5) +
  scale_x_continuous('Predicted probability') +
  scale_y_continuous('Events per\n10,000 visits',breaks=seq(0,0.3,0.1)) +
  theme(
    # axis.text.x=element_text(angle=90,vjust=0.5,hjust=1)
    axis.ticks.x=element_blank()
    ,axis.text.x=element_blank()
    ,axis.title.x=element_blank()
    ,axis.title.y=element_text(hjust=0.3)
    ,strip.text.x=element_blank()
  )

# Create probability distribution table of nonevents for the calibrated models.
nonevent_dist_data=
  
  # Compute the numbers of instances per predicted probability for each model.
  calib_model %>%
  lapply(X=names(.),Y=.,function(X,Y){
    mutate(
      Y[[X]]$pred
      ,event=round(event,1)
      ,obs=as.integer(obs=='event')
    ) %>%
      filter(obs==0) %>%
      group_by(event) %>%
      summarize(
        model=factor(X,names(Y))
        ,n=n()/10e+5
      )
  }) %>%
  do.call(rbind,.) %>%
  
  # Clean up naming.
  mutate(model=case_when(
    model=='causal_ridge'~'RR'
    ,model=='pc_elnet'~'PC-ENR'
    ,model=='pc_rf'~'PC-RF'
    ,model=='pc_gbm'~'PC-GBM'
    ,model=='divnn'~'DI-VNN'
    ,TRUE~''
  )) %>%
  mutate(
    model=factor(model,c('RR','PC-ENR','PC-RF','PC-GBM','DI-VNN'))
  )

# Plot the probability distribution of nonevents for each model, as histogram.
nonevent_dist=
  nonevent_dist_data %>%
  qplot(event,n,data=.,geom='col',na.rm=T) +
  geom_text(
    data=opt_th,aes(x=th,y=0.2,label=round(th,2))
    ,size=3,hjust=-0.3,vjust=0
  ) +
  geom_vline(data=opt_th,aes(xintercept=th),lty=2) +
  facet_wrap(~model,ncol=5) +
  scale_x_continuous('Predicted probability') +
  scale_y_reverse('Nonevents per\n100,000 visits',breaks=seq(0,0.2,0.1)) +
  theme(
    axis.text.x=element_text(angle=90,vjust=0.5,hjust=1)
    ,strip.text.x=element_blank()
  )

# Filter only the averages in the ROC table.
roc_curve_data=
  roc %>%
  filter(bound=='avg') %>%
  select(-bound)

# Plot the ROC curve.
roc_curve=
  
  # Plot the curve.
  roc_curve_data %>%
  ggplot(aes(tnr,tpr,color=model,fill=model),data=.) +
  geom_line(size=1) +
  geom_abline(intercept=1,slope=1,lty=2) +
  geom_blank(data=data.frame(tnr=-1,tpr=1,model=NA)) +
  geom_point(data=opt_th,size=3) +
  
  # Plot references from the systematic review results.
  geom_point(
    data=
      read_xlsx('data/srma_prom.xlsx') %>%
      # To modify the citation
      # mutate(
      #   study=str_replace(study,'\\[37\\]','[6]')
      #   ,study=str_replace(study,'\\[23\\]','[7]')
      # ) %>%
      rename(tnr=spec,tpr=sens)
    ,color='black',fill='black'
  ) +
  geom_label(
    data=
      read_xlsx('data/srma_prom.xlsx') %>%
      # To modify the citation
      # mutate(
      #   study=str_replace(study,'\\[37\\]','[6]')
      #   ,study=str_replace(study,'\\[23\\]','[7]')
      # ) %>%
      rename(tnr=spec,tpr=sens)
    ,aes(label=study)
    ,color='black',fill='white'
    ,hjust=0,vjust=1
    ,size=3,alpha=0.75,label.padding=unit(0.15,'lines')
  ) +
  geom_label(
    data=
      opt_th %>%
      mutate(pos=rev(seq(0.1,0.5,len=5)))
    ,aes(x=0.3,y=pos,label=model)
    ,hjust=0,vjust=1,size=3,color='black',alpha=0.75
    ,show.legend=F
  ) +
  
  # Customize plot.
  coord_equal() +
  scale_x_reverse('Specificity',limits=1:0,breaks=rev(seq(0,1,0.1))) +
  scale_y_continuous('Sensitivity',limits=0:1,breaks=seq(0,1,0.1)) +
  scale_color_npg() +
  scale_fill_npg() +
  guides(color=F,fill=F) +
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))

# Create table for AUROC plot of the calibrated models.
auroc_table=
  
  # Get the evaluation results.
  eval_model %>%
  lapply(X=names(.),Y=.,function(X,Y){
    Z=Y[[X]] %>%
      lapply(function(x)x$optres$Group1['AUC-ROC',]) %>%
      do.call(rbind,.) %>%
      rownames_to_column(var='set') %>%
      mutate(model=X)
    suppressWarnings(separate(Z,CI,c('lb','ub'),sep='-'))
  }) %>%
  do.call(rbind,.) %>%
  filter(!str_detect(set,'nocalib')) %>%
  mutate(set=str_remove_all(set,'calib_')) %>%
  
  # Clean up model naming.
  mutate(model=case_when(
    model=='causal_ridge'~'RR'
    ,model=='pc_elnet'~'PC-ENR'
    ,model=='pc_rf'~'PC-RF'
    ,model=='pc_gbm'~'PC-GBM'
    ,model=='divnn'~'DI-VNN'
    ,TRUE~''
  )) %>%
  mutate(
    model=factor(model,c('RR','PC-ENR','PC-RF','PC-GBM','DI-VNN'))
  ) %>%
  
  # Clean up subset naming.
  mutate(set=case_when(
    set=='ran'~'External\nrandom\nsplit'
    ,set=='geo'~'External\ngeographical\nsplit'
    ,set=='tem'~'External\ntemporal\nsplit'
    ,set=='bgt'~'External\ngeotemporal\nsplit'
    ,TRUE~''
  )) %>%
  
  # Compute the AUROC average of all the models in each subset.
  group_by(set) %>%
  mutate(set_score=mean(Score)) %>%
  ungroup() %>%
  
  # Add the interval validation results.
  rbind(
    calib_model %>%
      
      # Get the evaluation results. 
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
      
      # Clean up model naming.
      mutate(model=case_when(
        model=='causal_ridge'~'RR'
        ,model=='pc_elnet'~'PC-ENR'
        ,model=='pc_rf'~'PC-RF'
        ,model=='pc_gbm'~'PC-GBM'
        ,model=='divnn'~'DI-VNN'
        ,TRUE~''
      )) %>%
      mutate(
        model=factor(model,c('RR','PC-ENR','PC-RF','PC-GBM','DI-VNN'))
      ) %>%
      
      # Clean up subset naming.
      mutate(
        set='Internal\ncalibration\nsplit'
        ,set_score=mean(Score)
      ) %>%
      select(set,Score,lb,ub,model,everything())
  ) %>%
  
  # Convert lower and upper bounds to numeric.
  mutate_at(c('lb','ub'),as.numeric) %>%
  
  # Add references from the systematic review results.
  rbind(
    read_xlsx('data/srma_prom.xlsx') %>%
      mutate(set='Training set') %>%
      # To modify the citation
      # mutate(
      #   study=str_replace(study,'\\[37\\]','[6]')
      #   ,study=str_replace(study,'\\[23\\]','[7]')
      # ) %>%
      rename(model=study,Score=auroc,lb=auroc_lb,ub=auroc_ub) %>%
      select(set,Score,lb,ub,model) %>%
      mutate(set_score=mean(Score))
  ) %>%
  
  # Clean up subset naming.
  mutate(
    set=
      factor(
        set
        ,c('Internal\ncalibration\nsplit'
           ,'Training set'
           ,'External\nrandom\nsplit'
           ,'External\ngeographical\nsplit'
           ,'External\ntemporal\nsplit'
           ,'External\ngeotemporal\nsplit')
      )
  )


# Plot the AUROCs.
auroc=
  auroc_table %>%
  ggplot(aes(model,Score),data=.) +
  geom_point(size=1) +
  geom_errorbar(aes(ymin=lb,ymax=ub),width=0.5,size=0.75) +
  geom_hline(aes(yintercept=set_score),lty=2) +
  geom_hline(yintercept=0.5,lty=2) +
  facet_grid(set~.,scales='free_y',space='free') +
  coord_flip() +
  scale_x_discrete('Data Partition') +
  scale_y_continuous('AUROC (95% CI)',breaks=seq(0,1,0.1)) +
  theme(
    axis.title.y=element_blank()
    ,axis.text.y=element_text(size=unit(8,'pt'))
    ,strip.text.y=element_text(angle=0)
  )
################################################################################



################################################################################
##### Create empty list for tables of model weight #############################
model_weight=list()
################################################################################



################################################################################
##### Prepare weight table of RR ###############################################
model_weight$causal_ridge=
  rbind(
    coef(model$causal_ridge$finalModel,model$causal_ridge$bestTune$lambda) %>%
      as.matrix() %>%
      as.data.frame() %>%
      rownames_to_column(var='term') %>%
      mutate(term=str_remove_all(term,'\\`|\\(|\\)')) %>%
      setNames(c('term','estimate')) %>%
      mutate(task='classification weight')
    ,coef(
      timing_model$causal_ridge$finalModel
      ,timing_model$causal_ridge$bestTune$lambda
    ) %>%
      as.matrix() %>%
      as.data.frame() %>%
      rownames_to_column(var='term') %>%
      mutate(term=str_remove_all(term,'\\`|\\(|\\)')) %>%
      setNames(c('term','estimate')) %>%
      mutate(task='estimation weight')
  ) %>%
  left_join(
    dag$baseline_nodes %>%
      mutate(label=paste0('causal_',label)) %>%
      rename(term=label,description=name) %>%
      add_case(data.frame(term='Intercept',description='Intercept'))
    ,by='term'
  ) %>%
  spread(task,estimate) %>%
  arrange(desc(`classification weight`),desc(`estimation weight`)) %>%
  slice(c(which(.$term=='Intercept'),which(.$term!='Intercept'))) %>%
  setNames(str_to_sentence(str_replace_all(colnames(.),'_',' ')))
################################################################################



################################################################################
##### Prepare weight table of PC model #########################################
model_weight$pc=
  composition(pw_int_rsdr) %>%
  rownames_to_column(var='Predictor') %>%
  left_join(
    rbind(
      annotation %>%
        rename(Predictor=code,Description=desc)
      ,dag$baseline_nodes %>%
        mutate(label=paste0('causal_',label)) %>%
        rename(Predictor=label,Description=name)
    )
    ,by='Predictor'
  ) %>%
  arrange(factor(Predictor,int_nps_eol_p$key)) %>%
  select(Predictor,Description,everything())
################################################################################




################################################################################
##### Prepare weight table of PC-ENR ###########################################
model_weight$pc_elnet=
  rbind(
    coef(model$pc_elnet$finalModel,model$pc_elnet$bestTune$lambda) %>%
      as.matrix() %>%
      as.data.frame() %>%
      rownames_to_column(var='term') %>%
      mutate(term=str_remove_all(term,'\\`|\\(|\\)')) %>%
      setNames(c('term','estimate')) %>%
      mutate(task='classification weight')
    ,coef(
      timing_model$pc_elnet$finalModel
      ,timing_model$pc_elnet$bestTune$lambda
    ) %>%
      as.matrix() %>%
      as.data.frame() %>%
      rownames_to_column(var='term') %>%
      mutate(term=str_remove_all(term,'\\`|\\(|\\)')) %>%
      setNames(c('term','estimate')) %>%
      mutate(task='estimation weight')
  ) %>%
  spread(task,estimate) %>%
  arrange(desc(`classification weight`),desc(`estimation weight`)) %>%
  setNames(str_to_sentence(str_replace_all(colnames(.),'_',' ')))
################################################################################




################################################################################
##### Prepare weight table of PC-RF ############################################
model_weight$pc_rf=
  rbind(
    varImp(model$pc_rf)[[1]] %>%
      setNames('variable_importance') %>%
      rownames_to_column(var='term') %>%
      mutate(task='classification variable importance')
    ,varImp(timing_model$pc_rf)[[1]] %>%
      setNames('variable_importance') %>%
      rownames_to_column(var='term') %>%
      mutate(task='estimation variable importance')
  ) %>%
  spread(task,variable_importance) %>%
  arrange(
    desc(`classification variable importance`)
    ,desc(`estimation variable importance`)
  ) %>%
  setNames(str_to_sentence(str_replace_all(colnames(.),'_',' ')))
################################################################################



################################################################################
##### Prepare weight table of PC-GBM ###########################################
model_weight$pc_gbm=
  rbind(
    varImp(model$pc_gbm)[[1]] %>%
      setNames('variable_importance') %>%
      rownames_to_column(var='term') %>%
      mutate(task='classification variable importance')
    ,varImp(timing_model$pc_gbm)[[1]] %>%
      setNames('variable_importance') %>%
      rownames_to_column(var='term') %>%
      mutate(task='estimation variable importance')
  ) %>%
  spread(task,variable_importance) %>%
  arrange(
    desc(`classification variable importance`)
    ,desc(`estimation variable importance`)
  ) %>%
  setNames(str_to_sentence(str_replace_all(colnames(.),'_',' ')))
################################################################################



################################################################################
##### Prepare weight table of differential analysis ############################
model_weight$fit=
  
  # Get differential analysis results.
  input$fit %>%
  rownames_to_column(var='Predictor') %>%
  arrange(adj.P.Val,P.Value,desc(abs(AveExpr))) %>%
  
  # Clean up data.
  mutate(
    P.Value=
      ifelse(
        P.Value<0.0000001
        ,'p<1e-08'
        ,format(P.Value,scientific=T,digits=1)
      )
    ,adj.P.Val=
      ifelse(
        adj.P.Val<0.0000001
        ,'p<1e-08'
        ,format(adj.P.Val,scientific=T,digits=1)
      )
  ) %>%
  
  # Clean up naming.
  left_join(
    rbind(
      annotation %>%
        rename(Predictor=code,Description=desc)
      ,dag$baseline_nodes %>%
        mutate(label=paste0('causal_',label)) %>%
        rename(Predictor=label,Description=name)
    )
    ,by='Predictor'
  ) %>%
  select(Predictor,Description,everything()) %>%
  setNames(
    ifelse(names(.)=='logFC','log(Fold change)',
    ifelse(names(.)=='AveExpr','Normalized average of global value',
    ifelse(names(.)=='t','t statistic',
    ifelse(names(.)=='P.Value','p-value',
    ifelse(names(.)=='adj.P.Val','FDR or adjusted p-value',
    ifelse(names(.)=='B','B statistic',names(.)))))))
  )
################################################################################



################################################################################
##### A function to visualize ontoarray of estimation DI-VNN ###################
source('R/viz.ontoarray.reg-function.R')
################################################################################



################################################################################
##### Get ontoarray visualisation of timing regression table. ##################
if(run_heavy_computation){
  cat('Get ontoarray visualisation of timing regression table.\n')
  visualization$ontoarray_reg=
    output_reg %>%
    viz.ontoarray.reg(modeling_divnn_reg$ontonet,batch_size=512,verbose=T)
  
  saveRDS(visualization$ontoarray_reg,'data/visualization_ontoarray_reg.rds')
}else{
  cat(readRDS('data/log.rds')[['visualization_ontoarray_reg']])
  visualization$ontoarray_reg=readRDS('data/visualization_ontoarray_reg.rds')
}
################################################################################



################################################################################
##### Prepare weight table of DI-VNN ###########################################
model_weight$divnn=
  
  # Get the classification DI-VNN weights of the representation layers.
  visualization$ontoarray %>%
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
  setNames(names(visualization$ontoarray)) %>%
  unlist() %>%
  data.frame(output=.) %>%
  rownames_to_column(var='ontology') %>%
  rename(classification_output=output) %>%
  
  # Get the estimation DI-VNN weights of the representation layers.
  left_join(
    visualization$ontoarray_reg %>%
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
      setNames(names(visualization$ontoarray)) %>%
      unlist() %>%
      data.frame(output=.) %>%
      rownames_to_column(var='ontology') %>%
      rename(estimation_output=output)
    ,by='ontology'
  ) %>%
  separate(ontology,c('ontology','predictor'),sep='\\.') %>%
  
  # Get the predictor annotation.
  left_join(
    rbind(
      annotation %>%
        rename(predictor=code,description=desc)
      ,dag$baseline_nodes %>%
        mutate(label=paste0('causal_',label)) %>%
        rename(predictor=label,description=name)
    )
    ,by='predictor'
  ) %>%
  
  # Get the predictor position.
  left_join(
    output %>%
      fData() %>%
      rownames_to_column(var='xyz') %>%
      rename(predictor=feature) %>%
      select(xyz,predictor) %>%
      filter(!is.na(predictor)) %>%
      mutate(xyz=str_remove_all(xyz,'x')) %>%
      separate(xyz,c('dimension_1','yz'),sep='y') %>%
      separate(yz,c('dimension_2','dimension_3'),sep='z')
    ,by='predictor'
  ) %>%
  
  # Wrap up.
  arrange(ontology,dimension_3,dimension_2,dimension_1,predictor) %>%
  select(
    ontology
    ,dimension_1
    ,dimension_2
    ,dimension_3
    ,predictor
    ,description
    ,everything()
  ) %>%
  setNames(str_to_sentence(str_replace_all(colnames(.),'_',' ')))
################################################################################









################################################################################
## Estimation of the time of delivery
################################################################################



################################################################################
##### Prepare estimation plots #################################################
estimation_plot_all=
  
  # Clean up model naming.
  eval_timing_model_plt %>%
  mutate(model=case_when(
    model=='causal_ridge'~'RR'
    ,model=='pc_elnet'~'PC-ENR'
    ,model=='pc_rf'~'PC-RF'
    ,model=='pc_gbm'~'PC-GBM'
    ,model=='divnn'~'DI-VNN'
    ,TRUE~''
  )) %>%
  mutate(
    model=factor(model,c('RR','PC-ENR','PC-RF','PC-GBM','DI-VNN'))
  ) %>%
  
  # Clean up subset naming.
  mutate(set=case_when(
    set=='timing_calib'~'Internal\ncalibration\nsplit'
    ,set=='timing_ran'~'External\nrandom\nsplit'
    ,set=='timing_geo'~'External\ngeographical\nsplit'
    ,set=='timing_tem'~'External\ntemporal\nsplit'
    ,set=='timing_bgt'~'External\ngeotemporal\nsplit'
    ,TRUE~''
  )) %>%
  mutate(
    set=
      factor(
        set
        ,c('Internal\ncalibration\nsplit'
           ,'External\nrandom\nsplit'
           ,'External\ngeographical\nsplit'
           ,'External\ntemporal\nsplit'
           ,'External\ngeotemporal\nsplit')
      )
  )

# Filter the estimation of interest.
estimation_plot_comp_data=
  estimation_plot_all %>%
  filter(metric_name=='calib_pred' & timing_pred<=42) %>%
  mutate(
    fall_into_interval=
      timing_pred>=lb & timing_pred<=ub & abs(ub-lb)<=timing_pred
    & lb<=42 & ub<=42
    ,fall_into_interval=
      ifelse(is.na(fall_into_interval),FALSE,fall_into_interval)
  ) %>%
  group_by(model,set) %>%
  mutate(p=sum(fall_into_interval)/42)

# Plot the comparison of the estimated time of delivery.
estimation_plot_comp=
  
  # Plot the estimation.
  estimation_plot_comp_data %>%
  ggplot(aes(timing_pred,avg,color=str_to_title(metric)),data=.) +
  geom_point(alpha=0.5) +
  # geom_linerange(aes(ymin=lb,ymax=ub),size=1,alpha=0.5,show.legend=F) +
  geom_smooth(method='loess',formula=y~x,size=1,se=F) +
  geom_abline(slope=1,intercept=0,lty=2) +
  
  # Show the criteria fulfillment proportion.
  geom_label(
    x=40,y=2,aes(label=paste0(round(p*100,2),'%'))
    ,hjust=1,vjust=0,color='black'
    ,size=unit(3,'pt'),label.padding=unit(0.1,'lines')
  ) +
  
  # Customize plot.
  facet_grid(set~model) +
  scale_x_continuous(limits=c(0,42)) +
  scale_y_continuous(limits=c(0,42)) +
  labs(
    x='Predicted time of delivery (week)'
    ,y='True time of delivery (average week)'
    ,color='Prediction of PROM by DI-VNN'
  ) +
  scale_color_manual(values=c('#E64B35FF','#3C5488FF')) +
  theme(
    strip.text.y=element_text(angle=0)
    ,legend.position='top'
  )

# Filter the best estimation .
estimation_plot_best_data=
  
  # Plot the estimation.
  eval_timing_model_plt  %>%
  filter(model=='pc_rf' & set=='timing_calib' & metric_name=='calib_pred') %>%
  rename(calib_pred=metric) %>%
  
  # Determine the estimated times that fulfill the criteria.
  mutate(
    fall_into_interval=
      timing_pred>=lb & timing_pred<=ub & abs(ub-lb)<=timing_pred
    & lb<=42 & ub<=42
    ,fall_into_interval=
      ifelse(is.na(fall_into_interval),FALSE,fall_into_interval)
    ,fall_into_interval=
      ifelse(fall_into_interval,'Yes','No')
  ) %>%
  
  # Determine the optimum period of estimation.
  mutate(
    timing_true=
      ifelse(
        calib_pred=='event'
        ,ifelse(timing_pred>=6 & timing_pred<=22,avg,NA)
        ,ifelse(timing_pred>=9 & timing_pred<=34,avg,NA)
      )
    ,pred_optmin=ifelse(calib_pred=='event',6,9)
    ,pred_optmax=ifelse(calib_pred=='event',22,34)
  ) %>%
  group_by(calib_pred) %>%
  mutate(RMSE=sqrt(mean((timing_pred-timing_true)^2,na.rm=T))) %>%
  ungroup()

# Plot the best estimated time of delivery.
estimation_plot_best=
  
  # Plot the estimation.
  estimation_plot_best_data %>%
  ggplot(aes(timing_pred,avg),data=.) +
  geom_point(aes(color=fall_into_interval)) +
  geom_linerange(
    aes(ymin=lb,ymax=ub,color=fall_into_interval)
    ,size=1
  ) +
  geom_abline(slope=1,intercept=0,lty=2) +
  
  # Show the optimum period.
  geom_vline(aes(xintercept=pred_optmin),lty=2) +
  geom_vline(aes(xintercept=pred_optmax),lty=2) +
  geom_errorbarh(aes(xmin=pred_optmin,xmax=pred_optmax,y=2),size=1) +
  
  # Show the RMSEs.
  geom_label(
    y=2
    ,aes(
      x=pred_optmin+(pred_optmax-pred_optmin)/2
      ,label=paste0('RMSE ± ',round(RMSE,1), ' weeks')
    )
    ,size=unit(3,'pt')
  ) +
  
  # Show the prediction.
  geom_label(
    y=42,hjust=0.5,vjust=1,alpha=0.75
    ,aes(
      x=ifelse(timing_pred==0,pred_optmin+(pred_optmax-pred_optmin)/2,NA)
      ,label=str_to_title(calib_pred),fill=calib_pred
    )
    ,show.legend=F
    ,na.rm=T
  ) +
  
  # Customize plot.
  facet_grid(~str_to_title(calib_pred)) +
  scale_x_continuous(limits=c(0,42),breaks=seq(0,42,2)) +
  scale_y_continuous(limits=c(0,42),breaks=seq(0,42,2)) +
  labs(
    x='Predicted time of delivery (week)'
    ,y='True time of delivery (95% CI)'
    ,color='Fulfilling the criteria in main text?'
  ) +
  scale_color_manual(values=c('#7E6148FF','#00A087FF')) +
  scale_fill_manual(values=c('#E64B35FF','#3C5488FF')) +
  theme(
    axis.text.x=element_text(angle=90,hjust=1,vjust=0.5)
    ,strip.text=element_blank()
    ,strip.background=element_blank()
    ,legend.position='top'
  )
################################################################################









################################################################################
## Exploring deep-insight visible neural network
################################################################################



################################################################################
##### Compute DI-VNN AUROC per period ##########################################
# Create a table of AUROC per period.
auroc_per_period_data=
  
  # Combine the classification and estimation data.
  cbind(
    test_data_reg$calib %>%
      phenoData() %>%
      pData() %>%
      select(outcome) %>%
      rename(timing=outcome)
    ,test_data$calib %>%
      phenoData() %>%
      pData() %>%
      select(outcome) %>%
      rename(obs=outcome) %>%
      mutate(
        obs=
          ifelse(obs==1,'event','nonevent') %>%
          factor(c('nonevent','event'))
      )
  ) %>%
  rownames_to_column(var='id') %>%
  mutate(rowIndex=seq(nrow(.))) %>%
  right_join(calib_model$divnn$pred,by=c('obs','rowIndex')) %>%
  select(Resample,rowIndex,event,obs,timing) %>%
  setNames(c('subset','index','score','outcome','timing')) %>%
  mutate(outcome=as.double(outcome=='event')) %>%
  
  # Set multiple thresholds.
  left_join(
    select(.,index) %>%
      filter(!duplicated(.)) %>%
      arrange(index) %>%
      cbind(
        data.frame(
          key=paste0('th_',str_pad(0:100,3,'left','0'))
          ,value=seq(0,1,len=101)
        ) %>%
          spread(key,value)
      )
    ,by='index'
  ) %>%
  gather(key,th,-subset,-index,-score,-outcome,-timing) %>%
  select(-key) %>%
  mutate(pred=as.integer(score>th)) %>%
  
  # Compute confusion matrix.
  mutate(
    tp=as.integer(outcome==1 & pred==1)
    ,fn=as.integer(outcome==1 & pred==0)
    ,fp=as.integer(outcome==0 & pred==1)
    ,tn=as.integer(outcome==0 & pred==0)
  ) %>%
  select(-index,-score,-outcome,-pred) %>%
  mutate(timing=round(timing/28)) %>%
  group_by(timing,subset,th) %>%
  summarize_all(sum) %>%
  ungroup() %>%
  
  # Compute evaluation metrics.
  mutate(
    tpr=tp/(tp+fn+1e-17)
    ,tnr=tn/(tn+fp+1e-17)
    ,ppv=tp/(tp+fp+1e-17)
    ,npv=tn/(tn+fn+1e-17)
  ) %>%
  select(-tp,-fn,-fp,-tn) %>%
  
  # Summarize AUROC per period.
  group_by(subset,timing) %>%
  left_join(mutate(.,th=th+0.01),by=c('subset','timing','th')) %>%
  filter_all(function(x)!is.na(x)) %>%
  mutate(
    auroc=abs(tnr.x-tnr.y)*tpr.x+abs(tnr.x-tnr.y)*0.5*(abs(tpr.x-tpr.y))
  ) %>%
  summarize(auroc=sum(auroc)) %>%
  ungroup() %>%
  select(-subset) %>%
  
  # Compute the interval estimates.
  group_by(timing) %>%
  summarize_all(function(x){
    y=mean(x)+(-1:1)*qnorm(0.975)*sd(x)/sqrt(length(x))
    paste0(y,collapse='|')
  }) %>%
  gather(metric,interval,-timing) %>%
  separate(interval,c('lb','avg','ub'),sep='\\|') %>%
  mutate_at(c('lb','avg','ub'),as.numeric) %>%
  mutate_at(c('lb','avg','ub'),function(x){
    round(ifelse(x<0,0,ifelse(x>1,1,x)),4)
  }) %>%
  
  # Create the smooth version of the average AUROCs.
  cbind(
    loess(formula=avg~timing,data=.) %>%
      predict() %>%
      data.frame(loess=.)
  ) %>%
  
  # Determine if an AUROC is more than 0.5.
  mutate(
    higher_than_guessing=0.5<lb & 0.5<ub
    ,higher_than_guessing=ifelse(higher_than_guessing,'Yes','No')
  )

# Plot the AUROC per period.
auroc_per_period=
  auroc_per_period_data %>%
  ggplot(aes((0-timing)*4,avg,color=higher_than_guessing),data=.) +
  geom_point(size=3) +
  geom_linerange(aes(ymin=lb,ymax=ub),size=2) +
  geom_smooth(method='loess',formula=y~x,color='#DC0000FF',se=F,size=1) +
  geom_hline(yintercept=0.5,lty=2) +
  geom_vline(xintercept=-46,lty=2) +
  scale_x_continuous('Weeks before the end of pregnancy',breaks=seq(-104,0,4)) +
  scale_y_continuous('AUROC (95% CI)', breaks=seq(0,1,0.1)) +
  labs(color='Higher\nthan\nAUROC\nof 0.5?') +
  scale_color_manual(values=c('#7E6148FF','#00A087FF')) +
  theme(
    axis.text.x=element_text(angle=90,hjust=1,vjust=0.5)
    ,legend.position='right'
  )
################################################################################



################################################################################
##### Prepare report of DI-VNN exploration #####################################
# Create an empty list to save DI-VNN exploration.
divnn_plot=list()

# Construc ggnetwork table the ontology network.
divnn_plot$base_data=
  visualization$ontonet$edge %>%
  graph_from_data_frame(directed=T) %>%
  ggnetwork(layout=layout_as_tree(.,mode='in')) %>%
  left_join(rename(visualization$ontonet$node,name=node),by='name')

# Plot the ontology network.
divnn_plot$base=
  divnn_plot$base_data %>%
  ggplot(aes(x=x,y=y,xend=xend,yend=yend,fill=avg)) +
  geom_edges(
    arrow=arrow(length=unit(5,'pt'),type='closed')
    ,show.legend=F
  ) +
  geom_nodes(
    aes(
      x=ifelse(avg>=0.58,NA,x)
      ,color=avg
    )
    ,show.legend=F
    ,size=8
    ,na.rm=T
  ) +
  geom_nodelabel(
    aes(label=ifelse(lb>0.55,paste0(round(avg,3)),NA))
    ,family='sans'
    ,size=unit(4,'pt')
    ,alpha=0.95
    ,show.legend=F
    ,na.rm=T
  ) +
  geom_nodelabel_repel(
    aes(
      label=
        ifelse(
          name%in%paste0('ONT:',c(154,171,144,155,149,167))
          ,name
          ,NA
        )
    )
    ,fill='white'
    ,family='sans'
    ,size=unit(3,'pt')
    ,segment.size=1
    ,alpha=0.75
    ,hjust=0
    ,vjust=0
    ,nudge_x=0.02
    ,nudge_y=0.02
    ,show.legend=F
    ,na.rm=T
  ) +
  scale_color_gradient(low='#E64B35FF',high='#00A087FF') +
  scale_fill_gradient(low='#E64B35FF',high='#00A087FF') +
  theme_blank()

# Convert all ontology arrays into a dataframe.
ontoarrays=
  visualization$ontoarray %>%
  lapply(X=names(.),Y=.,function(X,Y){
    ontoarray = Y[[X]]$output
    ontoarray %>%
      lapply(X=seq(dim(.)[3]),Y=.,Z=X,FUN=function(X,Y,Z){
        Y[, , X] %>% matrix()
      }) %>%
      do.call(rbind, .) %>%
      as.data.frame() %>% 
      setNames("fill") %>%
      mutate(
        x=rep(1:dim(ontoarray)[1],dim(ontoarray)[2]* dim(ontoarray)[3])
        ,y=
          rep(1:dim(ontoarray)[2],dim(ontoarray)[1]) %>%
          sort() %>%
          rep(dim(ontoarray)[3])
        ,z=
          rep(1:dim(ontoarray)[3], dim(ontoarray)[1]*dim(ontoarray)[2]) %>%
          sort()
      ) %>%
      left_join(
        Y[[X]]$ontotype
        ,by=c("x","y","z")
      ) %>% 
      mutate(ontology=X)
  }) %>%
  do.call(rbind,.) %>%
  mutate(z=paste0("z=",z))

source('R/ontoarray-function.R')
source('R/ontoarray_tab-function.R')

# Get data for the ontoarrays of interest.
ontogroup=
  visualized_codes %>%
  filter(code%in%c(
    'N760'
    ,'B379'
    ,'causal_A03'
    ,'598'
    ,'8602'
    ,'H521'
    ,'H522'
    ,'H527'
    ,'9059'
    ,'734'
  )) %>%
  mutate(
    desc=sapply(X=seq(nrow(.)),Y=code,Z=desc,function(X,Y,Z){
      ifelse(
        str_detect(Y[X],'causal_')
        ,dag$baseline_nodes$name[
          dag$baseline_nodes$label==str_remove_all(Y[X],'causal_')
        ]
        ,Z[X]
      )
    })
  ) %>%
  filter(
    ontotype%in%paste0('ONT:',c(171,154,144,149,155,167))
    | code%in%c('8602','causal_A03')
  ) %>%
  group_by(code) %>%
  filter(seq(n())==1) %>%
  ungroup() %>%
  mutate(
    ontotype=ifelse(code%in%c(8602,'causal_A03'),'',ontotype)
    ,outcome=ifelse(code%in%c(8602,'causal_A03'),'',outcome)
  ) %>%
  mutate(text=paste(code,desc)) %>%
  mutate(text=str_wrap(text,width=40)) %>%
  arrange(
    outcome
    ,factor(
      code
      ,c(
        'N760'
        ,'B379'
        ,'causal_A03'
        ,'598'
        ,'8602'
        ,'H521'
        ,'H522'
        ,'H527'
        ,'9059'
        ,'734'
      )
    )
  ) %>%
  pull(text)

# Plot the ontology arrays on the top of the network.
divnn_plot$top=
  divnn_plot$base +
  annotation_custom(grob=ontoarray(171,c(2),1),0.85,1.05,0.475,0.875) +
  annotation_custom(grob=ontoarray(171,c(9),1),0.9,1,0.35,0.55) +
  annotation_custom(grob=ontoarray(154,c(2),1),0.800,0.935,-0.100,0.135) +
  annotation_custom(grob=ontoarray(144,c(3),1),0.59,0.69,0.05,0.25) +
  annotation_custom(grob=ontoarray(149,c(3),1),0.45,0.55,0.2,0.4) +
  annotation_custom(grob=ontoarray(155,c(2),1,legend=T),0.07,0.17,0.4,0.7) +
  annotation_custom(grob=ontoarray(167,c(3,6,7),2),0.59,0.79,0.5,0.9) +
  annotate(
    geom='text'
    ,label=
      ontogroup[8:10] %>%
      paste0(collapse='\n')
    ,x=0,y=0.3,hjust=0,vjust=0,size=unit(3,'pt'),color='#E64B35FF'
  ) +
  annotate(
    geom='text'
    ,label=
      ontogroup[1:2] %>%
      paste0(collapse='\n')
    ,x=0,y=0.2,hjust=0,vjust=0,size=unit(3,'pt'),alpha=0.75
  ) +
  annotate(
    geom='text'
    ,label=
      ontogroup[3:7] %>%
      paste0(collapse='\n')
    ,x=0,y=0,hjust=0,vjust=0,size=unit(3,'pt'),color='#00A087FF'
  )
################################################################################









################################################################################
## Web application
################################################################################



################################################################################
# Discussion
################################################################################


