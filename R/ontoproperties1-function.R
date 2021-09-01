#' Create individual ontology network and array of PROM study
#'
#' Create individual ontology network and array in this PROM study.
#'
#' @param focus Explored ontology, a character of the ontology name without 
#' 'ONT:' prefix.
#' @param widths Width ratio, a character vector of width ratio of ontology 
#' network and array plots.
#' @param pointer_stroke Pointer stroke, a numeric of the line thickness of the
#' yellow square.
#' @param pointer_size Pointer size, a numeric of the size of the yellow square.
#' @param legend Legend position, a character of the legend position: top, 
#' bottom, left, right, or none.
#'
#' @details
#' This function is highly contextual for this PROM study. A specific list of 
#' app should be available.
#' 
#' @return A plot , a ggarrange object of ontology network and array.
#' 

ontoproperties1=function(focus
                         ,widths=c(1,1)
                         ,pointer_stroke=2
                         ,pointer_size=3
                         ,legend='bottom'){
  
  # Combine the plots of the ontology network and array.
  ggarrange(
    
    # Ontology network
    notes(app$tidyset)$ontology %>%
      
      # Filter out features and use only ontologies.
      filter(relation!='feature') %>%
      
      # Add a root ontology.
      rbind(
        filter(.,!target%in%source) %>%
          select(-source) %>%
          mutate(
            source=target
            ,target='root'
          ) %>%
          .[!duplicated(.),]
      ) %>%
      
      # Create an igraph object from the previous dataframe.
      graph_from_data_frame(directed=T) %>%
      
      # Create a ggnetwork dataframe from the previous igraph object.
      ggnetwork(layout=layout_as_tree(.,mode='in')) %>%
      left_join(rename(visualization$ontonet$node,name=node),by='name') %>%
      
      # Add prediction data.
      left_join(
        app$outputs %>%
          mutate_all(function(x)ifelse(x>app$threshold,1,0)) %>%
          gather(name,prediction) %>%
          mutate(
            name=str_replace_all(name,'ONT','ONT:')
            ,prediction=
              factor(
                ifelse(prediction==1,'event','nonevent')
                ,c('nonevent','event')
              )
          )
        ,by='name'
      ) %>%
      
      # Assign the focused ontology.
      mutate(focus=str_remove_all(name,'ONT:')==focus) %>%
      
      # Assign active ontologies (with positive predictors in this instance).
      left_join(
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
          select(ontology) %>%
          rename(name=ontology) %>%
          mutate(active=1)
        ,by='name'
      ) %>%
      mutate(active=!is.na(active)) %>%
      
      # Clean up.
      mutate(
        prediction=str_to_title(prediction) %>%
          factor(c('Nonevent','Event'))
      ) %>%
      
      # Plot the ontology network.
      ggplot(aes(x=x,y=y,xend=xend,yend=yend)) +
      geom_edges(arrow=arrow(length=unit(5,'pt'),type='closed')) +
      geom_nodes(aes(color=prediction),size=8) +
      geom_nodetext(
        aes(label=str_remove_all(name,'ONT:'))
        ,size=3,color='#FFFFFFFF',family='sans'
      ) +
      
      # Highlight the active ontologies.
      geom_nodelabel(
        aes(
          label=ifelse(active,str_remove_all(name,'ONT:'),NA)
        )
        ,family='sans'
        ,size=3,alpha=0.5,na.rm=T
      ) +
      
      # Highlight the focused ontology.
      geom_nodelabel(
        aes(
          label=ifelse(focus,str_remove_all(name,'ONT:'),NA)
        )
        ,family='sans'
        ,fill='orange'
        ,size=3,alpha=0.5,na.rm=T
      ) +
      
      # Show the AUROC of the focused ontology.
      geom_nodelabel(
        x=0,y=0
        ,aes(
          label=
            ifelse(
              focus
              ,paste0(
                'AUROC '
                ,round(avg,3)
                ,' (95% CI '
                ,round(lb,3)
                ,' to '
                ,round(ub,3)
                ,')'
              )
              ,NA
            )
        )
        ,fill='#DF8F44FF'
        ,family='sans'
        ,size=3,alpha=0.9,na.rm=T,hjust=0,vjust=0,nudge_y=0.04
      ) +
      
      # Customize plot.
      scale_color_manual('',values=c('#B24745FF','#79AF97FF')) +
      theme_blank() +
      theme(legend.position=legend) +
      theme(
        title=element_text(size=unit(8,'pt'),face='bold',family='sans')
        ,legend.title=element_text(family='sans')
        ,legend.text=element_text(family='sans')
      ) +
      ggtitle('Ontology network')
    
    # Ontology array
    ,app$ontoarray$representation %>%
      
      # Get the representation dataframe 
      # and filter those related to the focused ontology.
      app$ontoarray$ontotable() %>%
      filter(str_remove_all(ontology,'ONT:')==focus) %>%
      
      # Plot the representation dataframe.
      app$ontoarray$ontoshow(
        
        # Show only labels for the positive features.
        case=
          app$input %>%
          filter(!is.na(I1)) %>%
          rownames_to_column(var='feature') %>%
          inner_join(
            app$ontoarray$representation %>%
              app$ontoarray$ontotable()
            ,by='feature'
          ) %>%
          pull(feature) %>%
          .[!duplicated(.)]
        
        # Customize the yellow square and the legend.
        ,pointer_stroke=pointer_stroke
        ,pointer_size=pointer_size
        ,legend=legend
      ) +
      
      # Customize plot.
      theme(title=element_text(size=unit(8,'pt'),face='bold',family='sans')) +
      ggtitle('Ontology array')
    
    # Define the width ratio.
    ,widths=widths
    
  )
}