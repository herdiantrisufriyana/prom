#' Visualize ontoarray of estimation from DI-VNN
#'
#' Visualize ontoarray of estimation from deep-insight visible neural network.
#'
#' @param tidy_set Tidy set, an ExpressionSet that includes any set.
#' @param ontonet Ontonet, a Keras model object of DI-VNN.
#' @param batch_size Batch size, an integer of the number of instances used 
#' for each step or iteration. This was used to train the ontonet.
#'
#' @details
#' None.
#' 
#' @return Ontoarray and ontotype, a list of representations (ontoarrays and 
#' ontotypes).
#' 

viz.ontoarray.reg=function(tidy_set,ontonet,batch_size=32,verbose=T){
  
  # Clear previous session of Keras.
  k_clear_session()
  
  # Get the names of all the layers.
  layers=
    ontonet %>%
    get_config() %>%
    .$layers %>%
    sapply(function(x) x$name)
  
  # Get the layers after Inception v4 filtering 
  # and reshape back to the original dimension 
  # before feed to operation of addition in Resnet.
  rep_suffix='_hidden_sc_cv$'
  rep_layers=layers[str_detect(layers, rep_suffix)]
  
  # If verbosity is true, then use the right function.
  if (!verbose) pblapply=lapply
  
  # Get the representation.
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
                   optimizer=optimizer_sgd(lr=2^-6,momentum=0.9,decay=10^-4)
                   ,loss='mean_squared_error'
                 ) %>%
                 predict_generator(
                   generator=generator.ontoarray(K,seq(ncol(K)),batch_size=L)
                   ,steps=ceiling(ncol(K)/L)
                   ,verbose=0
                 ) %>%
                 .[seq(ncol(K)),,,,drop=F] %>%
                 `dimnames<-`(list(colnames(K),NULL,NULL,NULL))
               
               # Get the element-wise average of the array 
               # for estimation less than or equal to the average estimation.
               N=M %>%
                 .[K$outcome<=mean(K$outcome),,,,drop=F] %>%
                 apply(2:4,mean)
               
               # Get the element-wise average of the array 
               # for estimation greater than the average estimation.
               O=M %>%
                 .[K$outcome>mean(K$outcome),,,,drop=F] %>%
                 apply(2:4,mean)
               
               # Get the ontotype data.
               P=notes(K)$ontotype[[X]] %>%
                 as.data.frame() %>%
                 rownames_to_column(var = "feature")
               
               # Return the ontoarray and ontotype.
               list(output=O-N,ontotype=P)
               
             }) %>%
    setNames(
      rep_layers %>%
        str_remove_all(rep_suffix) %>% 
        str_replace_all("ONT", "ONT:")
    )
}