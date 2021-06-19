#' Create a non-root ontoarray table in PROM study
#'
#' Create a non-root ontoarray table in this PROM study.
#'
#' @param ontotype Ontotype, an integer vector of the non-root ontotype numbers.
#' @param channel Channel, an integer vector of the channels of any selected ontotype.
#'
#' @details
#' This function is highly contextual for this PROM study. A specific 
#' variable of ontoarrays should be available.
#' 
#' @return Ontoarray, a dataframe of the ontoarray.
#' 

ontoarray_tab=function(ontotype,channel){
  ontoarrays %>%
    
    # Filter the ontotype and channel.
    filter(
      ontology==paste0('ONT:',c(ontotype)) & z==paste0('z=',c(channel))
    ) %>%
    
    # Format the results.
    select(ontology,z,everything()) %>%
    mutate(feature=ifelse(is.na(feature),'',paste0('(',feature,')'))) %>%
    mutate(fill=round(fill,3)) %>%
    unite(feature_fill,fill,feature,sep=' ') %>%
    mutate(y=paste0('y',y)) %>%
    spread(y,feature_fill) %>%
    arrange(desc(x)) %>%
    rename(Ontology=ontology)
}