#' Create individual ontoarray extractor function
#'
#' Create individual ontoarray extractor as a list of multiple classes.
#'
#' @param tidy_set Tidy set, an ExpressionSet that includes data of a subject.
#' @param ontonet Ontonet, a Keras model object of DI-VNN.
#' @param batch_size Batch size, an integer of the number of instances used 
#' for each step or iteration. This was used to train the ontonet.
#'
#' @details
#' None.
#' 
#' @return Various results, a list of representation (a list of arrays), 
#' ontotable (function), and ontoshow (function).
#' 

ontoarray1=function(tidy_set,ontonet,batch_size){
  
  # Clear previous session of Keras.
  k_clear_session()
  
  # Get the names of all the layers.
  layers=
    ontonet %>%
    get_config() %>%
    .$layers %>%
    sapply(function(x)x$name)
  
  # Get the layers after Inception v4 filtering 
  # and reshape back to the original dimension 
  # before feed to operation of addition in Resnet.
  rep_suffix="_hidden_sc_cv$"
  rep_layers=layers[str_detect(layers,rep_suffix)]
  
  # Construct representation dataframe.
  representation=
    
    # Create it for each of the selected layers.
    rep_layers %>%
    pblapply(X=seq(length(.))
             ,Y=.
             ,Z=ontonet
             ,K=tidy_set
             ,L=batch_size
             ,function(X,Y,Z,K,L){
               
               # Get the ontoarray 
               # of this representation layer from the instance.
               M=keras_model(
                  inputs=Z$inputs
                  ,outputs=get_layer(Z,Y[[X]])$output
                 ) %>%
                 compile(
                   optimizer=
                     optimizer_sgd(
                       lr=2^-6
                       ,momentum=0.9
                       ,decay=10^-4
                     )
                   ,loss='mean_squared_error'
                 ) %>% 
                 predict_on_batch(
                   generator.ontoarray(
                     K
                     ,seq(ncol(K))
                     ,batch_size=L
                   )()[[1]]
                 ) %>%
                 as.array() %>%
                 .[seq(ncol(K)),,,,drop=F] %>%
                 `dimnames<-`(list(colnames(K),NULL,NULL,NULL))
               
               # Sanity check to avoid multiple instances of the representation.
               N=M %>% .[1,,,,drop=F] %>% apply(2:4,mean)
               
               # Get the ontotype data.
               P=notes(K)$ontotype[[X]] %>%
                 as.data.frame() %>%
                 rownames_to_column(var='feature')
               
               # Return the ontoarray and ontotype.
               list(output=N,ontotype=P)
               
             }) %>%
    setNames(
      rep_layers %>%
        str_remove_all(rep_suffix) %>%
        str_replace_all('ONT','ONT:')
    )
  
  # Create a function to make a dataframe from the representation.
  ontotable=function(representation){
    representation %>%
      # For each layer, create a dataframe.
      lapply(X=names(.),Y=.,function(X,Y){
        # Get the array for this layer.
        ontoarray=Y[[X]]$output
        
        # Convert to dataframe.
        ontoarray %>%
          lapply(X=seq(dim(.)[3]),Y=.,Z=X,function(X,Y,Z){
            Y[,,X] %>% matrix()
          }) %>%
          do.call(rbind,.) %>%
          as.data.frame() %>% 
          setNames('fill') %>%
          mutate(
            x=rep(1:dim(ontoarray)[1],dim(ontoarray)[2]*dim(ontoarray)[3])
            ,y=
              rep(1:dim(ontoarray)[2],dim(ontoarray)[1]) %>%
              sort() %>% rep(dim(ontoarray)[3])
            ,z=
              rep(1:dim(ontoarray)[3],dim(ontoarray)[1]*dim(ontoarray)[2]) %>%
              sort()
          ) %>%
          left_join(Y[[X]]$ontotype,by=c('x','y','z')) %>% 
          mutate(ontology=X)
      }) %>%
      
      # Combine the dataframes of all the layers.
      do.call(rbind, .) %>%
      mutate(max_fill=max(abs(fill),na.rm=T)) %>%
      mutate(z_lab=paste0('z=',str_pad(z,str_count(max(z,na.rm=T)),'left','0')))
  }
  
  # Create a function to plot the representation dataframe.
  ontoshow=function(ontoarray
                    ,ncol=1
                    ,case=NULL
                    ,pointer_stroke=2
                    ,pointer_size=3
                    ,legend='bottom'){
    
    # Determine a square grid dimension that accommodate all the channels.
    grid_col=
      ontoarray$z %>%
      str_remove_all('z=') %>%
      .[!duplicated(.)] %>%
      as.integer() %>%
      length() %>%
      sqrt() %>%
      ceiling()
    
    # Plot the representation dataframes.
    ontoarray %>%
      mutate(
        pointer=
          ifelse(
            is.na(feature)
            ,NA
            ,ifelse(fill==0,NA,ifelse(feature%in%case,'1','0'))
          )
      ) %>%
      ggplot(aes(x=y,y=x,fill=fill)) +
      geom_tile() +
      geom_point(
        aes(
          x=ifelse(is.na(feature),NA,ifelse(feature%in%case,y,NA))
        )
        ,color='yellow'
        ,stroke=pointer_stroke
        ,shape=0
        ,alpha=0.5
        ,size=pointer_size
        ,show.legend=F
        ,na.rm=T
      ) +
      geom_text(
        aes(label=ifelse(feature%in%case,feature,NA))
        ,color='white'
        ,family='sans'
        ,size=3
        ,hjust='inward'
        ,vjust='inward'
        ,nudge_x=0.1
        ,nudge_y=0.1
        ,na.rm=T
        ,show.legend=F
      ) +
      facet_wrap(ontology~z_lab,ncol=grid_col) +
      coord_equal() +
      scale_fill_gradientn(
        "- < output > +"
        ,colors=c('#E64B35FF',"black",'#00A087FF')
        ,na.value=NA
        ,limit=c(-ontoarray$max_fill[1],ontoarray$max_fill[1])
      ) +
      theme_void() +
      theme(
        strip.text=element_text(family='sans',size=unit(8,'pt'))
        ,legend.title=element_text(family='sans',size=unit(8,'pt'))
        ,legend.text=element_text(family='sans',size=unit(8,'pt'))
        ,legend.position=legend
      ) +
      guides(fill=guide_colorbar(title.position="top",title.hjust=0.5))
  }
  
  # Return all of the array list and functions as a list.
  list(
    representation=representation
    ,ontotable=ontotable
    ,ontoshow=ontoshow
  )
}