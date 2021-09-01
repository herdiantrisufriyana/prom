#' Create a non-root ontoarray component in PROM study
#'
#' Create a non-root ontoarray component in this PROM study.
#'
#' @param ontotype Ontotype, an integer vector of the non-root ontotype numbers.
#' @param channel Channel, an integer vector of the channels of any selected ontotype.
#' @param ncol Grid columns, an integer of the number of columns of the plot grid.
#' @param legend Legend, a logical whether the legend is used.
#'
#' @details
#' This function is highly contextual for this PROM study. A specific 
#' variable of ontoarrays should be available.
#' 
#' @return Ontoarray, a ggplot grob object of the ontoarray.
#' 

ontoarray=function(ontotype,channel,ncol,legend=F){
  p=ontoarrays %>%
    
    # Filter the ontotype and channel.
    filter(
      ontology%in%paste0('ONT:',c(ontotype)) & z%in%paste0('z=',c(channel))
    ) %>%
    
    # Plot the ontoarray.
    ggplot(aes(x=y,y=x,fill=fill)) +
    geom_tile() +
    
    # If a feature exists and is non-zero, then plot a yellow square on the place.
    geom_point(
      aes(
        x=ifelse(is.na(feature),NA,ifelse(fill==0,NA,y))
      )
      ,color='yellow'
      ,stroke=2
      ,shape=0
      ,alpha=0.5
      ,size=3
      ,na.rm=T
    ) +
    
    # Label the feature on the place.
    geom_text(
      aes(label=feature)
      ,color='white'
      ,family='sans'
      ,size=unit(2.5,'pt')
      ,hjust='inward'
      ,vjust='inward'
      ,nudge_x=0.1
      ,nudge_y=0.1
      ,na.rm=T
      ,show.legend=F
    ) + 
    
    # Customize plot.
    facet_wrap(ontology~z,ncol=ncol) +
    coord_equal() +
    scale_fill_gradientn(
      "- < output > +"
      ,colors=c('#B24745FF',"black",'#79AF97FF')
      ,na.value=NA
      ,limit=c(-max(abs(ontoarrays$fill),na.rm=T)
               ,max(abs(ontoarrays$fill),na.rm=T))
    ) +
    theme_void() +
    theme(
      strip.text=element_text(family='sans',size=unit(8,'pt'))
      ,legend.title=element_text(family='sans',size=unit(8,'pt'))
      ,legend.text=element_text(family='sans',size=unit(8,'pt'))
      ,legend.position="bottom"
    )
  
  # If legend is warranted, then put it on.
  if(legend){
    p=p+ guides(fill=guide_colorbar(title.position="top",title.hjust=0.5))
  }else{
    p=p+ guides(fill=F)
  }
  
  # Get the grob component.
  p=ggplotGrob(p)
  
  # Return the component.
  p
}