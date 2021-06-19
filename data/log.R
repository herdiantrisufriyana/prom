log=list()

log[['mh_nationwide']]=
  "Create a sparse binary data frame of diagnosis/procedure code
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=16s  
Split into batches of subject per healthcare provider
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 24s
Compute day interval of a medical history to each visit
Started: 2021-02-21 04:45:58 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=07h 44m 28s
End: 2021-02-21 12:31:22"

log[['mh_provider']]=
  "Create a sparse binary data frame of diagnosis/procedure code
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=11s  
Split into batches of subject per healthcare provider
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=47s  
Compute day interval of a medical history to each visit
Started: 2021-02-21 12:33:08 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=07h 59m 34s
End: 2021-02-21 20:33:18"

log[['cf_nationwide']]=
  "Create a sparse binary data frame of diagnosis/procedure code
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01s  
Split into batches of subject per healthcare provider
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=12s  
Compute day interval of a medical history to each visit
Started: 2021-02-21 20:35:38 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01h 01m 56s
End: 2021-02-21 21:37:42"

log[['cf_provider']]=
  "Create a sparse binary data frame of diagnosis/procedure code
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01s  
Split into batches of subject per healthcare provider
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=12s  
Compute day interval of a medical history to each visit
Started: 2021-02-21 21:40:00 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01h 02m 34s
End: 2021-02-21 22:42:43"

log[['ipw']]=
  "Conduct IPW for causal inference based on the causal diagram
Started: 2021-04-20 01:06:27 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=08m 05s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=11m 31s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=11m 48s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=08m 17s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=07m 37s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=08m 05s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=07m 52s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=07m 56s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=06m 58s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=06m 34s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=06m 31s
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=05m 47s
End: 2021-04-20 02:43:28"

log[['pw_int_rsdr']]=
  "Fit PCA models with CV resampling
Started: 2021-02-22 00:45:01 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=29m 21s
End: 2021-02-22 01:14:29"

log[['causal_ridge']]=
  "Conduct causal ridge regression by parallel computing 
Started: 2021-03-03 15:29:22 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=05m 01s
End: 2021-03-03 15:34:23"

log[['timing_causal_ridge']]=
  "Conduct causal ridge timing regression by parallel computing 
Started: 2021-03-13 12:56:17 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 17s
End: 2021-03-13 12:57:35"

log[['eval_bld_causal_ridge']]=
  "Evaluating non-calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=18s  
Evaluating calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=17s"

log[['pw_pc']]=
  "Prepare and combine PCs for all sets
Started: 2021-03-03 15:39:05 
For int: Transform dimensions
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=05m 22s
For ran: Transform dimensions
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 34s
For geo: Transform dimensions
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=55s  
For tem: Transform dimensions
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=52s  
For bgt: Transform dimensions
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=16s  
              used     (Mb)  gc trigger     (Mb)    max used     (Mb)
Ncells    11199641    598.2    29145108   1556.6    29145108   1556.6
Vcells 13181727061 100568.6 22470501351 171436.4 16954704275 129354.2
End: 2021-03-03 15:49:51"

log[['pc_elnet']]=
  "Conduct PC elastic net regression by parallel computing 
Started: 2021-03-03 15:50:50 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=33m 33s
End: 2021-03-03 16:24:24"

log[['timing_pc_elnet']]=
  "Conduct PC elastic net timing regression by parallel computing 
Started: 2021-03-13 13:12:09 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=12m 18s
End: 2021-03-13 13:24:28"

log[['eval_bld_pc_elnet']]=
  "Evaluating non-calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=26s  
Evaluating calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=29s"

log[['pc_rf']]=
  "Conduct PC random forest by parallel computing 
Started: 2021-03-03 21:49:46 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=03h 20m 01s
End: 2021-03-04 01:09:49"

log[['timing_pc_rf']]=
  "Conduct PC-RF timing regression by parallel computing 
Started: 2021-03-13 13:53:11 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=02h 50m 28s
End: 2021-03-13 16:43:39"

log[['eval_bld_pc_rf']]=
  "Evaluating non-calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=27s  
Evaluating calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=27s"

log[['pc_gbm']]=
  "Conduct PC gradient boosting machine by parallel computing 
Started: 2021-03-04 12:47:48
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01h 17m 38s
End: 2021-03-04 14:05:26"

log[['timing_pc_gbm']]=
  "Conduct PC-GBM timing regression by parallel computing 
Started: 2021-03-13 17:02:43 
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01h 18m 29s
End: 2021-03-13 18:21:12"

log[['eval_bld_pc_gbm']]=
  "Evaluating non-calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=32s  
Evaluating calibrated model
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=27s"

log[['output_predictor_v']]=
  "Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 43s"

log[['output_predictor_p']]=
  "Compute feature-feature Pearson correlation matrix
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 17s"

log[['output_predictor_tsne']]=
  "Conduct Barnes-Hut t-moderated stochastic neighbor embedding (t-SNE)
Read the 144 x 144 data matrix successfully!
OpenMP is working. 1 threads.
Using no_dims = 3, perplexity = 30.000000, and theta = 0.500000
Computing input similarities...
Building tree...
Done in 0.07 seconds (sparsity = 0.763021)!
Learning embedding...
Iteration 50: error is 80.026110 (50 iterations in 0.05 seconds)
Iteration 100: error is 88.480944 (50 iterations in 0.06 seconds)
Iteration 150: error is 82.460248 (50 iterations in 0.05 seconds)
Iteration 200: error is 83.784569 (50 iterations in 0.05 seconds)
Iteration 250: error is 83.016992 (50 iterations in 0.05 seconds)
Iteration 300: error is 1.453172 (50 iterations in 0.04 seconds)
Iteration 350: error is 1.029871 (50 iterations in 0.03 seconds)
Iteration 400: error is 0.996492 (50 iterations in 0.03 seconds)
Iteration 450: error is 0.972891 (50 iterations in 0.03 seconds)
Iteration 500: error is 0.954754 (50 iterations in 0.03 seconds)
Iteration 550: error is 0.935191 (50 iterations in 0.04 seconds)
Iteration 600: error is 0.910250 (50 iterations in 0.03 seconds)
Iteration 650: error is 0.885485 (50 iterations in 0.02 seconds)
Iteration 700: error is 0.870372 (50 iterations in 0.03 seconds)
Iteration 750: error is 0.802849 (50 iterations in 0.03 seconds)
Iteration 800: error is 0.783307 (50 iterations in 0.03 seconds)
Iteration 850: error is 0.775044 (50 iterations in 0.03 seconds)
Iteration 900: error is 0.769218 (50 iterations in 0.03 seconds)
Iteration 950: error is 0.767205 (50 iterations in 0.03 seconds)
Iteration 1000: error is 0.763012 (50 iterations in 0.02 seconds)
Fitting performed in 0.71 seconds."

log[['output']]=
  "Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 38s"

log[['tuning_divnn']]=
  "Conduct hyperparameter tuning for DI-VNN model
Started: 2021-02-27 00:19:35 
2021-02-27 00:19:37.854654: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 00:19:37.855014: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 00:19:37.855349: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 00:19:37.855675: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 00:19:37.855913: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 00:19:37.856075: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 00:19:37.856414: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=47s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3032; Root: loss=1.3178; ROC=0.5433; TP=3845; FN=5813; FP=19514; TN=39948     
Epoch: 1/5; LR: 0.015625; Total: loss=1.3207; Root: loss=1.3224; ROC=0.4925; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3788; Root: loss=1.3012; ROC=0.5755; TP=3782; FN=5887; FP=16885; TN=42566     
Epoch: 2/5; LR: 0.015; Total: loss=1.3367; Root: loss=1.3303; ROC=0.4996; TP=1; FN=2431; FP=26; TN=14950
Step: 135/135; LR: 0.015; Total: loss=1.3233; Root: loss=1.2934; ROC=0.5853; TP=3822; FN=5841; FP=16695; TN=42762     
Epoch: 3/5; LR: 0.015; Total: loss=1.4045; Root: loss=1.328; ROC=0.5067; TP=40; FN=2370; FP=324; TN=14674
Step: 135/135; LR: 0.015; Total: loss=1.2901; Root: loss=1.287; ROC=0.5918; TP=3844; FN=5815; FP=16266; TN=43195      
Epoch: 4/5; LR: 0.015; Total: loss=1.5; Root: loss=1.3259; ROC=0.5437; TP=310; FN=2109; FP=1599; TN=13390
Step: 135/135; LR: 0.015; Total: loss=1.2948; Root: loss=1.2814; ROC=0.5965; TP=3945; FN=5713; FP=16458; TN=43004     
Epoch: 5/5; LR: 0.015; Total: loss=1.5603; Root: loss=1.3073; ROC=0.5683; TP=746; FN=1678; FP=3095; TN=11889
Evaluation 30/30 ROC=0.5657
2021-02-27 02:37:46.201317: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 02:37:46.201633: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 02:37:46.201900: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 02:37:46.202131: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 02:37:46.202336: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 02:37:46.202467: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 02:37:46.202697: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=47s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.303; Root: loss=1.3178; ROC=0.5426; TP=3846; FN=5812; FP=19488; TN=39974      
Epoch: 1/5; LR: 0.015625; Total: loss=1.3207; Root: loss=1.3224; ROC=0.4912; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3808; Root: loss=1.3005; ROC=0.5771; TP=3791; FN=5878; FP=16900; TN=42551     
Epoch: 2/5; LR: 0.015; Total: loss=1.3359; Root: loss=1.3307; ROC=0.4973; TP=1; FN=2431; FP=24; TN=14952
Step: 135/135; LR: 0.015; Total: loss=1.3254; Root: loss=1.2922; ROC=0.587; TP=3817; FN=5846; FP=16604; TN=42853      
Epoch: 3/5; LR: 0.015; Total: loss=1.4052; Root: loss=1.3285; ROC=0.5042; TP=40; FN=2370; FP=318; TN=14680
Step: 135/135; LR: 0.015; Total: loss=1.2913; Root: loss=1.2862; ROC=0.5921; TP=3918; FN=5741; FP=16697; TN=42764     
Epoch: 4/5; LR: 0.015; Total: loss=1.497; Root: loss=1.33; ROC=0.5455; TP=245; FN=2174; FP=1228; TN=13761
Step: 135/135; LR: 0.015; Total: loss=1.2966; Root: loss=1.2808; ROC=0.5972; TP=4039; FN=5619; FP=17065; TN=42397     
Epoch: 5/5; LR: 0.015; Total: loss=1.5531; Root: loss=1.3332; ROC=0.573; TP=314; FN=2110; FP=1264; TN=13720
Evaluation 30/30 ROC=0.5705
2021-02-27 04:55:42.483567: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 04:55:42.484032: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 04:55:42.484305: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 04:55:42.484534: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 04:55:42.484800: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 04:55:42.484926: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 04:55:42.485159: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=47s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3018; Root: loss=1.318; ROC=0.542; TP=3830; FN=5828; FP=19473; TN=39989       
Epoch: 1/5; LR: 0.015625; Total: loss=1.3207; Root: loss=1.3224; ROC=0.4928; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3798; Root: loss=1.3009; ROC=0.5767; TP=3809; FN=5860; FP=16997; TN=42454     
Epoch: 2/5; LR: 0.015; Total: loss=1.3355; Root: loss=1.3308; ROC=0.4961; TP=1; FN=2431; FP=24; TN=14952
Step: 135/135; LR: 0.015; Total: loss=1.3241; Root: loss=1.2928; ROC=0.5858; TP=3827; FN=5836; FP=16616; TN=42841     
Epoch: 3/5; LR: 0.0144; Total: loss=1.4068; Root: loss=1.3289; ROC=0.502; TP=33; FN=2377; FP=277; TN=14721
Step: 135/135; LR: 0.0144; Total: loss=1.2906; Root: loss=1.2869; ROC=0.5915; TP=3890; FN=5769; FP=16487; TN=42974     
Epoch: 4/5; LR: 0.0144; Total: loss=1.5157; Root: loss=1.3324; ROC=0.5291; TP=161; FN=2258; FP=883; TN=14106
Step: 135/135; LR: 0.0144; Total: loss=1.2958; Root: loss=1.281; ROC=0.5975; TP=3969; FN=5689; FP=16565; TN=42897      
Epoch: 5/5; LR: 0.0144; Total: loss=1.5818; Root: loss=1.3279; ROC=0.5746; TP=407; FN=2017; FP=1629; TN=13355
Evaluation 30/30 ROC=0.5725
2021-02-27 07:10:48.327607: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 07:10:48.327964: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 07:10:48.328266: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 07:10:48.328519: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 07:10:48.328740: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 07:10:48.328880: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 07:10:48.329121: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=45s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3023; Root: loss=1.3179; ROC=0.5426; TP=3831; FN=5827; FP=19496; TN=39966     
Epoch: 1/5; LR: 0.015625; Total: loss=1.3207; Root: loss=1.3223; ROC=0.4867; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3783; Root: loss=1.3009; ROC=0.5767; TP=3814; FN=5855; FP=16955; TN=42496     
Epoch: 2/5; LR: 0.015625; Total: loss=1.3361; Root: loss=1.3301; ROC=0.4988; TP=1; FN=2431; FP=29; TN=14947
Step: 135/135; LR: 0.015625; Total: loss=1.3247; Root: loss=1.2934; ROC=0.5849; TP=3855; FN=5808; FP=16679; TN=42778     
Epoch: 3/5; LR: 0.015; Total: loss=1.4009; Root: loss=1.328; ROC=0.5086; TP=47; FN=2363; FP=341; TN=14657
Step: 135/135; LR: 0.015; Total: loss=1.2914; Root: loss=1.2878; ROC=0.5894; TP=3869; FN=5790; FP=16526; TN=42935     
Epoch: 4/5; LR: 0.015; Total: loss=1.4901; Root: loss=1.3336; ROC=0.5435; TP=202; FN=2217; FP=1035; TN=13954
Step: 135/135; LR: 0.015; Total: loss=1.2942; Root: loss=1.2815; ROC=0.5961; TP=3983; FN=5675; FP=16522; TN=42940     
Epoch: 5/5; LR: 0.015; Total: loss=1.5683; Root: loss=1.3318; ROC=0.5733; TP=352; FN=2072; FP=1322; TN=13662
Evaluation 30/30 ROC=0.571
2021-02-27 09:26:47.376114: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 09:26:47.376477: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 09:26:47.376791: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 09:26:47.377050: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 09:26:47.377295: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 09:26:47.377441: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 09:26:47.377691: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=48s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3029; Root: loss=1.3178; ROC=0.543; TP=3844; FN=5814; FP=19509; TN=39953      
Epoch: 1/5; LR: 0.015625; Total: loss=1.3209; Root: loss=1.3224; ROC=0.4911; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3804; Root: loss=1.3012; ROC=0.5756; TP=3783; FN=5886; FP=16905; TN=42546     
Epoch: 2/5; LR: 0.015; Total: loss=1.3362; Root: loss=1.3303; ROC=0.4975; TP=1; FN=2431; FP=27; TN=14949
Step: 135/135; LR: 0.015; Total: loss=1.324; Root: loss=1.2933; ROC=0.585; TP=3849; FN=5814; FP=16828; TN=42629       
Epoch: 3/5; LR: 0.015; Total: loss=1.4059; Root: loss=1.3288; ROC=0.5025; TP=34; FN=2376; FP=291; TN=14707
Step: 135/135; LR: 0.015; Total: loss=1.2906; Root: loss=1.2866; ROC=0.5918; TP=3997; FN=5662; FP=17073; TN=42388     
Epoch: 4/5; LR: 0.015; Total: loss=1.5; Root: loss=1.3299; ROC=0.5335; TP=204; FN=2215; FP=1072; TN=13917
Step: 135/135; LR: 0.015; Total: loss=1.2956; Root: loss=1.281; ROC=0.5966; TP=4000; FN=5658; FP=16575; TN=42887      
Epoch: 5/5; LR: 0.015; Total: loss=1.5289; Root: loss=1.3142; ROC=0.5724; TP=669; FN=1755; FP=2608; TN=12376
Evaluation 30/30 ROC=0.5696
2021-02-27 11:42:51.079523: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 11:42:51.079863: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 11:42:51.080148: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 11:42:51.080395: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 11:42:51.080613: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 11:42:51.080764: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 11:42:51.081010: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=45s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3021; Root: loss=1.3178; ROC=0.5428; TP=3836; FN=5822; FP=19496; TN=39966     
Epoch: 1/5; LR: 0.015625; Total: loss=1.3207; Root: loss=1.3223; ROC=0.4864; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3795; Root: loss=1.3008; ROC=0.5764; TP=3787; FN=5882; FP=16944; TN=42507     
Epoch: 2/5; LR: 0.015625; Total: loss=1.3355; Root: loss=1.3298; ROC=0.507; TP=1; FN=2431; FP=39; TN=14937
Step: 135/135; LR: 0.015625; Total: loss=1.3237; Root: loss=1.293; ROC=0.5856; TP=3851; FN=5812; FP=16803; TN=42654      
Epoch: 3/5; LR: 0.015; Total: loss=1.4001; Root: loss=1.3273; ROC=0.5038; TP=59; FN=2351; FP=397; TN=14601
Step: 135/135; LR: 0.015; Total: loss=1.2912; Root: loss=1.287; ROC=0.5918; TP=3930; FN=5729; FP=16664; TN=42797      
Epoch: 4/5; LR: 0.015; Total: loss=1.4942; Root: loss=1.3264; ROC=0.5433; TP=260; FN=2159; FP=1320; TN=13669
Step: 135/135; LR: 0.015; Total: loss=1.2945; Root: loss=1.2809; ROC=0.5971; TP=3950; FN=5708; FP=16330; TN=43132     
Epoch: 5/5; LR: 0.015; Total: loss=1.5446; Root: loss=1.3006; ROC=0.5786; TP=757; FN=1667; FP=3145; TN=11839
Evaluation 30/30 ROC=0.5758
2021-02-27 13:56:29.167227: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 13:56:29.167571: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 13:56:29.167863: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 13:56:29.168116: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 13:56:29.168333: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 13:56:29.168468: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 13:56:29.168720: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=43s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3025; Root: loss=1.3176; ROC=0.5444; TP=3863; FN=5795; FP=19564; TN=39898     
Epoch: 1/5; LR: 0.015625; Total: loss=1.3214; Root: loss=1.3224; ROC=0.4865; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3814; Root: loss=1.2999; ROC=0.5784; TP=3789; FN=5880; FP=16868; TN=42583     
Epoch: 2/5; LR: 0.015; Total: loss=1.3364; Root: loss=1.3311; ROC=0.4941; TP=0; FN=2432; FP=24; TN=14952
Step: 135/135; LR: 0.015; Total: loss=1.3248; Root: loss=1.2922; ROC=0.5865; TP=3825; FN=5838; FP=16591; TN=42866     
Epoch: 3/5; LR: 0.015; Total: loss=1.4054; Root: loss=1.3297; ROC=0.5074; TP=34; FN=2376; FP=284; TN=14714
Step: 135/135; LR: 0.015; Total: loss=1.2915; Root: loss=1.2862; ROC=0.5925; TP=3930; FN=5729; FP=16684; TN=42777     
Epoch: 4/5; LR: 0.015; Total: loss=1.4797; Root: loss=1.3323; ROC=0.546; TP=223; FN=2196; FP=1088; TN=13901
Step: 135/135; LR: 0.015; Total: loss=1.2963; Root: loss=1.2806; ROC=0.5964; TP=3920; FN=5738; FP=16307; TN=43155     
Epoch: 5/5; LR: 0.015; Total: loss=1.5226; Root: loss=1.3274; ROC=0.5756; TP=376; FN=2048; FP=1467; TN=13517
Evaluation 30/30 ROC=0.5731
2021-02-27 16:08:42.684550: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 16:08:42.684861: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 16:08:42.685126: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 16:08:42.685368: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 16:08:42.685574: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 16:08:42.685702: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 16:08:42.685939: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=43s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3102; Root: loss=1.3178; ROC=0.5434; TP=3843; FN=5815; FP=19542; TN=39920     
Epoch: 1/5; LR: 0.015625; Total: loss=1.3293; Root: loss=1.3225; ROC=0.483; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.3898; Root: loss=1.301; ROC=0.5767; TP=3752; FN=5917; FP=16801; TN=42650      
Epoch: 2/5; LR: 0.015625; Total: loss=1.344; Root: loss=1.331; ROC=0.4974; TP=0; FN=2432; FP=23; TN=14953
Step: 135/135; LR: 0.015625; Total: loss=1.3334; Root: loss=1.2934; ROC=0.5852; TP=3783; FN=5880; FP=16616; TN=42841     
Epoch: 3/5; LR: 0.015; Total: loss=1.4078; Root: loss=1.3309; ROC=0.5041; TP=28; FN=2382; FP=243; TN=14755
Step: 135/135; LR: 0.015; Total: loss=1.2997; Root: loss=1.2869; ROC=0.593; TP=3878; FN=5781; FP=16573; TN=42888      
Epoch: 4/5; LR: 0.015; Total: loss=1.5184; Root: loss=1.3389; ROC=0.5482; TP=167; FN=2252; FP=913; TN=14076
Step: 135/135; LR: 0.015; Total: loss=1.3039; Root: loss=1.281; ROC=0.597; TP=3954; FN=5704; FP=16351; TN=43111       
Epoch: 5/5; LR: 0.015; Total: loss=1.5675; Root: loss=1.3118; ROC=0.5642; TP=737; FN=1687; FP=3107; TN=11877
Evaluation 30/30 ROC=0.5622
2021-02-27 18:24:24.898633: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 18:24:24.899035: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 18:24:24.899344: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 18:24:24.899594: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 18:24:24.899820: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 18:24:24.899964: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 18:24:24.900215: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=44s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.3846; Root: loss=1.3176; ROC=0.5423; TP=3720; FN=5938; FP=18770; TN=40692     
Epoch: 1/5; LR: 0.015625; Total: loss=1.4064; Root: loss=1.3243; ROC=0.4836; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.4696; Root: loss=1.3012; ROC=0.5765; TP=3547; FN=6122; FP=15700; TN=43751     
Epoch: 2/5; LR: 0.015625; Total: loss=1.4225; Root: loss=1.3351; ROC=0.4963; TP=0; FN=2432; FP=0; TN=14976
Step: 135/135; LR: 0.015625; Total: loss=1.4097; Root: loss=1.293; ROC=0.586; TP=3561; FN=6102; FP=15255; TN=44202       
Epoch: 3/5; LR: 0.015; Total: loss=1.5022; Root: loss=1.3344; ROC=0.5014; TP=15; FN=2395; FP=111; TN=14887
Step: 135/135; LR: 0.015; Total: loss=1.3703; Root: loss=1.2868; ROC=0.5919; TP=3517; FN=6142; FP=14655; TN=44806     
Epoch: 4/5; LR: 0.015; Total: loss=1.6363; Root: loss=1.3376; ROC=0.5336; TP=154; FN=2265; FP=817; TN=14172
Step: 135/135; LR: 0.015; Total: loss=1.3744; Root: loss=1.2805; ROC=0.5973; TP=3615; FN=6043; FP=14496; TN=44966     
Epoch: 5/5; LR: 0.015; Total: loss=1.6786; Root: loss=1.3099; ROC=0.5659; TP=645; FN=1779; FP=2549; TN=12435
Evaluation 30/30 ROC=0.5637
2021-02-27 20:38:41.414532: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 20:38:41.414843: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 20:38:41.415108: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 20:38:41.415332: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 20:38:41.415535: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 20:38:41.415660: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 20:38:41.415887: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=51s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.9104; Root: loss=1.3268; ROC=0.5381; TP=2636; FN=7022; FP=13102; TN=46360     
Epoch: 1/5; LR: 0.015625; Total: loss=1.9504; Root: loss=1.3619; ROC=0.4835; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.9859; Root: loss=1.3323; ROC=0.576; TP=1486; FN=8183; FP=5933; TN=53518      
Epoch: 2/5; LR: 0.015625; Total: loss=1.9174; Root: loss=1.399; ROC=0.4969; TP=0; FN=2432; FP=0; TN=14976
Step: 135/135; LR: 0.015625; Total: loss=1.8745; Root: loss=1.3296; ROC=0.5853; TP=1647; FN=8016; FP=5859; TN=53598     
Epoch: 3/5; LR: 0.015; Total: loss=2.1445; Root: loss=1.4071; ROC=0.5044; TP=0; FN=2410; FP=0; TN=14998
Step: 135/135; LR: 0.015; Total: loss=1.7999; Root: loss=1.3228; ROC=0.5937; TP=2004; FN=7655; FP=6463; TN=52998     
Epoch: 4/5; LR: 0.015; Total: loss=2.3647; Root: loss=1.4197; ROC=0.5385; TP=5; FN=2414; FP=19; TN=14970
Step: 135/135; LR: 0.015; Total: loss=1.7956; Root: loss=1.3157; ROC=0.6011; TP=2115; FN=7543; FP=6649; TN=52813     
Epoch: 5/5; LR: 0.015; Total: loss=2.3595; Root: loss=1.3905; ROC=0.5831; TP=54; FN=2370; FP=231; TN=14753
Evaluation 30/30 ROC=0.5801
End: 2021-02-27 22:53:23"

log[['modeling_divnn']]=
  "Conduct modeling for DI-VNN
Started: 2021-02-27 23:02:10 
2021-02-27 23:02:12.447487: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-02-27 23:02:12.447816: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-02-27 23:02:12.448106: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-02-27 23:02:12.448338: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-02-27 23:02:12.448536: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-02-27 23:02:12.448658: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-02-27 23:02:12.448897: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=55s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=1.9097; Root: loss=1.3269; ROC=0.5374; TP=2637; FN=7021; FP=13065; TN=46397     
Epoch: 1/500; LR: 0.015625; Total: loss=1.9504; Root: loss=1.3618; ROC=0.4837; TP=0; FN=2419; FP=0; TN=14989
Step: 135/135; LR: 0.015625; Total: loss=1.9897; Root: loss=1.3327; ROC=0.5746; TP=1482; FN=8187; FP=5856; TN=53595     
Epoch: 2/500; LR: 0.015625; Total: loss=1.9097; Root: loss=1.3964; ROC=0.5031; TP=0; FN=2432; FP=0; TN=14976
Step: 135/135; LR: 0.015625; Total: loss=1.8757; Root: loss=1.3297; ROC=0.5854; TP=1631; FN=8032; FP=5849; TN=53608     
Epoch: 3/500; LR: 0.015625; Total: loss=2.1181; Root: loss=1.403; ROC=0.5132; TP=0; FN=2410; FP=0; TN=14998
Step: 135/135; LR: 0.015625; Total: loss=1.8019; Root: loss=1.3234; ROC=0.5926; TP=2031; FN=7628; FP=6593; TN=52868     
Epoch: 4/500; LR: 0.015625; Total: loss=2.3756; Root: loss=1.4203; ROC=0.5454; TP=5; FN=2414; FP=18; TN=14971
Step: 135/135; LR: 0.015625; Total: loss=1.7949; Root: loss=1.317; ROC=0.5991; TP=2104; FN=7554; FP=6645; TN=52817      
Epoch: 5/500; LR: 0.015625; Total: loss=2.4726; Root: loss=1.4274; ROC=0.5786; TP=66; FN=2358; FP=221; TN=14763
Step: 135/135; LR: 0.015625; Total: loss=1.8292; Root: loss=1.3116; ROC=0.6049; TP=2232; FN=7429; FP=6905; TN=52554     
Epoch: 6/500; LR: 0.015; Total: loss=2.4588; Root: loss=1.496; ROC=0.5813; TP=73; FN=2336; FP=217; TN=14782
Step: 135/135; LR: 0.015; Total: loss=1.8669; Root: loss=1.306; ROC=0.6107; TP=2289; FN=7373; FP=6865; TN=52593      
Epoch: 7/500; LR: 0.015; Total: loss=2.4728; Root: loss=1.4369; ROC=0.5927; TP=181; FN=2230; FP=537; TN=14460
Step: 135/135; LR: 0.015; Total: loss=1.5178; Root: loss=1.2993; ROC=0.6159; TP=2414; FN=7229; FP=7092; TN=52385     
Epoch: 8/500; LR: 0.0144; Total: loss=2.2999; Root: loss=1.3504; ROC=0.6014; TP=398; FN=2024; FP=1250; TN=13736
Step: 135/135; LR: 0.0144; Total: loss=1.883; Root: loss=1.2951; ROC=0.6223; TP=2448; FN=7216; FP=7115; TN=52341      
Epoch: 9/500; LR: 0.013824; Total: loss=2.1588; Root: loss=1.3271; ROC=0.598; TP=422; FN=1993; FP=1314; TN=13679
Step: 135/135; LR: 0.013824; Total: loss=1.6907; Root: loss=1.2888; ROC=0.6255; TP=2582; FN=7070; FP=7352; TN=52116     
Epoch: 10/500; LR: 0.01327104; Total: loss=2.4164; Root: loss=1.3686; ROC=0.6025; TP=393; FN=2038; FP=1169; TN=13808
Step: 135/135; LR: 0.01327104; Total: loss=1.7134; Root: loss=1.2851; ROC=0.6289; TP=2616; FN=7039; FP=7409; TN=52056     
Epoch: 11/500; LR: 0.01327104; Total: loss=2.2548; Root: loss=1.3177; ROC=0.611; TP=601; FN=1814; FP=1700; TN=13293
Step: 135/135; LR: 0.01327104; Total: loss=1.8581; Root: loss=1.2816; ROC=0.6327; TP=2728; FN=6935; FP=7542; TN=51915     
Epoch: 12/500; LR: 0.0127402; Total: loss=2.2508; Root: loss=1.2983; ROC=0.6172; TP=642; FN=1779; FP=1900; TN=13087
Step: 135/135; LR: 0.0127402; Total: loss=1.7917; Root: loss=1.2777; ROC=0.6349; TP=2799; FN=6860; FP=7836; TN=51625     
Epoch: 13/500; LR: 0.01223059; Total: loss=2.0282; Root: loss=1.274; ROC=0.6134; TP=759; FN=1655; FP=2619; TN=12375
Step: 135/135; LR: 0.01223059; Total: loss=1.6701; Root: loss=1.2731; ROC=0.6383; TP=2852; FN=6800; FP=7755; TN=51713     
Epoch: 14/500; LR: 0.01174137; Total: loss=2.1891; Root: loss=1.3087; ROC=0.6199; TP=560; FN=1866; FP=1537; TN=13445
Step: 135/135; LR: 0.01174137; Total: loss=1.6467; Root: loss=1.2707; ROC=0.6411; TP=2903; FN=6748; FP=7946; TN=51523     
Epoch: 15/500; LR: 0.01127171; Total: loss=2.3119; Root: loss=1.2735; ROC=0.616; TP=839; FN=1593; FP=2828; TN=12148
Step: 135/135; LR: 0.01127171; Total: loss=1.9122; Root: loss=1.2631; ROC=0.6471; TP=2991; FN=6675; FP=7904; TN=51550     
Epoch: 16/500; LR: 0.01082084; Total: loss=2.0366; Root: loss=1.2767; ROC=0.6204; TP=761; FN=1654; FP=2316; TN=12677
Step: 135/135; LR: 0.01082084; Total: loss=1.7873; Root: loss=1.2617; ROC=0.6479; TP=3040; FN=6618; FP=8210; TN=51252     
Epoch: 17/500; LR: 0.01082084; Total: loss=2.1122; Root: loss=1.2417; ROC=0.6342; TP=1877; FN=536; FP=9352; TN=5643
Step: 135/135; LR: 0.01082084; Total: loss=1.8061; Root: loss=1.2593; ROC=0.6502; TP=3141; FN=6519; FP=8418; TN=51042     
Epoch: 18/500; LR: 0.01038801; Total: loss=2.3239; Root: loss=1.2686; ROC=0.6251; TP=1964; FN=474; FP=9923; TN=5047
Step: 135/135; LR: 0.01038801; Total: loss=2.0254; Root: loss=1.2568; ROC=0.6516; TP=3090; FN=6582; FP=8080; TN=51368     
Epoch: 19/500; LR: 0.009972489; Total: loss=2.3983; Root: loss=1.2938; ROC=0.6272; TP=733; FN=1685; FP=2135; TN=12855
Step: 135/135; LR: 0.009972489; Total: loss=2.034; Root: loss=1.2546; ROC=0.653; TP=3150; FN=6523; FP=8339; TN=51108       
Epoch: 20/500; LR: 0.00957359; Total: loss=2.1893; Root: loss=1.2448; ROC=0.6344; TP=1878; FN=546; FP=9283; TN=5701
Step: 135/135; LR: 0.00957359; Total: loss=1.989; Root: loss=1.2472; ROC=0.6575; TP=3130; FN=6541; FP=7962; TN=51487      
Epoch: 21/500; LR: 0.009190646; Total: loss=2.222; Root: loss=1.2449; ROC=0.6369; TP=1078; FN=1358; FP=3721; TN=11251
Step: 135/135; LR: 0.009190646; Total: loss=1.7665; Root: loss=1.2397; ROC=0.6616; TP=3258; FN=6400; FP=8249; TN=51213     
Epoch: 22/500; LR: 0.00882302; Total: loss=2.295; Root: loss=1.2575; ROC=0.6353; TP=1906; FN=519; FP=9391; TN=5592
Step: 135/135; LR: 0.00882302; Total: loss=1.9544; Root: loss=1.2385; ROC=0.6626; TP=3234; FN=6435; FP=8164; TN=51287     
Epoch: 23/500; LR: 0.008470099; Total: loss=2.3123; Root: loss=1.2604; ROC=0.6429; TP=761; FN=1665; FP=2127; TN=12855
Step: 135/135; LR: 0.008470099; Total: loss=1.8377; Root: loss=1.2334; ROC=0.666; TP=3226; FN=6436; FP=7882; TN=51576      
Epoch: 24/500; LR: 0.008131295; Total: loss=2.3762; Root: loss=1.2511; ROC=0.637; TP=1894; FN=523; FP=9334; TN=5657
Step: 135/135; LR: 0.008131295; Total: loss=1.724; Root: loss=1.2274; ROC=0.6698; TP=3322; FN=6333; FP=8007; TN=51458      
Epoch: 25/500; LR: 0.008131295; Total: loss=2.4526; Root: loss=1.2486; ROC=0.6461; TP=893; FN=1529; FP=2802; TN=12184
Step: 135/135; LR: 0.008131295; Total: loss=1.861; Root: loss=1.224; ROC=0.6715; TP=3369; FN=6296; FP=8020; TN=51435       
Epoch: 26/500; LR: 0.007806044; Total: loss=2.5431; Root: loss=1.2791; ROC=0.6315; TP=1978; FN=452; FP=10034; TN=4944
Step: 135/135; LR: 0.007806044; Total: loss=1.922; Root: loss=1.2227; ROC=0.673; TP=3329; FN=6337; FP=7886; TN=51568       
Epoch: 27/500; LR: 0.007493802; Total: loss=2.3811; Root: loss=1.2236; ROC=0.648; TP=1926; FN=492; FP=9453; TN=5537
Step: 135/135; LR: 0.007493802; Total: loss=1.6869; Root: loss=1.2184; ROC=0.6744; TP=3394; FN=6259; FP=7888; TN=51579     
Epoch: 28/500; LR: 0.00719405; Total: loss=2.442; Root: loss=1.2849; ROC=0.6288; TP=1926; FN=496; FP=9450; TN=5536
Step: 135/135; LR: 0.00719405; Total: loss=1.8548; Root: loss=1.2132; ROC=0.6776; TP=3415; FN=6247; FP=7995; TN=51463     
Epoch: 29/500; LR: 0.006906288; Total: loss=2.2382; Root: loss=1.2316; ROC=0.6488; TP=1979; FN=448; FP=9738; TN=5243
Step: 135/135; LR: 0.006906288; Total: loss=1.6907; Root: loss=1.2096; ROC=0.6796; TP=3442; FN=6211; FP=7891; TN=51576     
Epoch: 30/500; LR: 0.006630036; Total: loss=2.4043; Root: loss=1.2725; ROC=0.6459; TP=757; FN=1664; FP=2055; TN=12932
Step: 135/135; LR: 0.006630036; Total: loss=1.9244; Root: loss=1.2069; ROC=0.6812; TP=3470; FN=6196; FP=7900; TN=51554     
Epoch: 31/500; LR: 0.006364835; Total: loss=2.4659; Root: loss=1.2603; ROC=0.6454; TP=1994; FN=417; FP=10091; TN=4906
Step: 135/135; LR: 0.006364835; Total: loss=1.952; Root: loss=1.2039; ROC=0.6831; TP=3470; FN=6199; FP=7718; TN=51733      
Epoch: 32/500; LR: 0.006110241; Total: loss=2.3116; Root: loss=1.2317; ROC=0.6542; TP=1967; FN=459; FP=9591; TN=5391
Step: 135/135; LR: 0.006110241; Total: loss=1.8539; Root: loss=1.2007; ROC=0.6852; TP=3453; FN=6209; FP=7725; TN=51733     
Epoch: 33/500; LR: 0.005865831; Total: loss=2.1882; Root: loss=1.226; ROC=0.6493; TP=1915; FN=496; FP=9408; TN=5589
Step: 135/135; LR: 0.005865831; Total: loss=2.013; Root: loss=1.1951; ROC=0.6883; TP=3547; FN=6126; FP=7824; TN=51623      
Epoch: 34/500; LR: 0.005631198; Total: loss=2.2288; Root: loss=1.2126; ROC=0.6551; TP=1896; FN=523; FP=9027; TN=5962
Step: 135/135; LR: 0.005631198; Total: loss=1.5582; Root: loss=1.1915; ROC=0.6904; TP=3531; FN=6115; FP=7836; TN=51638     
Epoch: 35/500; LR: 0.00540595; Total: loss=2.2405; Root: loss=1.2283; ROC=0.6552; TP=1963; FN=469; FP=9487; TN=5489
Step: 135/135; LR: 0.00540595; Total: loss=1.8983; Root: loss=1.1889; ROC=0.6919; TP=3565; FN=6101; FP=7857; TN=51597     
Epoch: 36/500; LR: 0.00540595; Total: loss=2.447; Root: loss=1.2051; ROC=0.6582; TP=1164; FN=1246; FP=3972; TN=11026
Step: 135/135; LR: 0.00540595; Total: loss=2.1521; Root: loss=1.1889; ROC=0.6915; TP=3564; FN=6116; FP=7640; TN=51800     
Epoch: 37/500; LR: 0.005189712; Total: loss=2.2701; Root: loss=1.2326; ROC=0.6555; TP=929; FN=1490; FP=2672; TN=12317
Step: 135/135; LR: 0.005189712; Total: loss=1.7185; Root: loss=1.1844; ROC=0.6935; TP=3586; FN=6069; FP=7591; TN=51874     
Epoch: 38/500; LR: 0.004982124; Total: loss=2.2795; Root: loss=1.2305; ROC=0.6648; TP=839; FN=1585; FP=2128; TN=12856
Step: 135/135; LR: 0.004982124; Total: loss=1.7644; Root: loss=1.1806; ROC=0.6961; TP=3637; FN=6021; FP=7676; TN=51786     
Epoch: 39/500; LR: 0.004782839; Total: loss=2.2256; Root: loss=1.2223; ROC=0.6662; TP=834; FN=1575; FP=2078; TN=12921
Step: 135/135; LR: 0.004782839; Total: loss=1.8067; Root: loss=1.1777; ROC=0.697; TP=3642; FN=6019; FP=7733; TN=51726      
Epoch: 40/500; LR: 0.004591525; Total: loss=2.1908; Root: loss=1.2565; ROC=0.6557; TP=628; FN=1783; FP=1502; TN=13495
Step: 135/135; LR: 0.004591525; Total: loss=1.9008; Root: loss=1.1761; ROC=0.698; TP=3648; FN=6017; FP=7666; TN=51789      
Epoch: 41/500; LR: 0.004407864; Total: loss=2.0668; Root: loss=1.2172; ROC=0.6604; TP=872; FN=1550; FP=2341; TN=12645
Step: 135/135; LR: 0.004407864; Total: loss=1.7757; Root: loss=1.1707; ROC=0.7013; TP=3682; FN=5978; FP=7634; TN=51826     
Epoch: 42/500; LR: 0.004407864; Total: loss=2.1576; Root: loss=1.1945; ROC=0.6686; TP=1010; FN=1405; FP=2909; TN=12084
Step: 135/135; LR: 0.004407864; Total: loss=1.6005; Root: loss=1.1693; ROC=0.7017; TP=3655; FN=5993; FP=7680; TN=51792     
Epoch: 43/500; LR: 0.004231549; Total: loss=2.2399; Root: loss=1.2693; ROC=0.6564; TP=672; FN=1759; FP=1411; TN=13566
Step: 135/135; LR: 0.004231549; Total: loss=1.7225; Root: loss=1.167; ROC=0.703; TP=3709; FN=5947; FP=7690; TN=51774       
Epoch: 44/500; LR: 0.004062288; Total: loss=2.1738; Root: loss=1.2635; ROC=0.6661; TP=667; FN=1748; FP=1457; TN=13536
Step: 135/135; LR: 0.004062288; Total: loss=1.8395; Root: loss=1.1647; ROC=0.7049; TP=3687; FN=5975; FP=7460; TN=51998     
Epoch: 45/500; LR: 0.003899796; Total: loss=2.179; Root: loss=1.2985; ROC=0.6459; TP=597; FN=1824; FP=1192; TN=13795
Step: 135/135; LR: 0.003899796; Total: loss=1.7722; Root: loss=1.164; ROC=0.7049; TP=3682; FN=5977; FP=7524; TN=51937      
Epoch: 46/500; LR: 0.003743804; Total: loss=2.1627; Root: loss=1.2386; ROC=0.6604; TP=728; FN=1686; FP=1632; TN=13362
Step: 135/135; LR: 0.003743804; Total: loss=2.0722; Root: loss=1.1607; ROC=0.706; TP=3748; FN=5928; FP=7605; TN=51839      
Epoch: 47/500; LR: 0.003594052; Total: loss=2.1826; Root: loss=1.2703; ROC=0.6587; TP=613; FN=1813; FP=1166; TN=13816
Step: 135/135; LR: 0.003594052; Total: loss=1.8737; Root: loss=1.1565; ROC=0.7084; TP=3669; FN=5996; FP=7166; TN=52289     
Epoch: 48/500; LR: 0.00345029; Total: loss=2.0712; Root: loss=1.2426; ROC=0.6631; TP=744; FN=1688; FP=1690; TN=13286
Step: 135/135; LR: 0.00345029; Total: loss=1.8345; Root: loss=1.1534; ROC=0.7101; TP=3749; FN=5913; FP=7383; TN=52075     
Epoch: 49/500; LR: 0.003312278; Total: loss=2.05; Root: loss=1.21; ROC=0.6714; TP=853; FN=1562; FP=2102; TN=12891
Step: 135/135; LR: 0.003312278; Total: loss=1.7117; Root: loss=1.149; ROC=0.7124; TP=3742; FN=5914; FP=7348; TN=52116      
Epoch: 50/500; LR: 0.003179787; Total: loss=2.0352; Root: loss=1.184; ROC=0.6765; TP=992; FN=1421; FP=2706; TN=12289
Step: 135/135; LR: 0.003179787; Total: loss=1.8478; Root: loss=1.1479; ROC=0.7135; TP=3738; FN=5925; FP=7285; TN=52172     
Epoch: 51/500; LR: 0.003052596; Total: loss=2.2089; Root: loss=1.21; ROC=0.6757; TP=832; FN=1606; FP=1930; TN=13040
Step: 135/135; LR: 0.003052596; Total: loss=1.7932; Root: loss=1.1458; ROC=0.7141; TP=3742; FN=5917; FP=7140; TN=52321     
Epoch: 52/500; LR: 0.002930492; Total: loss=2.0423; Root: loss=1.1934; ROC=0.6781; TP=879; FN=1539; FP=2097; TN=12893
Step: 135/135; LR: 0.002930492; Total: loss=1.7145; Root: loss=1.1437; ROC=0.7148; TP=3745; FN=5911; FP=7062; TN=52402     
Epoch: 53/500; LR: 0.002813272; Total: loss=2.3232; Root: loss=1.2071; ROC=0.6744; TP=803; FN=1621; FP=1741; TN=13243
Step: 135/135; LR: 0.002813272; Total: loss=1.8323; Root: loss=1.1429; ROC=0.7153; TP=3717; FN=5945; FP=7047; TN=52411     
Epoch: 54/500; LR: 0.002813272; Total: loss=2.2614; Root: loss=1.225; ROC=0.6787; TP=742; FN=1694; FP=1509; TN=13463
Step: 135/135; LR: 0.002813272; Total: loss=1.797; Root: loss=1.1398; ROC=0.7175; TP=3760; FN=5901; FP=7031; TN=52428      
Epoch: 55/500; LR: 0.002700741; Total: loss=2.1351; Root: loss=1.2547; ROC=0.6649; TP=618; FN=1807; FP=1073; TN=13910
Step: 135/135; LR: 0.002700741; Total: loss=1.9799; Root: loss=1.1381; ROC=0.7178; TP=3810; FN=5861; FP=7138; TN=52311     
Epoch: 56/500; LR: 0.002592712; Total: loss=2.1266; Root: loss=1.2195; ROC=0.679; TP=728; FN=1698; FP=1458; TN=13524
Step: 135/135; LR: 0.002592712; Total: loss=1.9325; Root: loss=1.1356; ROC=0.7192; TP=3794; FN=5874; FP=7047; TN=52405     
Epoch: 57/500; LR: 0.002489003; Total: loss=2.0105; Root: loss=1.1887; ROC=0.6776; TP=866; FN=1551; FP=2021; TN=12970
Step: 135/135; LR: 0.002489003; Total: loss=2.0505; Root: loss=1.1334; ROC=0.7207; TP=3828; FN=5847; FP=7102; TN=52343     
Epoch: 58/500; LR: 0.002389443; Total: loss=2.0935; Root: loss=1.1803; ROC=0.6807; TP=1083; FN=1339; FP=3007; TN=11979
Step: 135/135; LR: 0.002389443; Total: loss=1.7867; Root: loss=1.1294; ROC=0.7229; TP=3801; FN=5859; FP=6895; TN=52565     
Epoch: 59/500; LR: 0.002293865; Total: loss=2.1157; Root: loss=1.2308; ROC=0.6862; TP=761; FN=1669; FP=1488; TN=13490
Step: 135/135; LR: 0.002293865; Total: loss=1.5692; Root: loss=1.1264; ROC=0.7235; TP=3859; FN=5788; FP=7106; TN=52367     
Epoch: 60/500; LR: 0.002202111; Total: loss=2.2035; Root: loss=1.2209; ROC=0.6874; TP=788; FN=1630; FP=1597; TN=13393
Step: 135/135; LR: 0.002202111; Total: loss=1.6773; Root: loss=1.1253; ROC=0.7242; TP=3852; FN=5801; FP=7071; TN=52396     
Epoch: 61/500; LR: 0.002114026; Total: loss=2.1847; Root: loss=1.1954; ROC=0.6846; TP=814; FN=1608; FP=1675; TN=13311
Step: 135/135; LR: 0.002114026; Total: loss=1.9282; Root: loss=1.1225; ROC=0.7261; TP=3881; FN=5787; FP=6989; TN=52463     
Epoch: 62/500; LR: 0.002114026; Total: loss=2.0903; Root: loss=1.2033; ROC=0.6888; TP=742; FN=1685; FP=1392; TN=13589
Step: 135/135; LR: 0.002114026; Total: loss=1.5431; Root: loss=1.1206; ROC=0.7263; TP=3872; FN=5773; FP=7006; TN=52469     
Epoch: 63/500; LR: 0.002029465; Total: loss=2.0678; Root: loss=1.1771; ROC=0.691; TP=902; FN=1519; FP=1998; TN=12989
Step: 135/135; LR: 0.002029465; Total: loss=1.7474; Root: loss=1.1212; ROC=0.726; TP=3849; FN=5807; FP=6897; TN=52567      
Epoch: 64/500; LR: 0.001948287; Total: loss=2.1543; Root: loss=1.1572; ROC=0.6906; TP=1035; FN=1376; FP=2714; TN=12283
Step: 135/135; LR: 0.001948287; Total: loss=1.8196; Root: loss=1.1179; ROC=0.7295; TP=3864; FN=5798; FP=6764; TN=52694     
Epoch: 65/500; LR: 0.001870355; Total: loss=2.2141; Root: loss=1.1771; ROC=0.6943; TP=863; FN=1563; FP=1804; TN=13178
Step: 135/135; LR: 0.001870355; Total: loss=1.5346; Root: loss=1.1151; ROC=0.7297; TP=3888; FN=5757; FP=6778; TN=52697     
Epoch: 66/500; LR: 0.001795541; Total: loss=2.0864; Root: loss=1.1889; ROC=0.6929; TP=744; FN=1667; FP=1393; TN=13604
Step: 135/135; LR: 0.001795541; Total: loss=1.882; Root: loss=1.1153; ROC=0.731; TP=3888; FN=5778; FP=6815; TN=52639       
Epoch: 67/500; LR: 0.001723719; Total: loss=2.0258; Root: loss=1.2175; ROC=0.6896; TP=711; FN=1708; FP=1270; TN=13719
Step: 135/135; LR: 0.001723719; Total: loss=1.8183; Root: loss=1.1141; ROC=0.7312; TP=3854; FN=5807; FP=6641; TN=52818     
Epoch: 68/500; LR: 0.001654771; Total: loss=2.1158; Root: loss=1.2054; ROC=0.6858; TP=781; FN=1651; FP=1521; TN=13455
Step: 135/135; LR: 0.001654771; Total: loss=1.8139; Root: loss=1.1107; ROC=0.7327; TP=3904; FN=5758; FP=6772; TN=52686     
Epoch: 69/500; LR: 0.00158858; Total: loss=2.0937; Root: loss=1.1868; ROC=0.6943; TP=829; FN=1581; FP=1808; TN=13190
Step: 135/135; LR: 0.00158858; Total: loss=1.6963; Root: loss=1.1083; ROC=0.7336; TP=3890; FN=5765; FP=6698; TN=52767     
Epoch: 70/500; LR: 0.001525037; Total: loss=2.0922; Root: loss=1.1969; ROC=0.6911; TP=758; FN=1661; FP=1386; TN=13603
Step: 135/135; LR: 0.001525037; Total: loss=1.6311; Root: loss=1.1075; ROC=0.7338; TP=3897; FN=5753; FP=6721; TN=52749     
Epoch: 71/500; LR: 0.001464035; Total: loss=2.1781; Root: loss=1.2064; ROC=0.6935; TP=742; FN=1682; FP=1338; TN=13646
Step: 135/135; LR: 0.001464035; Total: loss=1.6046; Root: loss=1.1046; ROC=0.7354; TP=3937; FN=5713; FP=6744; TN=52726     
Epoch: 72/500; LR: 0.001405474; Total: loss=2.0412; Root: loss=1.2134; ROC=0.6888; TP=722; FN=1687; FP=1371; TN=13628
Step: 135/135; LR: 0.001405474; Total: loss=1.8508; Root: loss=1.1053; ROC=0.7359; TP=3926; FN=5738; FP=6672; TN=52784     
Epoch: 73/500; LR: 0.001349255; Total: loss=2.2062; Root: loss=1.2176; ROC=0.6897; TP=733; FN=1678; FP=1348; TN=13649
Step: 135/135; LR: 0.001349255; Total: loss=1.8926; Root: loss=1.105; ROC=0.7354; TP=3920; FN=5747; FP=6558; TN=52895      
Epoch: 74/500; LR: 0.001295285; Total: loss=2.2726; Root: loss=1.215; ROC=0.6952; TP=730; FN=1692; FP=1253; TN=13733
Step: 135/135; LR: 0.001295285; Total: loss=1.9674; Root: loss=1.1047; ROC=0.7364; TP=3937; FN=5733; FP=6619; TN=52831     
Epoch: 75/500; LR: 0.001243473; Total: loss=2.3057; Root: loss=1.2194; ROC=0.6829; TP=684; FN=1731; FP=1079; TN=13914
Step: 135/135; LR: 0.001243473; Total: loss=1.8224; Root: loss=1.1033; ROC=0.7368; TP=3902; FN=5760; FP=6520; TN=52938     
Epoch: 76/500; LR: 0.001193734; Total: loss=2.422; Root: loss=1.2219; ROC=0.6947; TP=716; FN=1715; FP=1198; TN=13779
Step: 135/135; LR: 0.001193734; Total: loss=1.8598; Root: loss=1.1005; ROC=0.7381; TP=3946; FN=5719; FP=6499; TN=52956     
Epoch: 77/500; LR: 0.001145985; Total: loss=2.2313; Root: loss=1.2227; ROC=0.697; TP=712; FN=1703; FP=1189; TN=13804
Step: 135/135; LR: 0.001145985; Total: loss=1.5862; Root: loss=1.0997; ROC=0.7377; TP=3935; FN=5712; FP=6482; TN=52991     
Epoch: 78/500; LR: 0.001100146; Total: loss=2.0014; Root: loss=1.2484; ROC=0.6849; TP=618; FN=1803; FP=902; TN=14085
Step: 135/135; LR: 0.001100146; Total: loss=2.1271; Root: loss=1.1015; ROC=0.7384; TP=3941; FN=5738; FP=6482; TN=52959     
Epoch: 79/500; LR: 0.00105614; Total: loss=2.0255; Root: loss=1.2362; ROC=0.685; TP=597; FN=1817; FP=814; TN=14180
Step: 135/135; LR: 0.00105614; Total: loss=1.8327; Root: loss=1.098; ROC=0.7397; TP=3916; FN=5745; FP=6380; TN=53079      
Epoch: 80/500; LR: 0.001013894; Total: loss=2.1867; Root: loss=1.2216; ROC=0.6914; TP=685; FN=1741; FP=1102; TN=13880
Step: 135/135; LR: 0.001013894; Total: loss=1.7758; Root: loss=1.0951; ROC=0.7407; TP=3960; FN=5700; FP=6462; TN=52998     
Epoch: 81/500; LR: 0.0009733384; Total: loss=2.2594; Root: loss=1.236; ROC=0.6871; TP=609; FN=1823; FP=878; TN=14098
Step: 135/135; LR: 0.0009733384; Total: loss=1.6128; Root: loss=1.0937; ROC=0.7409; TP=3932; FN=5717; FP=6374; TN=53097     
Epoch: 82/500; LR: 0.0009344049; Total: loss=2.2794; Root: loss=1.2283; ROC=0.6918; TP=669; FN=1746; FP=1029; TN=13964
Step: 135/135; LR: 0.0009344049; Total: loss=1.8056; Root: loss=1.0929; ROC=0.7417; TP=3977; FN=5684; FP=6446; TN=53013     
Epoch: 83/500; LR: 0.0008970287; Total: loss=2.2971; Root: loss=1.2237; ROC=0.6934; TP=621; FN=1792; FP=913; TN=14082
Step: 135/135; LR: 0.0008970287; Total: loss=1.6843; Root: loss=1.0902; ROC=0.7427; TP=3997; FN=5657; FP=6426; TN=53040     
Epoch: 84/500; LR: 0.0008611476; Total: loss=2.2424; Root: loss=1.2374; ROC=0.696; TP=639; FN=1799; FP=875; TN=14095
Step: 135/135; LR: 0.0008611476; Total: loss=1.8827; Root: loss=1.0904; ROC=0.7433; TP=4013; FN=5652; FP=6478; TN=52977     
Epoch: 85/500; LR: 0.0008267017; Total: loss=2.3077; Root: loss=1.1936; ROC=0.6978; TP=728; FN=1690; FP=1245; TN=13745
Step: 135/135; LR: 0.0008267017; Total: loss=1.7315; Root: loss=1.0888; ROC=0.7436; TP=4006; FN=5651; FP=6471; TN=52992     
Epoch: 86/500; LR: 0.0008267017; Total: loss=2.1762; Root: loss=1.1971; ROC=0.6989; TP=740; FN=1684; FP=1225; TN=13759
Step: 135/135; LR: 0.0008267017; Total: loss=1.7453; Root: loss=1.0868; ROC=0.7447; TP=4013; FN=5646; FP=6488; TN=52973     
Epoch: 87/500; LR: 0.0007936336; Total: loss=2.1148; Root: loss=1.2058; ROC=0.7013; TP=730; FN=1706; FP=1159; TN=13813
Step: 135/135; LR: 0.0007936336; Total: loss=1.7108; Root: loss=1.088; ROC=0.7434; TP=4018; FN=5636; FP=6435; TN=53031      
Epoch: 88/500; LR: 0.0007618883; Total: loss=2.1548; Root: loss=1.1758; ROC=0.7034; TP=784; FN=1641; FP=1359; TN=13624
Step: 135/135; LR: 0.0007618883; Total: loss=1.7336; Root: loss=1.0865; ROC=0.7445; TP=3975; FN=5681; FP=6298; TN=53166     
Epoch: 89/500; LR: 0.0007314127; Total: loss=2.2205; Root: loss=1.1946; ROC=0.698; TP=710; FN=1716; FP=1088; TN=13894
Step: 135/135; LR: 0.0007314127; Total: loss=1.7801; Root: loss=1.0862; ROC=0.745; TP=3998; FN=5661; FP=6296; TN=53165      
Epoch: 90/500; LR: 0.0007021562; Total: loss=2.1929; Root: loss=1.189; ROC=0.698; TP=735; FN=1682; FP=1195; TN=13796
Step: 135/135; LR: 0.0007021562; Total: loss=1.6884; Root: loss=1.0854; ROC=0.7446; TP=4004; FN=5650; FP=6322; TN=53144     
Epoch: 91/500; LR: 0.00067407; Total: loss=2.0636; Root: loss=1.184; ROC=0.6982; TP=766; FN=1656; FP=1311; TN=13675
Step: 135/135; LR: 0.00067407; Total: loss=1.8953; Root: loss=1.0855; ROC=0.745; TP=4034; FN=5631; FP=6386; TN=53069      
Epoch: 92/500; LR: 0.0006471072; Total: loss=2.2172; Root: loss=1.1876; ROC=0.6964; TP=753; FN=1677; FP=1260; TN=13718
Step: 135/135; LR: 0.0006471072; Total: loss=2.0694; Root: loss=1.0846; ROC=0.7463; TP=4053; FN=5623; FP=6319; TN=53125     
Epoch: 93/500; LR: 0.0006212229; Total: loss=2.2516; Root: loss=1.1811; ROC=0.6984; TP=755; FN=1663; FP=1224; TN=13766
Step: 135/135; LR: 0.0006212229; Total: loss=1.7893; Root: loss=1.0816; ROC=0.7467; TP=4073; FN=5589; FP=6453; TN=53005     
Epoch: 94/500; LR: 0.000596374; Total: loss=1.9927; Root: loss=1.1791; ROC=0.6986; TP=770; FN=1652; FP=1295; TN=13691
Step: 135/135; LR: 0.000596374; Total: loss=1.8984; Root: loss=1.0824; ROC=0.7463; TP=4067; FN=5600; FP=6343; TN=53110     
Epoch: 95/500; LR: 0.000572519; Total: loss=2.1759; Root: loss=1.1791; ROC=0.6987; TP=756; FN=1671; FP=1248; TN=13733
Step: 135/135; LR: 0.000572519; Total: loss=1.9989; Root: loss=1.0818; ROC=0.7465; TP=4060; FN=5613; FP=6332; TN=53115     
Epoch: 96/500; LR: 0.0005496183; Total: loss=2.0675; Root: loss=1.1736; ROC=0.6995; TP=754; FN=1667; FP=1262; TN=13725
Step: 135/135; LR: 0.0005496183; Total: loss=1.6646; Root: loss=1.0787; ROC=0.7476; TP=4067; FN=5585; FP=6367; TN=53101     
Epoch: 97/500; LR: 0.0005276335; Total: loss=1.9748; Root: loss=1.1628; ROC=0.6954; TP=761; FN=1650; FP=1285; TN=13712
Step: 135/135; LR: 0.0005276335; Total: loss=1.7891; Root: loss=1.0789; ROC=0.748; TP=4085; FN=5575; FP=6305; TN=53155      
Epoch: 98/500; LR: 0.0005065282; Total: loss=2.0177; Root: loss=1.1518; ROC=0.6946; TP=879; FN=1547; FP=1838; TN=13144
Step: 135/135; LR: 0.0005065282; Total: loss=1.7941; Root: loss=1.0771; ROC=0.7489; TP=4092; FN=5568; FP=6269; TN=53191     
Epoch: 99/500; LR: 0.0004862671; Total: loss=2.2007; Root: loss=1.1509; ROC=0.6966; TP=868; FN=1543; FP=1798; TN=13199
Step: 135/135; LR: 0.0004862671; Total: loss=1.8092; Root: loss=1.0753; ROC=0.7502; TP=4084; FN=5578; FP=6294; TN=53164     
Epoch: 100/500; LR: 0.0004668164; Total: loss=2.1902; Root: loss=1.1504; ROC=0.6937; TP=886; FN=1533; FP=1885; TN=13104
Step: 135/135; LR: 0.0004668164; Total: loss=1.8042; Root: loss=1.0749; ROC=0.75; TP=4067; FN=5594; FP=6175; TN=53284       
Epoch: 101/500; LR: 0.0004481437; Total: loss=2.0378; Root: loss=1.1537; ROC=0.694; TP=882; FN=1550; FP=1828; TN=13148
Step: 135/135; LR: 0.0004481437; Total: loss=1.8097; Root: loss=1.0748; ROC=0.7504; TP=4093; FN=5567; FP=6227; TN=53233     
Epoch: 102/500; LR: 0.000430218; Total: loss=2.1536; Root: loss=1.1413; ROC=0.6984; TP=888; FN=1522; FP=1885; TN=13113
Step: 135/135; LR: 0.000430218; Total: loss=1.8211; Root: loss=1.0744; ROC=0.7505; TP=4092; FN=5569; FP=6231; TN=53228     
Epoch: 103/500; LR: 0.0004130093; Total: loss=2.1603; Root: loss=1.1476; ROC=0.7005; TP=912; FN=1507; FP=1961; TN=13028
Step: 135/135; LR: 0.0004130093; Total: loss=1.8354; Root: loss=1.0729; ROC=0.7513; TP=4082; FN=5581; FP=6232; TN=53225     
Epoch: 104/500; LR: 0.0003964889; Total: loss=2.2798; Root: loss=1.1473; ROC=0.7006; TP=911; FN=1513; FP=1968; TN=13016
Step: 135/135; LR: 0.0003964889; Total: loss=1.8234; Root: loss=1.0721; ROC=0.7515; TP=4096; FN=5566; FP=6232; TN=53226     
Epoch: 105/500; LR: 0.0003806293; Total: loss=2.0864; Root: loss=1.1515; ROC=0.6919; TP=887; FN=1522; FP=1898; TN=13101
Step: 135/135; LR: 0.0003806293; Total: loss=1.8098; Root: loss=1.0713; ROC=0.7517; TP=4080; FN=5582; FP=6210; TN=53248     
Epoch: 106/500; LR: 0.0003654042; Total: loss=2.0685; Root: loss=1.1558; ROC=0.6932; TP=863; FN=1548; FP=1819; TN=13178
Step: 135/135; LR: 0.0003654042; Total: loss=1.6061; Root: loss=1.0694; ROC=0.7524; TP=4087; FN=5562; FP=6188; TN=53283     
Epoch: 107/500; LR: 0.000350788; Total: loss=2.1784; Root: loss=1.1555; ROC=0.6972; TP=890; FN=1532; FP=1865; TN=13121
Step: 135/135; LR: 0.000350788; Total: loss=1.7547; Root: loss=1.0684; ROC=0.7533; TP=4099; FN=5560; FP=6160; TN=53301     
Epoch: 108/500; LR: 0.0003367565; Total: loss=2.083; Root: loss=1.1632; ROC=0.6967; TP=863; FN=1552; FP=1823; TN=13170
Step: 135/135; LR: 0.0003367565; Total: loss=1.9313; Root: loss=1.0693; ROC=0.7529; TP=4096; FN=5572; FP=6166; TN=53286     
Epoch: 109/500; LR: 0.0003232862; Total: loss=2.0039; Root: loss=1.162; ROC=0.6981; TP=882; FN=1549; FP=1856; TN=13121
Step: 135/135; LR: 0.0003232862; Total: loss=1.5021; Root: loss=1.067; ROC=0.7534; TP=4105; FN=5538; FP=6164; TN=53313      
Epoch: 110/500; LR: 0.0003103547; Total: loss=2.1333; Root: loss=1.1563; ROC=0.6994; TP=869; FN=1546; FP=1790; TN=13203
Step: 135/135; LR: 0.0003103547; Total: loss=1.7486; Root: loss=1.0667; ROC=0.754; TP=4114; FN=5544; FP=6150; TN=53312      
Epoch: 111/500; LR: 0.0002979406; Total: loss=1.9716; Root: loss=1.1562; ROC=0.6995; TP=877; FN=1544; FP=1806; TN=13181
Step: 135/135; LR: 0.0002979406; Total: loss=1.777; Root: loss=1.0666; ROC=0.7542; TP=4112; FN=5547; FP=6152; TN=53309      
Epoch: 112/500; LR: 0.000286023; Total: loss=2.0169; Root: loss=1.1567; ROC=0.7003; TP=869; FN=1545; FP=1770; TN=13224
Step: 135/135; LR: 0.000286023; Total: loss=1.7036; Root: loss=1.0659; ROC=0.7543; TP=4104; FN=5550; FP=6166; TN=53300     
Epoch: 113/500; LR: 0.000274582; Total: loss=2.0767; Root: loss=1.1605; ROC=0.6978; TP=870; FN=1556; FP=1835; TN=13147
Step: 135/135; LR: 0.000274582; Total: loss=2.114; Root: loss=1.0665; ROC=0.7551; TP=4124; FN=5556; FP=6140; TN=53300      
Epoch: 114/500; LR: 0.0002635987; Total: loss=2.0987; Root: loss=1.1649; ROC=0.7015; TP=866; FN=1566; FP=1811; TN=13165
Step: 135/135; LR: 0.0002635987; Total: loss=1.9482; Root: loss=1.0647; ROC=0.755; TP=4127; FN=5543; FP=6098; TN=53352      
Epoch: 115/500; LR: 0.0002530548; Total: loss=2.0332; Root: loss=1.1601; ROC=0.7023; TP=851; FN=1564; FP=1728; TN=13265
Step: 135/135; LR: 0.0002530548; Total: loss=1.5573; Root: loss=1.063; ROC=0.7552; TP=4118; FN=5528; FP=6101; TN=53373      
Epoch: 116/500; LR: 0.0002429326; Total: loss=2.0474; Root: loss=1.1564; ROC=0.7029; TP=792; FN=1621; FP=1374; TN=13621
Step: 135/135; LR: 0.0002429326; Total: loss=1.7202; Root: loss=1.0628; ROC=0.7556; TP=4131; FN=5526; FP=6061; TN=53402     
Epoch: 117/500; LR: 0.0002332153; Total: loss=2.0546; Root: loss=1.1697; ROC=0.702; TP=787; FN=1651; FP=1310; TN=13660
Step: 135/135; LR: 0.0002332153; Total: loss=1.8027; Root: loss=1.0626; ROC=0.7557; TP=4136; FN=5526; FP=6034; TN=53424     
Epoch: 118/500; LR: 0.0002238867; Total: loss=2.0694; Root: loss=1.1592; ROC=0.705; TP=783; FN=1635; FP=1344; TN=13646
Step: 135/135; LR: 0.0002238867; Total: loss=1.7351; Root: loss=1.0616; ROC=0.7562; TP=4125; FN=5533; FP=6058; TN=53404     
Epoch: 119/500; LR: 0.0002149312; Total: loss=2.1747; Root: loss=1.167; ROC=0.7034; TP=778; FN=1646; FP=1328; TN=13656
Step: 135/135; LR: 0.0002149312; Total: loss=2.0353; Root: loss=1.0628; ROC=0.7559; TP=4141; FN=5534; FP=6029; TN=53416     
Epoch: 120/500; LR: 0.000206334; Total: loss=2.0846; Root: loss=1.166; ROC=0.7088; TP=798; FN=1638; FP=1339; TN=13633
Step: 135/135; LR: 0.000206334; Total: loss=1.7434; Root: loss=1.0611; ROC=0.7562; TP=4130; FN=5528; FP=6062; TN=53400     
Epoch: 121/500; LR: 0.0001980806; Total: loss=2.0399; Root: loss=1.1674; ROC=0.7079; TP=799; FN=1626; FP=1381; TN=13602
Step: 135/135; LR: 0.0001980806; Total: loss=1.9052; Root: loss=1.0608; ROC=0.7565; TP=4156; FN=5512; FP=6085; TN=53367     
Epoch: 122/500; LR: 0.0001901574; Total: loss=2.0093; Root: loss=1.1691; ROC=0.7069; TP=781; FN=1645; FP=1333; TN=13649
Step: 135/135; LR: 0.0001901574; Total: loss=1.7569; Root: loss=1.0605; ROC=0.7563; TP=4152; FN=5506; FP=6063; TN=53399     
Epoch: 123/500; LR: 0.0001825511; Total: loss=2.0712; Root: loss=1.1686; ROC=0.7063; TP=773; FN=1644; FP=1326; TN=13665
Step: 135/135; LR: 0.0001825511; Total: loss=1.7055; Root: loss=1.0598; ROC=0.7567; TP=4153; FN=5502; FP=6086; TN=53379     
Epoch: 124/500; LR: 0.000175249; Total: loss=2.1079; Root: loss=1.1673; ROC=0.7084; TP=803; FN=1619; FP=1412; TN=13574
Step: 135/135; LR: 0.000175249; Total: loss=1.7697; Root: loss=1.0598; ROC=0.7568; TP=4153; FN=5506; FP=6079; TN=53382     
Epoch: 125/500; LR: 0.000175249; Total: loss=1.985; Root: loss=1.1649; ROC=0.7096; TP=811; FN=1619; FP=1412; TN=13566
Step: 135/135; LR: 0.000175249; Total: loss=1.9563; Root: loss=1.0603; ROC=0.757; TP=4144; FN=5525; FP=6011; TN=53440      
Epoch: 126/500; LR: 0.0001682391; Total: loss=2.1344; Root: loss=1.1621; ROC=0.7076; TP=828; FN=1590; FP=1483; TN=13507
Step: 135/135; LR: 0.0001682391; Total: loss=2.0371; Root: loss=1.0598; ROC=0.7572; TP=4171; FN=5504; FP=6057; TN=53388     
Epoch: 127/500; LR: 0.0001615095; Total: loss=1.9708; Root: loss=1.1625; ROC=0.7095; TP=825; FN=1597; FP=1472; TN=13514
Step: 135/135; LR: 0.0001615095; Total: loss=1.6433; Root: loss=1.058; ROC=0.7572; TP=4167; FN=5484; FP=6080; TN=53389      
Epoch: 128/500; LR: 0.0001550491; Total: loss=2.0801; Root: loss=1.1607; ROC=0.7101; TP=836; FN=1591; FP=1474; TN=13507
Step: 135/135; LR: 0.0001550491; Total: loss=1.5955; Root: loss=1.0578; ROC=0.7572; TP=4159; FN=5489; FP=6035; TN=53437     
Epoch: 129/500; LR: 0.0001488472; Total: loss=2.0792; Root: loss=1.1599; ROC=0.7094; TP=809; FN=1612; FP=1405; TN=13582
Step: 135/135; LR: 0.0001488472; Total: loss=1.7475; Root: loss=1.0577; ROC=0.7577; TP=4175; FN=5483; FP=6041; TN=53421     
Epoch: 130/500; LR: 0.0001428933; Total: loss=1.8957; Root: loss=1.1579; ROC=0.7081; TP=808; FN=1603; FP=1411; TN=13586
Step: 135/135; LR: 0.0001428933; Total: loss=1.776; Root: loss=1.0573; ROC=0.7575; TP=4165; FN=5494; FP=6023; TN=53438      
Epoch: 131/500; LR: 0.0001371776; Total: loss=2.0099; Root: loss=1.158; ROC=0.7096; TP=814; FN=1612; FP=1409; TN=13573
Step: 135/135; LR: 0.0001371776; Total: loss=1.763; Root: loss=1.0571; ROC=0.7577; TP=4162; FN=5497; FP=5992; TN=53469      
Epoch: 132/500; LR: 0.0001316905; Total: loss=2.1826; Root: loss=1.1565; ROC=0.7093; TP=808; FN=1603; FP=1402; TN=13595
Step: 135/135; LR: 0.0001316905; Total: loss=1.7158; Root: loss=1.0562; ROC=0.7579; TP=4174; FN=5482; FP=6025; TN=53439     
Epoch: 133/500; LR: 0.0001264228; Total: loss=2.0975; Root: loss=1.1573; ROC=0.7081; TP=826; FN=1593; FP=1463; TN=13526
Step: 135/135; LR: 0.0001264228; Total: loss=1.8265; Root: loss=1.0567; ROC=0.7579; TP=4176; FN=5487; FP=5996; TN=53461     
Epoch: 134/500; LR: 0.0001213659; Total: loss=2.0267; Root: loss=1.1587; ROC=0.7105; TP=821; FN=1611; FP=1421; TN=13555
Step: 135/135; LR: 0.0001213659; Total: loss=1.7474; Root: loss=1.056; ROC=0.758; TP=4171; FN=5487; FP=5997; TN=53465       
Epoch: 135/500; LR: 0.0001165113; Total: loss=2.1645; Root: loss=1.1503; ROC=0.7113; TP=819; FN=1591; FP=1404; TN=13594
Step: 135/135; LR: 0.0001165113; Total: loss=1.926; Root: loss=1.0559; ROC=0.7587; TP=4182; FN=5487; FP=5980; TN=53471      
Epoch: 136/500; LR: 0.0001118508; Total: loss=2.1987; Root: loss=1.151; ROC=0.711; TP=831; FN=1588; FP=1404; TN=13585
Step: 135/135; LR: 0.0001118508; Total: loss=1.833; Root: loss=1.056; ROC=0.7585; TP=4182; FN=5481; FP=6026; TN=53431       
Epoch: 137/500; LR: 0.0001073768; Total: loss=2.174; Root: loss=1.1519; ROC=0.7109; TP=830; FN=1594; FP=1416; TN=13568
Step: 135/135; LR: 0.0001073768; Total: loss=1.7487; Root: loss=1.0546; ROC=0.7591; TP=4193; FN=5466; FP=6028; TN=53433     
Epoch: 138/500; LR: 0.0001030817; Total: loss=2.1395; Root: loss=1.1517; ROC=0.7091; TP=819; FN=1590; FP=1403; TN=13596
Step: 135/135; LR: 0.0001030817; Total: loss=1.7648; Root: loss=1.0554; ROC=0.7587; TP=4179; FN=5479; FP=6025; TN=53437     
Epoch: 139/500; LR: 9.89585e-05; Total: loss=2.1735; Root: loss=1.1504; ROC=0.7095; TP=825; FN=1586; FP=1412; TN=13585
Step: 135/135; LR: 9.89585e-05; Total: loss=1.7884; Root: loss=1.0545; ROC=0.759; TP=4191; FN=5470; FP=6047; TN=53412      
Epoch: 140/500; LR: 9.50001e-05; Total: loss=2.1493; Root: loss=1.1517; ROC=0.7093; TP=833; FN=1589; FP=1397; TN=13589
Step: 135/135; LR: 9.50001e-05; Total: loss=1.8309; Root: loss=1.0545; ROC=0.7591; TP=4187; FN=5475; FP=6032; TN=53426     
Epoch: 141/500; LR: 9.12001e-05; Total: loss=2.0448; Root: loss=1.1515; ROC=0.7079; TP=824; FN=1591; FP=1403; TN=13590
Step: 135/135; LR: 9.12001e-05; Total: loss=1.4844; Root: loss=1.053; ROC=0.7594; TP=4190; FN=5453; FP=6051; TN=53426      
Epoch: 142/500; LR: 8.75521e-05; Total: loss=2.1145; Root: loss=1.156; ROC=0.7082; TP=824; FN=1607; FP=1418; TN=13559
Step: 135/135; LR: 8.75521e-05; Total: loss=1.8519; Root: loss=1.0543; ROC=0.7597; TP=4185; FN=5479; FP=6011; TN=53445     
Epoch: 143/500; LR: 8.405e-05; Total: loss=2.0667; Root: loss=1.147; ROC=0.7108; TP=837; FN=1578; FP=1417; TN=13576
Step: 135/135; LR: 8.405e-05; Total: loss=1.6643; Root: loss=1.0535; ROC=0.7596; TP=4172; FN=5480; FP=5962; TN=53506     
Epoch: 144/500; LR: 8.0688e-05; Total: loss=1.9706; Root: loss=1.1494; ROC=0.7101; TP=821; FN=1600; FP=1387; TN=13600
Step: 135/135; LR: 8.0688e-05; Total: loss=1.6778; Root: loss=1.0523; ROC=0.7604; TP=4183; FN=5472; FP=5957; TN=53508     
Epoch: 145/500; LR: 7.74605e-05; Total: loss=2.0425; Root: loss=1.1443; ROC=0.7111; TP=826; FN=1588; FP=1392; TN=13602
Step: 135/135; LR: 7.74605e-05; Total: loss=1.8228; Root: loss=1.0527; ROC=0.7604; TP=4189; FN=5474; FP=5959; TN=53498     
Epoch: 146/500; LR: 7.43621e-05; Total: loss=2.0132; Root: loss=1.1499; ROC=0.7099; TP=822; FN=1604; FP=1389; TN=13593
Step: 135/135; LR: 7.43621e-05; Total: loss=1.7654; Root: loss=1.0525; ROC=0.7607; TP=4188; FN=5471; FP=5973; TN=53488     
Epoch: 147/500; LR: 7.13876e-05; Total: loss=2.1062; Root: loss=1.1532; ROC=0.709; TP=822; FN=1610; FP=1382; TN=13594
Step: 135/135; LR: 7.13876e-05; Total: loss=1.6397; Root: loss=1.0518; ROC=0.7607; TP=4181; FN=5471; FP=5926; TN=53542     
Epoch: 148/500; LR: 6.85321e-05; Total: loss=2.0734; Root: loss=1.146; ROC=0.7101; TP=821; FN=1594; FP=1381; TN=13612
Step: 135/135; LR: 6.85321e-05; Total: loss=1.621; Root: loss=1.0514; ROC=0.7608; TP=4188; FN=5463; FP=5927; TN=53542      
Epoch: 149/500; LR: 6.57908e-05; Total: loss=2.0267; Root: loss=1.1443; ROC=0.7108; TP=822; FN=1591; FP=1382; TN=13613
Step: 135/135; LR: 6.57908e-05; Total: loss=1.884; Root: loss=1.0527; ROC=0.7607; TP=4195; FN=5471; FP=5917; TN=53537      
Epoch: 150/500; LR: 6.31592e-05; Total: loss=2.027; Root: loss=1.1521; ROC=0.7095; TP=831; FN=1607; FP=1384; TN=13586
Step: 135/135; LR: 6.31592e-05; Total: loss=1.7495; Root: loss=1.0516; ROC=0.7611; TP=4194; FN=5464; FP=5911; TN=53551     
Epoch: 151/500; LR: 6.06328e-05; Total: loss=1.9975; Root: loss=1.1457; ROC=0.7107; TP=823; FN=1595; FP=1400; TN=13590
Step: 135/135; LR: 6.06328e-05; Total: loss=1.782; Root: loss=1.0518; ROC=0.7611; TP=4188; FN=5472; FP=5867; TN=53593      
Epoch: 152/500; LR: 5.82075e-05; Total: loss=2.0053; Root: loss=1.1486; ROC=0.7083; TP=816; FN=1608; FP=1379; TN=13605
Step: 135/135; LR: 5.82075e-05; Total: loss=1.9998; Root: loss=1.0529; ROC=0.761; TP=4180; FN=5492; FP=5878; TN=53570      
Epoch: 153/500; LR: 5.58792e-05; Total: loss=2.0605; Root: loss=1.1466; ROC=0.7115; TP=832; FN=1604; FP=1378; TN=13594
Step: 135/135; LR: 5.58792e-05; Total: loss=2.0055; Root: loss=1.0521; ROC=0.7615; TP=4198; FN=5475; FP=5901; TN=53546     
Epoch: 154/500; LR: 5.3644e-05; Total: loss=2.0811; Root: loss=1.1442; ROC=0.7103; TP=836; FN=1589; FP=1401; TN=13582
Step: 135/135; LR: 5.3644e-05; Total: loss=1.9581; Root: loss=1.0515; ROC=0.7616; TP=4198; FN=5473; FP=5887; TN=53562     
Epoch: 155/500; LR: 5.14983e-05; Total: loss=2.0818; Root: loss=1.1482; ROC=0.7091; TP=833; FN=1593; FP=1407; TN=13575
Step: 135/135; LR: 5.14983e-05; Total: loss=1.7403; Root: loss=1.0502; ROC=0.762; TP=4197; FN=5461; FP=5906; TN=53556      
Epoch: 156/500; LR: 4.94383e-05; Total: loss=2.0515; Root: loss=1.1457; ROC=0.7082; TP=824; FN=1593; FP=1413; TN=13578
Step: 135/135; LR: 4.94383e-05; Total: loss=1.929; Root: loss=1.0509; ROC=0.762; TP=4212; FN=5457; FP=5899; TN=53552       
Epoch: 157/500; LR: 4.74608e-05; Total: loss=2.0349; Root: loss=1.1447; ROC=0.7103; TP=833; FN=1589; FP=1413; TN=13573
Step: 135/135; LR: 4.74608e-05; Total: loss=1.822; Root: loss=1.0509; ROC=0.7616; TP=4184; FN=5478; FP=5905; TN=53553      
Epoch: 158/500; LR: 4.55624e-05; Total: loss=2.0394; Root: loss=1.1431; ROC=0.7122; TP=844; FN=1586; FP=1426; TN=13552
Step: 135/135; LR: 4.55624e-05; Total: loss=1.7001; Root: loss=1.0498; ROC=0.7619; TP=4181; FN=5474; FP=5882; TN=53583     
Epoch: 159/500; LR: 4.37399e-05; Total: loss=2.0957; Root: loss=1.1418; ROC=0.7104; TP=835; FN=1583; FP=1413; TN=13577
Step: 135/135; LR: 4.37399e-05; Total: loss=1.8323; Root: loss=1.0493; ROC=0.7626; TP=4203; FN=5462; FP=5893; TN=53562     
Epoch: 160/500; LR: 4.19903e-05; Total: loss=2.067; Root: loss=1.1418; ROC=0.7119; TP=837; FN=1585; FP=1421; TN=13565
Step: 135/135; LR: 4.19903e-05; Total: loss=1.9021; Root: loss=1.0503; ROC=0.7621; TP=4216; FN=5450; FP=5930; TN=53524     
Epoch: 161/500; LR: 4.03107e-05; Total: loss=2.0955; Root: loss=1.1407; ROC=0.7132; TP=840; FN=1587; FP=1411; TN=13570
Step: 135/135; LR: 4.03107e-05; Total: loss=1.6684; Root: loss=1.0489; ROC=0.7621; TP=4215; FN=5438; FP=5945; TN=53522     
Epoch: 162/500; LR: 3.86982e-05; Total: loss=2.0617; Root: loss=1.142; ROC=0.7113; TP=833; FN=1588; FP=1409; TN=13578
Step: 135/135; LR: 3.86982e-05; Total: loss=1.8281; Root: loss=1.0495; ROC=0.7622; TP=4210; FN=5452; FP=5902; TN=53556     
Epoch: 163/500; LR: 3.71503e-05; Total: loss=2.0662; Root: loss=1.1392; ROC=0.7107; TP=831; FN=1580; FP=1414; TN=13583
Step: 135/135; LR: 3.71503e-05; Total: loss=1.6735; Root: loss=1.0487; ROC=0.7625; TP=4210; FN=5443; FP=5912; TN=53555     
Epoch: 164/500; LR: 3.56643e-05; Total: loss=2.0885; Root: loss=1.1394; ROC=0.7127; TP=842; FN=1584; FP=1421; TN=13561
Step: 135/135; LR: 3.56643e-05; Total: loss=1.8986; Root: loss=1.0492; ROC=0.7628; TP=4222; FN=5444; FP=5931; TN=53523     
Epoch: 165/500; LR: 3.42377e-05; Total: loss=2.0773; Root: loss=1.1387; ROC=0.7111; TP=832; FN=1579; FP=1413; TN=13584
Step: 135/135; LR: 3.42377e-05; Total: loss=1.9352; Root: loss=1.0498; ROC=0.7625; TP=4218; FN=5451; FP=5910; TN=53541     
Epoch: 166/500; LR: 3.28682e-05; Total: loss=2.0805; Root: loss=1.1402; ROC=0.7111; TP=841; FN=1578; FP=1435; TN=13554
Step: 135/135; LR: 3.28682e-05; Total: loss=1.8348; Root: loss=1.0494; ROC=0.7628; TP=4217; FN=5445; FP=5939; TN=53519     
Epoch: 167/500; LR: 3.15535e-05; Total: loss=2.0515; Root: loss=1.1432; ROC=0.7117; TP=839; FN=1593; FP=1416; TN=13560
Step: 135/135; LR: 3.15535e-05; Total: loss=1.9872; Root: loss=1.0487; ROC=0.7633; TP=4234; FN=5439; FP=5923; TN=53524     
Epoch: 168/500; LR: 3.05176e-05; Total: loss=2.0573; Root: loss=1.1354; ROC=0.7129; TP=839; FN=1571; FP=1424; TN=13574
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5407; Root: loss=1.047; ROC=0.7631; TP=4216; FN=5430; FP=5913; TN=53561      
Epoch: 169/500; LR: 3.05176e-05; Total: loss=2.0764; Root: loss=1.1369; ROC=0.7137; TP=846; FN=1573; FP=1417; TN=13572
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8798; Root: loss=1.0486; ROC=0.763; TP=4227; FN=5439; FP=5903; TN=53551      
Epoch: 170/500; LR: 3.05176e-05; Total: loss=2.0619; Root: loss=1.1384; ROC=0.7141; TP=842; FN=1582; FP=1423; TN=13561
Step: 135/135; LR: 3.05176e-05; Total: loss=2.1305; Root: loss=1.0498; ROC=0.7633; TP=4220; FN=5460; FP=5880; TN=53560     
Epoch: 171/500; LR: 3.05176e-05; Total: loss=2.0526; Root: loss=1.1366; ROC=0.712; TP=829; FN=1580; FP=1420; TN=13579
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7005; Root: loss=1.0473; ROC=0.7636; TP=4223; FN=5432; FP=5894; TN=53571     
Epoch: 172/500; LR: 3.05176e-05; Total: loss=2.0334; Root: loss=1.1368; ROC=0.7121; TP=830; FN=1581; FP=1428; TN=13569
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7425; Root: loss=1.0476; ROC=0.7635; TP=4225; FN=5433; FP=5895; TN=53567     
Epoch: 173/500; LR: 3.05176e-05; Total: loss=2.0514; Root: loss=1.1391; ROC=0.7121; TP=839; FN=1583; FP=1417; TN=13569
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7928; Root: loss=1.0478; ROC=0.7634; TP=4230; FN=5431; FP=5892; TN=53567     
Epoch: 174/500; LR: 3.05176e-05; Total: loss=2.059; Root: loss=1.1403; ROC=0.7106; TP=836; FN=1579; FP=1423; TN=13570
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8801; Root: loss=1.0485; ROC=0.7631; TP=4232; FN=5433; FP=5920; TN=53535     
Epoch: 175/500; LR: 3.05176e-05; Total: loss=2.0394; Root: loss=1.1431; ROC=0.7108; TP=842; FN=1589; FP=1435; TN=13542
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7558; Root: loss=1.047; ROC=0.7637; TP=4240; FN=5420; FP=5920; TN=53540      
Epoch: 176/500; LR: 3.05176e-05; Total: loss=1.9962; Root: loss=1.1353; ROC=0.7131; TP=845; FN=1570; FP=1434; TN=13559
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5878; Root: loss=1.0469; ROC=0.7634; TP=4226; FN=5422; FP=5921; TN=53551     
Epoch: 177/500; LR: 3.05176e-05; Total: loss=1.9879; Root: loss=1.1377; ROC=0.7129; TP=847; FN=1574; FP=1421; TN=13566
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7062; Root: loss=1.047; ROC=0.7637; TP=4231; FN=5425; FP=5927; TN=53537      
Epoch: 178/500; LR: 3.05176e-05; Total: loss=1.975; Root: loss=1.1339; ROC=0.714; TP=849; FN=1565; FP=1425; TN=13569
Step: 135/135; LR: 3.05176e-05; Total: loss=1.819; Root: loss=1.0474; ROC=0.7638; TP=4234; FN=5428; FP=5918; TN=53540      
Epoch: 179/500; LR: 3.05176e-05; Total: loss=1.9678; Root: loss=1.1391; ROC=0.7123; TP=848; FN=1578; FP=1438; TN=13544
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7465; Root: loss=1.0466; ROC=0.764; TP=4237; FN=5422; FP=5902; TN=53559      
Epoch: 180/500; LR: 3.05176e-05; Total: loss=1.9901; Root: loss=1.1422; ROC=0.7114; TP=844; FN=1588; FP=1432; TN=13544
Step: 135/135; LR: 3.05176e-05; Total: loss=2.0586; Root: loss=1.0483; ROC=0.7637; TP=4237; FN=5439; FP=5916; TN=53528     
Epoch: 181/500; LR: 3.05176e-05; Total: loss=1.9408; Root: loss=1.1351; ROC=0.7121; TP=861; FN=1554; FP=1522; TN=13471
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8631; Root: loss=1.0474; ROC=0.7638; TP=4226; FN=5439; FP=5894; TN=53561     
Epoch: 182/500; LR: 3.05176e-05; Total: loss=1.9404; Root: loss=1.1343; ROC=0.7127; TP=861; FN=1552; FP=1522; TN=13473
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8156; Root: loss=1.0471; ROC=0.7639; TP=4228; FN=5434; FP=5890; TN=53568     
Epoch: 183/500; LR: 3.05176e-05; Total: loss=1.9919; Root: loss=1.1419; ROC=0.7118; TP=873; FN=1565; FP=1521; TN=13449
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6983; Root: loss=1.0463; ROC=0.764; TP=4227; FN=5429; FP=5894; TN=53570      
Epoch: 184/500; LR: 3.05176e-05; Total: loss=1.951; Root: loss=1.1366; ROC=0.7126; TP=863; FN=1555; FP=1541; TN=13449
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8369; Root: loss=1.0472; ROC=0.7638; TP=4216; FN=5447; FP=5891; TN=53566     
Epoch: 185/500; LR: 3.05176e-05; Total: loss=1.9613; Root: loss=1.1397; ROC=0.7099; TP=861; FN=1563; FP=1540; TN=13444
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7711; Root: loss=1.0466; ROC=0.764; TP=4221; FN=5438; FP=5877; TN=53584      
Epoch: 186/500; LR: 3.05176e-05; Total: loss=1.9346; Root: loss=1.1379; ROC=0.7136; TP=880; FN=1556; FP=1536; TN=13436
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7007; Root: loss=1.0463; ROC=0.764; TP=4216; FN=5440; FP=5873; TN=53591      
Epoch: 187/500; LR: 3.05176e-05; Total: loss=1.9297; Root: loss=1.1362; ROC=0.7122; TP=870; FN=1555; FP=1546; TN=13437
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8196; Root: loss=1.0471; ROC=0.7639; TP=4214; FN=5448; FP=5874; TN=53584     
Epoch: 188/500; LR: 3.05176e-05; Total: loss=1.9615; Root: loss=1.1405; ROC=0.7107; TP=868; FN=1558; FP=1542; TN=13440
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7798; Root: loss=1.0462; ROC=0.7642; TP=4221; FN=5440; FP=5863; TN=53596     
Epoch: 189/500; LR: 3.05176e-05; Total: loss=1.9403; Root: loss=1.1378; ROC=0.7093; TP=861; FN=1556; FP=1553; TN=13438
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9688; Root: loss=1.0477; ROC=0.7639; TP=4217; FN=5454; FP=5873; TN=53576     
Epoch: 190/500; LR: 3.05176e-05; Total: loss=1.9418; Root: loss=1.1374; ROC=0.7114; TP=870; FN=1552; FP=1550; TN=13436
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9215; Root: loss=1.0472; ROC=0.7641; TP=4216; FN=5452; FP=5870; TN=53582     
Epoch: 191/500; LR: 3.05176e-05; Total: loss=1.9131; Root: loss=1.1361; ROC=0.7133; TP=881; FN=1549; FP=1553; TN=13425
Step: 135/135; LR: 3.05176e-05; Total: loss=2.0403; Root: loss=1.0477; ROC=0.7639; TP=4219; FN=5456; FP=5880; TN=53565     
Epoch: 192/500; LR: 3.05176e-05; Total: loss=1.9064; Root: loss=1.1352; ROC=0.7113; TP=871; FN=1547; FP=1545; TN=13445
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7757; Root: loss=1.046; ROC=0.7643; TP=4227; FN=5433; FP=5864; TN=53596      
Epoch: 193/500; LR: 3.05176e-05; Total: loss=1.9014; Root: loss=1.1355; ROC=0.713; TP=879; FN=1543; FP=1557; TN=13429
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5605; Root: loss=1.0456; ROC=0.7639; TP=4215; FN=5432; FP=5876; TN=53597     
Epoch: 194/500; LR: 3.05176e-05; Total: loss=1.8922; Root: loss=1.1352; ROC=0.7146; TP=881; FN=1546; FP=1546; TN=13435
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6614; Root: loss=1.046; ROC=0.7642; TP=4221; FN=5432; FP=5880; TN=53587      
Epoch: 195/500; LR: 3.05176e-05; Total: loss=1.9055; Root: loss=1.1377; ROC=0.7121; TP=872; FN=1549; FP=1538; TN=13449
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9153; Root: loss=1.0463; ROC=0.7646; TP=4235; FN=5433; FP=5867; TN=53585     
Epoch: 196/500; LR: 3.05176e-05; Total: loss=1.9117; Root: loss=1.1354; ROC=0.7121; TP=869; FN=1542; FP=1542; TN=13455
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5347; Root: loss=1.0452; ROC=0.7643; TP=4218; FN=5427; FP=5881; TN=53594     
Epoch: 197/500; LR: 3.05176e-05; Total: loss=1.9467; Root: loss=1.1359; ROC=0.7136; TP=876; FN=1550; FP=1547; TN=13435
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7356; Root: loss=1.046; ROC=0.7641; TP=4223; FN=5433; FP=5879; TN=53585      
Epoch: 198/500; LR: 3.05176e-05; Total: loss=1.9204; Root: loss=1.1351; ROC=0.7118; TP=863; FN=1548; FP=1541; TN=13456
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8077; Root: loss=1.0459; ROC=0.7645; TP=4234; FN=5428; FP=5880; TN=53578     
Epoch: 199/500; LR: 3.05176e-05; Total: loss=1.9303; Root: loss=1.1365; ROC=0.7126; TP=876; FN=1543; FP=1563; TN=13426
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5254; Root: loss=1.0449; ROC=0.7643; TP=4225; FN=5420; FP=5870; TN=53605     
Epoch: 200/500; LR: 3.05176e-05; Total: loss=1.9487; Root: loss=1.1398; ROC=0.7126; TP=871; FN=1561; FP=1540; TN=13436
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8741; Root: loss=1.0462; ROC=0.7644; TP=4231; FN=5435; FP=5860; TN=53594     
Epoch: 201/500; LR: 3.05176e-05; Total: loss=1.9326; Root: loss=1.132; ROC=0.7139; TP=868; FN=1542; FP=1547; TN=13451
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8134; Root: loss=1.0465; ROC=0.764; TP=4226; FN=5435; FP=5853; TN=53606      
Epoch: 202/500; LR: 3.05176e-05; Total: loss=1.9211; Root: loss=1.1334; ROC=0.7139; TP=874; FN=1545; FP=1540; TN=13449
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8049; Root: loss=1.0456; ROC=0.7646; TP=4235; FN=5427; FP=5851; TN=53607     
Epoch: 203/500; LR: 3.05176e-05; Total: loss=1.9377; Root: loss=1.135; ROC=0.7149; TP=872; FN=1552; FP=1537; TN=13447
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6866; Root: loss=1.0449; ROC=0.7646; TP=4233; FN=5422; FP=5838; TN=53627     
Epoch: 204/500; LR: 3.05176e-05; Total: loss=1.9105; Root: loss=1.1332; ROC=0.7126; TP=856; FN=1553; FP=1541; TN=13458
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6202; Root: loss=1.0451; ROC=0.7647; TP=4228; FN=5422; FP=5865; TN=53605     
Epoch: 205/500; LR: 3.05176e-05; Total: loss=1.9151; Root: loss=1.1341; ROC=0.7129; TP=860; FN=1551; FP=1541; TN=13456
Step: 135/135; LR: 3.05176e-05; Total: loss=1.594; Root: loss=1.0444; ROC=0.7648; TP=4236; FN=5414; FP=5866; TN=53604      
Epoch: 206/500; LR: 3.05176e-05; Total: loss=1.9192; Root: loss=1.1363; ROC=0.7132; TP=867; FN=1555; FP=1531; TN=13455
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8397; Root: loss=1.0452; ROC=0.7649; TP=4241; FN=5423; FP=5875; TN=53581     
Epoch: 207/500; LR: 3.05176e-05; Total: loss=1.9225; Root: loss=1.1375; ROC=0.7112; TP=858; FN=1557; FP=1537; TN=13456
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8834; Root: loss=1.0454; ROC=0.7648; TP=4244; FN=5423; FP=5866; TN=53587     
Epoch: 208/500; LR: 3.05176e-05; Total: loss=1.9082; Root: loss=1.1404; ROC=0.7115; TP=865; FN=1566; FP=1548; TN=13429
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9604; Root: loss=1.046; ROC=0.7647; TP=4240; FN=5430; FP=5876; TN=53574      
Epoch: 209/500; LR: 3.05176e-05; Total: loss=1.9119; Root: loss=1.135; ROC=0.7139; TP=868; FN=1547; FP=1531; TN=13462
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8152; Root: loss=1.0455; ROC=0.7647; TP=4231; FN=5431; FP=5856; TN=53602     
Epoch: 210/500; LR: 3.05176e-05; Total: loss=1.9364; Root: loss=1.1373; ROC=0.7139; TP=870; FN=1551; FP=1523; TN=13464
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8535; Root: loss=1.0455; ROC=0.7647; TP=4242; FN=5423; FP=5865; TN=53590     
Epoch: 211/500; LR: 3.05176e-05; Total: loss=1.9078; Root: loss=1.1336; ROC=0.7149; TP=873; FN=1541; FP=1531; TN=13463
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5797; Root: loss=1.0449; ROC=0.7644; TP=4223; FN=5424; FP=5884; TN=53589     
Epoch: 212/500; LR: 3.05176e-05; Total: loss=1.8966; Root: loss=1.1391; ROC=0.7133; TP=868; FN=1558; FP=1525; TN=13457
Step: 135/135; LR: 3.05176e-05; Total: loss=2.1161; Root: loss=1.0466; ROC=0.7647; TP=4243; FN=5436; FP=5867; TN=53574     
Epoch: 213/500; LR: 3.05176e-05; Total: loss=1.914; Root: loss=1.1426; ROC=0.7124; TP=865; FN=1567; FP=1525; TN=13451
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8251; Root: loss=1.0459; ROC=0.7645; TP=4233; FN=5428; FP=5893; TN=53566     
Epoch: 214/500; LR: 3.05176e-05; Total: loss=1.9005; Root: loss=1.1357; ROC=0.7135; TP=859; FN=1556; FP=1523; TN=13470
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7661; Root: loss=1.0446; ROC=0.7649; TP=4236; FN=5424; FP=5857; TN=53603     
Epoch: 215/500; LR: 3.05176e-05; Total: loss=1.91; Root: loss=1.1349; ROC=0.7137; TP=858; FN=1555; FP=1524; TN=13471
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6065; Root: loss=1.0448; ROC=0.7645; TP=4223; FN=5426; FP=5863; TN=53608     
Epoch: 216/500; LR: 3.05176e-05; Total: loss=1.9329; Root: loss=1.1426; ROC=0.7131; TP=867; FN=1571; FP=1508; TN=13462
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7968; Root: loss=1.045; ROC=0.7649; TP=4237; FN=5424; FP=5852; TN=53607      
Epoch: 217/500; LR: 3.05176e-05; Total: loss=1.9379; Root: loss=1.1374; ROC=0.7134; TP=842; FN=1576; FP=1456; TN=13534
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6763; Root: loss=1.0439; ROC=0.7651; TP=4252; FN=5402; FP=5894; TN=53572     
Epoch: 218/500; LR: 3.05176e-05; Total: loss=1.9299; Root: loss=1.1406; ROC=0.7112; TP=835; FN=1589; FP=1424; TN=13560
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8765; Root: loss=1.0456; ROC=0.7648; TP=4248; FN=5417; FP=5907; TN=53548     
Epoch: 219/500; LR: 3.05176e-05; Total: loss=1.9232; Root: loss=1.1391; ROC=0.7145; TP=854; FN=1582; FP=1427; TN=13545
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7277; Root: loss=1.0444; ROC=0.7652; TP=4236; FN=5421; FP=5893; TN=53570     
Epoch: 220/500; LR: 3.05176e-05; Total: loss=1.9285; Root: loss=1.1376; ROC=0.7137; TP=842; FN=1583; FP=1418; TN=13565
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7398; Root: loss=1.0437; ROC=0.7655; TP=4250; FN=5409; FP=5870; TN=53591     
Epoch: 221/500; LR: 3.05176e-05; Total: loss=1.9167; Root: loss=1.1421; ROC=0.7116; TP=838; FN=1588; FP=1422; TN=13560
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7062; Root: loss=1.0452; ROC=0.7645; TP=4233; FN=5421; FP=5876; TN=53590     
Epoch: 222/500; LR: 3.05176e-05; Total: loss=1.9075; Root: loss=1.1397; ROC=0.7112; TP=832; FN=1585; FP=1419; TN=13572
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7278; Root: loss=1.0448; ROC=0.7646; TP=4227; FN=5429; FP=5862; TN=53602     
Epoch: 223/500; LR: 3.05176e-05; Total: loss=1.9179; Root: loss=1.1387; ROC=0.713; TP=841; FN=1581; FP=1420; TN=13566
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7773; Root: loss=1.0453; ROC=0.7644; TP=4227; FN=5432; FP=5829; TN=53632     
Epoch: 224/500; LR: 3.05176e-05; Total: loss=1.894; Root: loss=1.1378; ROC=0.714; TP=852; FN=1578; FP=1424; TN=13554
Step: 135/135; LR: 3.05176e-05; Total: loss=1.683; Root: loss=1.0442; ROC=0.765; TP=4228; FN=5426; FP=5830; TN=53636       
Epoch: 225/500; LR: 3.05176e-05; Total: loss=1.8517; Root: loss=1.1367; ROC=0.7127; TP=844; FN=1574; FP=1416; TN=13574
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8895; Root: loss=1.0457; ROC=0.7645; TP=4225; FN=5440; FP=5824; TN=53631     
Epoch: 226/500; LR: 3.05176e-05; Total: loss=1.8518; Root: loss=1.1367; ROC=0.7142; TP=849; FN=1573; FP=1429; TN=13557
Step: 135/135; LR: 3.05176e-05; Total: loss=2.0627; Root: loss=1.0456; ROC=0.7652; TP=4242; FN=5434; FP=5831; TN=53613     
Epoch: 227/500; LR: 3.05176e-05; Total: loss=1.8824; Root: loss=1.1358; ROC=0.7154; TP=853; FN=1574; FP=1422; TN=13559
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7829; Root: loss=1.0434; ROC=0.7657; TP=4241; FN=5421; FP=5832; TN=53626     
Epoch: 228/500; LR: 3.05176e-05; Total: loss=1.8917; Root: loss=1.1376; ROC=0.7133; TP=838; FN=1583; FP=1409; TN=13578
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8938; Root: loss=1.0448; ROC=0.7651; TP=4240; FN=5427; FP=5845; TN=53608     
Epoch: 229/500; LR: 3.05176e-05; Total: loss=1.879; Root: loss=1.1351; ROC=0.7135; TP=836; FN=1575; FP=1410; TN=13587
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9924; Root: loss=1.0451; ROC=0.765; TP=4250; FN=5423; FP=5858; TN=53589      
Epoch: 230/500; LR: 3.05176e-05; Total: loss=1.8676; Root: loss=1.1362; ROC=0.715; TP=845; FN=1581; FP=1414; TN=13568
Step: 135/135; LR: 3.05176e-05; Total: loss=1.662; Root: loss=1.0441; ROC=0.7649; TP=4235; FN=5417; FP=5854; TN=53614      
Epoch: 231/500; LR: 3.05176e-05; Total: loss=1.8678; Root: loss=1.1349; ROC=0.7134; TP=834; FN=1577; FP=1402; TN=13595
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7844; Root: loss=1.0443; ROC=0.7652; TP=4248; FN=5412; FP=5864; TN=53596     
Epoch: 232/500; LR: 3.05176e-05; Total: loss=1.8752; Root: loss=1.1369; ROC=0.714; TP=843; FN=1576; FP=1424; TN=13565
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7888; Root: loss=1.0439; ROC=0.7653; TP=4243; FN=5417; FP=5854; TN=53606     
Epoch: 233/500; LR: 3.05176e-05; Total: loss=1.8727; Root: loss=1.1399; ROC=0.7145; TP=842; FN=1590; FP=1401; TN=13575
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8036; Root: loss=1.0437; ROC=0.7656; TP=4241; FN=5421; FP=5838; TN=53620     
Epoch: 234/500; LR: 3.05176e-05; Total: loss=1.854; Root: loss=1.1318; ROC=0.7152; TP=840; FN=1570; FP=1407; TN=13591
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7998; Root: loss=1.0441; ROC=0.7651; TP=4229; FN=5432; FP=5822; TN=53637     
Epoch: 235/500; LR: 3.05176e-05; Total: loss=1.8571; Root: loss=1.1336; ROC=0.7159; TP=846; FN=1573; FP=1402; TN=13587
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8071; Root: loss=1.0447; ROC=0.7649; TP=4225; FN=5435; FP=5818; TN=53642     
Epoch: 236/500; LR: 3.05176e-05; Total: loss=1.8519; Root: loss=1.1349; ROC=0.7153; TP=843; FN=1581; FP=1407; TN=13577
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8191; Root: loss=1.0446; ROC=0.7649; TP=4230; FN=5431; FP=5812; TN=53647     
Epoch: 237/500; LR: 3.05176e-05; Total: loss=1.8394; Root: loss=1.1335; ROC=0.7128; TP=830; FN=1579; FP=1408; TN=13591
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8287; Root: loss=1.0438; ROC=0.7655; TP=4232; FN=5431; FP=5797; TN=53660     
Epoch: 238/500; LR: 3.05176e-05; Total: loss=1.8347; Root: loss=1.1342; ROC=0.7127; TP=830; FN=1581; FP=1406; TN=13591
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8214; Root: loss=1.0441; ROC=0.7653; TP=4245; FN=5417; FP=5834; TN=53624     
Epoch: 239/500; LR: 3.05176e-05; Total: loss=1.8469; Root: loss=1.1366; ROC=0.7138; TP=836; FN=1586; FP=1394; TN=13592
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8047; Root: loss=1.0439; ROC=0.7653; TP=4248; FN=5414; FP=5840; TN=53618     
Epoch: 240/500; LR: 3.05176e-05; Total: loss=1.8592; Root: loss=1.1376; ROC=0.7123; TP=830; FN=1585; FP=1400; TN=13593
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6032; Root: loss=1.0432; ROC=0.7654; TP=4234; FN=5415; FP=5842; TN=53629     
Epoch: 241/500; LR: 3.05176e-05; Total: loss=1.8625; Root: loss=1.1405; ROC=0.7125; TP=836; FN=1595; FP=1408; TN=13569
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7499; Root: loss=1.0429; ROC=0.7658; TP=4241; FN=5418; FP=5810; TN=53651     
Epoch: 242/500; LR: 3.05176e-05; Total: loss=1.8418; Root: loss=1.132; ROC=0.7141; TP=840; FN=1575; FP=1413; TN=13580
Step: 135/135; LR: 3.05176e-05; Total: loss=1.93; Root: loss=1.0445; ROC=0.7653; TP=4240; FN=5428; FP=5817; TN=53635       
Epoch: 243/500; LR: 3.05176e-05; Total: loss=1.8476; Root: loss=1.1341; ROC=0.7142; TP=841; FN=1580; FP=1399; TN=13588
Step: 135/135; LR: 3.05176e-05; Total: loss=1.4992; Root: loss=1.0426; ROC=0.7656; TP=4224; FN=5419; FP=5802; TN=53675     
Epoch: 244/500; LR: 3.05176e-05; Total: loss=1.8357; Root: loss=1.1309; ROC=0.7149; TP=840; FN=1574; FP=1402; TN=13592
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7435; Root: loss=1.043; ROC=0.7658; TP=4240; FN=5418; FP=5832; TN=53630      
Epoch: 245/500; LR: 3.05176e-05; Total: loss=1.843; Root: loss=1.1362; ROC=0.7137; TP=840; FN=1586; FP=1406; TN=13576
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7738; Root: loss=1.0437; ROC=0.7654; TP=4237; FN=5422; FP=5835; TN=53626     
Epoch: 246/500; LR: 3.05176e-05; Total: loss=1.8399; Root: loss=1.1399; ROC=0.7128; TP=833; FN=1599; FP=1403; TN=13573
Step: 135/135; LR: 3.05176e-05; Total: loss=1.703; Root: loss=1.0434; ROC=0.7655; TP=4239; FN=5415; FP=5847; TN=53619      
Epoch: 247/500; LR: 3.05176e-05; Total: loss=1.8277; Root: loss=1.1336; ROC=0.7131; TP=833; FN=1582; FP=1395; TN=13598
Step: 135/135; LR: 3.05176e-05; Total: loss=2.1084; Root: loss=1.0445; ROC=0.7658; TP=4255; FN=5425; FP=5826; TN=53614     
Epoch: 248/500; LR: 3.05176e-05; Total: loss=1.8248; Root: loss=1.1331; ROC=0.7138; TP=832; FN=1581; FP=1394; TN=13601
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9454; Root: loss=1.0436; ROC=0.7655; TP=4248; FN=5422; FP=5839; TN=53611     
Epoch: 249/500; LR: 3.05176e-05; Total: loss=1.8375; Root: loss=1.1413; ROC=0.7124; TP=843; FN=1595; FP=1393; TN=13577
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5527; Root: loss=1.0422; ROC=0.7656; TP=4238; FN=5408; FP=5862; TN=53612     
Epoch: 250/500; LR: 3.05176e-05; Total: loss=1.8314; Root: loss=1.1356; ROC=0.713; TP=835; FN=1583; FP=1411; TN=13579
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7173; Root: loss=1.0425; ROC=0.7659; TP=4256; FN=5401; FP=5871; TN=53592     
Epoch: 251/500; LR: 3.05176e-05; Total: loss=1.841; Root: loss=1.1384; ROC=0.7113; TP=832; FN=1592; FP=1399; TN=13585
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7983; Root: loss=1.0426; ROC=0.7661; TP=4246; FN=5416; FP=5836; TN=53622     
Epoch: 252/500; LR: 3.05176e-05; Total: loss=1.8512; Root: loss=1.1365; ROC=0.7145; TP=851; FN=1585; FP=1397; TN=13575
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7326; Root: loss=1.0423; ROC=0.7661; TP=4241; FN=5417; FP=5865; TN=53597     
Epoch: 253/500; LR: 3.05176e-05; Total: loss=1.8361; Root: loss=1.1351; ROC=0.7133; TP=840; FN=1585; FP=1398; TN=13585
Step: 135/135; LR: 3.05176e-05; Total: loss=2.0333; Root: loss=1.044; ROC=0.7656; TP=4247; FN=5428; FP=5853; TN=53592      
Epoch: 254/500; LR: 3.05176e-05; Total: loss=1.8367; Root: loss=1.14; ROC=0.711; TP=836; FN=1590; FP=1400; TN=13582
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7411; Root: loss=1.0427; ROC=0.7658; TP=4234; FN=5424; FP=5848; TN=53614     
Epoch: 255/500; LR: 3.05176e-05; Total: loss=1.8347; Root: loss=1.1382; ROC=0.7105; TP=827; FN=1590; FP=1403; TN=13588
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9022; Root: loss=1.0427; ROC=0.766; TP=4245; FN=5423; FP=5832; TN=53620      
Epoch: 256/500; LR: 3.05176e-05; Total: loss=1.8387; Root: loss=1.1377; ROC=0.7127; TP=838; FN=1584; FP=1401; TN=13585
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7549; Root: loss=1.0428; ROC=0.7657; TP=4241; FN=5417; FP=5837; TN=53625     
Epoch: 257/500; LR: 3.05176e-05; Total: loss=1.8461; Root: loss=1.1372; ROC=0.7141; TP=847; FN=1583; FP=1409; TN=13569
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7033; Root: loss=1.0424; ROC=0.766; TP=4246; FN=5409; FP=5883; TN=53582      
Epoch: 258/500; LR: 3.05176e-05; Total: loss=1.8426; Root: loss=1.1362; ROC=0.7122; TP=839; FN=1579; FP=1406; TN=13584
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7671; Root: loss=1.0426; ROC=0.7659; TP=4242; FN=5417; FP=5864; TN=53597     
Epoch: 259/500; LR: 3.05176e-05; Total: loss=1.8458; Root: loss=1.1378; ROC=0.7131; TP=842; FN=1580; FP=1408; TN=13578
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9537; Root: loss=1.0436; ROC=0.7657; TP=4244; FN=5425; FP=5870; TN=53581     
Epoch: 260/500; LR: 3.05176e-05; Total: loss=1.8519; Root: loss=1.1368; ROC=0.7141; TP=844; FN=1583; FP=1395; TN=13586
Step: 135/135; LR: 3.05176e-05; Total: loss=2.034; Root: loss=1.0434; ROC=0.7661; TP=4251; FN=5424; FP=5850; TN=53595      
Epoch: 261/500; LR: 3.05176e-05; Total: loss=1.8489; Root: loss=1.1384; ROC=0.7123; TP=836; FN=1585; FP=1391; TN=13596
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6415; Root: loss=1.042; ROC=0.7658; TP=4237; FN=5414; FP=5852; TN=53617      
Epoch: 262/500; LR: 3.05176e-05; Total: loss=1.8367; Root: loss=1.1361; ROC=0.7119; TP=832; FN=1579; FP=1394; TN=13603
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5925; Root: loss=1.0421; ROC=0.7658; TP=4236; FN=5412; FP=5850; TN=53622     
Epoch: 263/500; LR: 3.05176e-05; Total: loss=1.8526; Root: loss=1.1365; ROC=0.7134; TP=841; FN=1585; FP=1409; TN=13573
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7452; Root: loss=1.0423; ROC=0.766; TP=4245; FN=5413; FP=5847; TN=53615      
Epoch: 264/500; LR: 3.05176e-05; Total: loss=1.8474; Root: loss=1.1356; ROC=0.712; TP=832; FN=1579; FP=1401; TN=13596
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7743; Root: loss=1.0422; ROC=0.766; TP=4251; FN=5408; FP=5853; TN=53608      
Epoch: 265/500; LR: 3.05176e-05; Total: loss=1.8434; Root: loss=1.1377; ROC=0.712; TP=841; FN=1578; FP=1418; TN=13571
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7609; Root: loss=1.0422; ROC=0.766; TP=4248; FN=5411; FP=5840; TN=53621      
Epoch: 266/500; LR: 3.05176e-05; Total: loss=1.8492; Root: loss=1.1414; ROC=0.7123; TP=839; FN=1593; FP=1397; TN=13579
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7129; Root: loss=1.0416; ROC=0.7662; TP=4250; FN=5406; FP=5845; TN=53619     
Epoch: 267/500; LR: 3.05176e-05; Total: loss=1.8275; Root: loss=1.1338; ROC=0.713; TP=838; FN=1572; FP=1407; TN=13591
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8238; Root: loss=1.0424; ROC=0.766; TP=4253; FN=5410; FP=5853; TN=53604      
Epoch: 268/500; LR: 3.05176e-05; Total: loss=1.8373; Root: loss=1.1354; ROC=0.7134; TP=843; FN=1576; FP=1406; TN=13583
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7463; Root: loss=1.042; ROC=0.7659; TP=4244; FN=5414; FP=5836; TN=53626      
Epoch: 269/500; LR: 3.05176e-05; Total: loss=1.8504; Root: loss=1.1375; ROC=0.7139; TP=843; FN=1581; FP=1417; TN=13567
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9241; Root: loss=1.0421; ROC=0.7665; TP=4251; FN=5418; FP=5829; TN=53622     
Epoch: 270/500; LR: 3.05176e-05; Total: loss=1.8413; Root: loss=1.1369; ROC=0.7117; TP=828; FN=1581; FP=1412; TN=13587
Step: 135/135; LR: 3.05176e-05; Total: loss=1.83; Root: loss=1.0424; ROC=0.766; TP=4244; FN=5419; FP=5847; TN=53610        
Epoch: 271/500; LR: 3.05176e-05; Total: loss=1.8416; Root: loss=1.1381; ROC=0.712; TP=827; FN=1584; FP=1422; TN=13575
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7476; Root: loss=1.0414; ROC=0.7665; TP=4254; FN=5405; FP=5862; TN=53599     
Epoch: 272/500; LR: 3.05176e-05; Total: loss=1.8434; Root: loss=1.1408; ROC=0.7119; TP=834; FN=1588; FP=1408; TN=13578
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7623; Root: loss=1.0422; ROC=0.7662; TP=4252; FN=5406; FP=5875; TN=53587     
Epoch: 273/500; LR: 3.05176e-05; Total: loss=1.8489; Root: loss=1.1419; ROC=0.7101; TP=828; FN=1587; FP=1417; TN=13576
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7872; Root: loss=1.0417; ROC=0.7663; TP=4264; FN=5397; FP=5897; TN=53562     
Epoch: 274/500; LR: 3.05176e-05; Total: loss=1.8391; Root: loss=1.1452; ROC=0.7099; TP=834; FN=1597; FP=1424; TN=13553
Step: 135/135; LR: 3.05176e-05; Total: loss=1.829; Root: loss=1.042; ROC=0.7662; TP=4263; FN=5399; FP=5899; TN=53559       
Epoch: 275/500; LR: 3.05176e-05; Total: loss=1.8246; Root: loss=1.1367; ROC=0.7123; TP=837; FN=1578; FP=1430; TN=13563
Step: 135/135; LR: 3.05176e-05; Total: loss=1.4828; Root: loss=1.0406; ROC=0.7664; TP=4255; FN=5388; FP=5909; TN=53568     
Epoch: 276/500; LR: 3.05176e-05; Total: loss=1.8295; Root: loss=1.1394; ROC=0.7125; TP=836; FN=1585; FP=1410; TN=13577
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8504; Root: loss=1.0422; ROC=0.7663; TP=4245; FN=5419; FP=5883; TN=53573     
Epoch: 277/500; LR: 3.05176e-05; Total: loss=1.8169; Root: loss=1.1362; ROC=0.7133; TP=836; FN=1578; FP=1412; TN=13582
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6632; Root: loss=1.0417; ROC=0.7661; TP=4243; FN=5409; FP=5867; TN=53601     
Epoch: 278/500; LR: 3.05176e-05; Total: loss=1.826; Root: loss=1.1418; ROC=0.7117; TP=833; FN=1593; FP=1417; TN=13565
Step: 135/135; LR: 3.05176e-05; Total: loss=1.677; Root: loss=1.0408; ROC=0.7666; TP=4254; FN=5401; FP=5867; TN=53598      
Epoch: 279/500; LR: 3.05176e-05; Total: loss=1.8301; Root: loss=1.1455; ROC=0.7112; TP=831; FN=1601; FP=1411; TN=13565
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8213; Root: loss=1.0413; ROC=0.7666; TP=4257; FN=5406; FP=5867; TN=53590     
Epoch: 280/500; LR: 3.05176e-05; Total: loss=1.8343; Root: loss=1.1386; ROC=0.7121; TP=829; FN=1586; FP=1406; TN=13587
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7634; Root: loss=1.0414; ROC=0.7666; TP=4256; FN=5403; FP=5883; TN=53578     
Epoch: 281/500; LR: 3.05176e-05; Total: loss=1.8539; Root: loss=1.1377; ROC=0.7126; TP=830; FN=1583; FP=1396; TN=13599
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6381; Root: loss=1.0408; ROC=0.7664; TP=4247; FN=5405; FP=5838; TN=53630     
Epoch: 282/500; LR: 3.05176e-05; Total: loss=1.8835; Root: loss=1.1458; ROC=0.7117; TP=842; FN=1596; FP=1395; TN=13575
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6199; Root: loss=1.0407; ROC=0.7664; TP=4249; FN=5402; FP=5837; TN=53632     
Epoch: 283/500; LR: 3.05176e-05; Total: loss=1.8415; Root: loss=1.1406; ROC=0.7124; TP=828; FN=1590; FP=1410; TN=13580
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8829; Root: loss=1.0421; ROC=0.7662; TP=4253; FN=5413; FP=5838; TN=53616     
Epoch: 284/500; LR: 3.05176e-05; Total: loss=1.8496; Root: loss=1.1436; ROC=0.71; TP=830; FN=1594; FP=1403; TN=13581
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7475; Root: loss=1.0411; ROC=0.7664; TP=4250; FN=5408; FP=5822; TN=53640     
Epoch: 285/500; LR: 3.05176e-05; Total: loss=1.8375; Root: loss=1.1419; ROC=0.7137; TP=847; FN=1589; FP=1396; TN=13576
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7807; Root: loss=1.0416; ROC=0.7662; TP=4248; FN=5412; FP=5828; TN=53632     
Epoch: 286/500; LR: 3.05176e-05; Total: loss=1.8591; Root: loss=1.14; ROC=0.712; TP=840; FN=1585; FP=1405; TN=13578
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9981; Root: loss=1.0429; ROC=0.7661; TP=4244; FN=5428; FP=5826; TN=53622     
Epoch: 287/500; LR: 3.05176e-05; Total: loss=1.8285; Root: loss=1.1448; ROC=0.7106; TP=836; FN=1590; FP=1411; TN=13571
Step: 135/135; LR: 3.05176e-05; Total: loss=2.0044; Root: loss=1.0424; ROC=0.7665; TP=4250; FN=5423; FP=5823; TN=53624     
Epoch: 288/500; LR: 3.05176e-05; Total: loss=1.8444; Root: loss=1.1426; ROC=0.7094; TP=826; FN=1591; FP=1410; TN=13581
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9563; Root: loss=1.042; ROC=0.7665; TP=4253; FN=5418; FP=5815; TN=53634      
Epoch: 289/500; LR: 3.05176e-05; Total: loss=1.8505; Root: loss=1.1417; ROC=0.7114; TP=834; FN=1588; FP=1414; TN=13572
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7394; Root: loss=1.0408; ROC=0.7668; TP=4249; FN=5409; FP=5836; TN=53626     
Epoch: 290/500; LR: 3.05176e-05; Total: loss=1.8261; Root: loss=1.1403; ROC=0.713; TP=845; FN=1585; FP=1423; TN=13555
Step: 135/135; LR: 3.05176e-05; Total: loss=1.928; Root: loss=1.0417; ROC=0.7667; TP=4254; FN=5415; FP=5813; TN=53638      
Epoch: 291/500; LR: 3.05176e-05; Total: loss=1.8388; Root: loss=1.1393; ROC=0.7115; TP=837; FN=1581; FP=1417; TN=13573
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8209; Root: loss=1.0419; ROC=0.7662; TP=4245; FN=5417; FP=5839; TN=53619     
Epoch: 292/500; LR: 3.05176e-05; Total: loss=1.8525; Root: loss=1.1395; ROC=0.7131; TP=839; FN=1583; FP=1419; TN=13567
Step: 135/135; LR: 3.05176e-05; Total: loss=1.699; Root: loss=1.0409; ROC=0.7665; TP=4242; FN=5413; FP=5817; TN=53648      
Epoch: 293/500; LR: 3.05176e-05; Total: loss=1.8479; Root: loss=1.1384; ROC=0.7142; TP=840; FN=1587; FP=1402; TN=13579
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8311; Root: loss=1.0405; ROC=0.7671; TP=4252; FN=5413; FP=5829; TN=53626     
Epoch: 294/500; LR: 3.05176e-05; Total: loss=1.8976; Root: loss=1.1397; ROC=0.7117; TP=831; FN=1590; FP=1400; TN=13587
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9008; Root: loss=1.0418; ROC=0.7666; TP=4255; FN=5411; FP=5850; TN=53604     
Epoch: 295/500; LR: 3.05176e-05; Total: loss=1.9164; Root: loss=1.1372; ROC=0.7119; TP=831; FN=1580; FP=1400; TN=13597
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6673; Root: loss=1.0406; ROC=0.7666; TP=4254; FN=5399; FP=5849; TN=53618     
Epoch: 296/500; LR: 3.05176e-05; Total: loss=1.9394; Root: loss=1.1375; ROC=0.7138; TP=841; FN=1585; FP=1404; TN=13578
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8273; Root: loss=1.0412; ROC=0.7664; TP=4247; FN=5415; FP=5828; TN=53630     
Epoch: 297/500; LR: 3.05176e-05; Total: loss=1.9606; Root: loss=1.136; ROC=0.7123; TP=832; FN=1579; FP=1402; TN=13595
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6721; Root: loss=1.0406; ROC=0.7666; TP=4252; FN=5401; FP=5845; TN=53622     
Epoch: 298/500; LR: 3.05176e-05; Total: loss=1.9907; Root: loss=1.1376; ROC=0.7123; TP=841; FN=1578; FP=1426; TN=13563
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8975; Root: loss=1.0412; ROC=0.7668; TP=4255; FN=5411; FP=5846; TN=53608     
Epoch: 299/500; LR: 3.05176e-05; Total: loss=1.9595; Root: loss=1.1413; ROC=0.7129; TP=841; FN=1591; FP=1403; TN=13573
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9344; Root: loss=1.0419; ROC=0.7664; TP=4251; FN=5418; FP=5825; TN=53626     
Epoch: 300/500; LR: 3.05176e-05; Total: loss=1.9677; Root: loss=1.1333; ROC=0.7136; TP=837; FN=1573; FP=1404; TN=13594
Step: 135/135; LR: 3.05176e-05; Total: loss=1.834; Root: loss=1.0416; ROC=0.7666; TP=4247; FN=5415; FP=5840; TN=53618      
Epoch: 301/500; LR: 3.05176e-05; Total: loss=1.9853; Root: loss=1.135; ROC=0.7138; TP=842; FN=1577; FP=1397; TN=13592
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9864; Root: loss=1.0411; ROC=0.767; TP=4263; FN=5410; FP=5837; TN=53610      
Epoch: 302/500; LR: 3.05176e-05; Total: loss=1.9749; Root: loss=1.137; ROC=0.7147; TP=841; FN=1583; FP=1403; TN=13581
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5398; Root: loss=1.0394; ROC=0.7668; TP=4247; FN=5399; FP=5841; TN=53633     
Epoch: 303/500; LR: 3.05176e-05; Total: loss=2.0076; Root: loss=1.1353; ROC=0.7123; TP=829; FN=1580; FP=1404; TN=13595
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8788; Root: loss=1.0411; ROC=0.7666; TP=4251; FN=5415; FP=5832; TN=53622     
Epoch: 304/500; LR: 3.05176e-05; Total: loss=1.964; Root: loss=1.1352; ROC=0.7126; TP=829; FN=1582; FP=1413; TN=13584
Step: 135/135; LR: 3.05176e-05; Total: loss=2.1293; Root: loss=1.0423; ROC=0.7669; TP=4251; FN=5429; FP=5805; TN=53635     
Epoch: 305/500; LR: 3.05176e-05; Total: loss=1.9547; Root: loss=1.1375; ROC=0.7126; TP=841; FN=1581; FP=1401; TN=13585
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6997; Root: loss=1.0399; ROC=0.7671; TP=4257; FN=5398; FP=5829; TN=53636     
Epoch: 306/500; LR: 3.05176e-05; Total: loss=1.9735; Root: loss=1.1379; ROC=0.7112; TP=832; FN=1583; FP=1413; TN=13580
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7414; Root: loss=1.0402; ROC=0.7671; TP=4255; FN=5403; FP=5823; TN=53639     
Epoch: 307/500; LR: 3.05176e-05; Total: loss=1.9808; Root: loss=1.141; ROC=0.7109; TP=839; FN=1592; FP=1431; TN=13546
Step: 135/135; LR: 3.05176e-05; Total: loss=1.792; Root: loss=1.0405; ROC=0.7669; TP=4254; FN=5407; FP=5817; TN=53642      
Epoch: 308/500; LR: 3.05176e-05; Total: loss=1.9744; Root: loss=1.1329; ROC=0.7136; TP=844; FN=1571; FP=1432; TN=13561
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8785; Root: loss=1.0412; ROC=0.7667; TP=4259; FN=5406; FP=5826; TN=53629     
Epoch: 309/500; LR: 3.05176e-05; Total: loss=1.9855; Root: loss=1.135; ROC=0.7131; TP=868; FN=1553; FP=1513; TN=13474
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7547; Root: loss=1.0398; ROC=0.7672; TP=4261; FN=5399; FP=5830; TN=53630     
Epoch: 310/500; LR: 3.05176e-05; Total: loss=1.954; Root: loss=1.1311; ROC=0.7141; TP=870; FN=1544; FP=1520; TN=13474
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5872; Root: loss=1.0397; ROC=0.7668; TP=4247; FN=5401; FP=5825; TN=53647     
Epoch: 311/500; LR: 3.05176e-05; Total: loss=1.9753; Root: loss=1.1365; ROC=0.7127; TP=868; FN=1558; FP=1522; TN=13460
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7055; Root: loss=1.0398; ROC=0.7671; TP=4258; FN=5398; FP=5842; TN=53622     
Epoch: 312/500; LR: 3.05176e-05; Total: loss=1.9587; Root: loss=1.1396; ROC=0.7121; TP=862; FN=1570; FP=1520; TN=13456
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8179; Root: loss=1.0403; ROC=0.7671; TP=4261; FN=5401; FP=5834; TN=53624     
Epoch: 313/500; LR: 3.05176e-05; Total: loss=1.936; Root: loss=1.1329; ROC=0.7127; TP=862; FN=1553; FP=1508; TN=13485
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7449; Root: loss=1.0395; ROC=0.7674; TP=4257; FN=5402; FP=5795; TN=53666     
Epoch: 314/500; LR: 3.05176e-05; Total: loss=1.921; Root: loss=1.1316; ROC=0.7127; TP=862; FN=1551; FP=1513; TN=13482
Step: 135/135; LR: 3.05176e-05; Total: loss=2.0577; Root: loss=1.0412; ROC=0.7669; TP=4252; FN=5424; FP=5809; TN=53635     
Epoch: 315/500; LR: 3.05176e-05; Total: loss=1.9528; Root: loss=1.1395; ROC=0.7117; TP=873; FN=1565; FP=1510; TN=13460
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8625; Root: loss=1.0404; ROC=0.7671; TP=4247; FN=5418; FP=5801; TN=53654     
Epoch: 316/500; LR: 3.05176e-05; Total: loss=1.8986; Root: loss=1.1341; ROC=0.7122; TP=863; FN=1555; FP=1528; TN=13462
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8146; Root: loss=1.0401; ROC=0.7672; TP=4251; FN=5411; FP=5814; TN=53644     
Epoch: 317/500; LR: 3.05176e-05; Total: loss=1.8728; Root: loss=1.1369; ROC=0.7104; TP=859; FN=1565; FP=1513; TN=13471
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6976; Root: loss=1.0393; ROC=0.7672; TP=4252; FN=5404; FP=5812; TN=53652     
Epoch: 318/500; LR: 3.05176e-05; Total: loss=1.8931; Root: loss=1.135; ROC=0.7142; TP=881; FN=1555; FP=1523; TN=13449
Step: 135/135; LR: 3.05176e-05; Total: loss=1.836; Root: loss=1.0402; ROC=0.7671; TP=4246; FN=5417; FP=5816; TN=53641      
Epoch: 319/500; LR: 3.05176e-05; Total: loss=1.9088; Root: loss=1.1338; ROC=0.7127; TP=866; FN=1559; FP=1511; TN=13472
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7699; Root: loss=1.0396; ROC=0.7674; TP=4243; FN=5416; FP=5798; TN=53663     
Epoch: 320/500; LR: 3.05176e-05; Total: loss=1.9188; Root: loss=1.1384; ROC=0.7113; TP=868; FN=1558; FP=1532; TN=13450
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6998; Root: loss=1.0395; ROC=0.7674; TP=4247; FN=5409; FP=5815; TN=53649     
Epoch: 321/500; LR: 3.05176e-05; Total: loss=1.8691; Root: loss=1.1362; ROC=0.7098; TP=856; FN=1561; FP=1531; TN=13460
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8191; Root: loss=1.0403; ROC=0.7672; TP=4245; FN=5417; FP=5804; TN=53654     
Epoch: 322/500; LR: 3.05176e-05; Total: loss=1.8944; Root: loss=1.1353; ROC=0.7112; TP=866; FN=1556; FP=1532; TN=13454
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7789; Root: loss=1.0393; ROC=0.7675; TP=4247; FN=5414; FP=5781; TN=53678     
Epoch: 323/500; LR: 3.05176e-05; Total: loss=1.8997; Root: loss=1.1337; ROC=0.7132; TP=877; FN=1553; FP=1535; TN=13443
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9676; Root: loss=1.0409; ROC=0.7672; TP=4243; FN=5428; FP=5795; TN=53654     
Epoch: 324/500; LR: 3.05176e-05; Total: loss=1.8686; Root: loss=1.1329; ROC=0.712; TP=868; FN=1550; FP=1542; TN=13448
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9205; Root: loss=1.0404; ROC=0.7672; TP=4244; FN=5424; FP=5797; TN=53655     
Epoch: 325/500; LR: 3.05176e-05; Total: loss=1.8846; Root: loss=1.1331; ROC=0.7134; TP=876; FN=1546; FP=1550; TN=13436
Step: 135/135; LR: 3.05176e-05; Total: loss=2.0397; Root: loss=1.0409; ROC=0.7671; TP=4248; FN=5427; FP=5813; TN=53632     
Epoch: 326/500; LR: 3.05176e-05; Total: loss=1.8568; Root: loss=1.1327; ROC=0.7153; TP=881; FN=1546; FP=1537; TN=13444
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7751; Root: loss=1.0393; ROC=0.7674; TP=4254; FN=5406; FP=5816; TN=53644     
Epoch: 327/500; LR: 3.05176e-05; Total: loss=1.8656; Root: loss=1.1344; ROC=0.7132; TP=869; FN=1552; FP=1538; TN=13449
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5602; Root: loss=1.039; ROC=0.767; TP=4240; FN=5407; FP=5798; TN=53675       
Epoch: 328/500; LR: 3.05176e-05; Total: loss=1.8565; Root: loss=1.132; ROC=0.7131; TP=868; FN=1543; FP=1547; TN=13450
Step: 135/135; LR: 3.05176e-05; Total: loss=1.6606; Root: loss=1.0393; ROC=0.7673; TP=4242; FN=5411; FP=5818; TN=53649     
Epoch: 329/500; LR: 3.05176e-05; Total: loss=1.8744; Root: loss=1.1332; ROC=0.7147; TP=874; FN=1552; FP=1551; TN=13431
Step: 135/135; LR: 3.05176e-05; Total: loss=1.9143; Root: loss=1.0396; ROC=0.7676; TP=4258; FN=5410; FP=5808; TN=53644     
Epoch: 330/500; LR: 3.05176e-05; Total: loss=1.8745; Root: loss=1.1325; ROC=0.713; TP=865; FN=1546; FP=1543; TN=13454
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5342; Root: loss=1.0386; ROC=0.7673; TP=4245; FN=5400; FP=5825; TN=53650     
Epoch: 331/500; LR: 3.05176e-05; Total: loss=1.8792; Root: loss=1.1337; ROC=0.7137; TP=876; FN=1543; FP=1560; TN=13429
Step: 135/135; LR: 3.05176e-05; Total: loss=1.7343; Root: loss=1.0393; ROC=0.7673; TP=4237; FN=5419; FP=5810; TN=53654     
Epoch: 332/500; LR: 3.05176e-05; Total: loss=1.8675; Root: loss=1.138; ROC=0.7133; TP=872; FN=1560; FP=1536; TN=13440
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8071; Root: loss=1.0393; ROC=0.7675; TP=4251; FN=5411; FP=5817; TN=53641     
Epoch: 333/500; LR: 3.05176e-05; Total: loss=1.8689; Root: loss=1.13; ROC=0.7148; TP=871; FN=1539; FP=1543; TN=13455
Step: 135/135; LR: 3.05176e-05; Total: loss=1.5248; Root: loss=1.0383; ROC=0.7673; TP=4244; FN=5401; FP=5819; TN=53656     
Epoch: 334/500; LR: 3.05176e-05; Total: loss=1.8716; Root: loss=1.1313; ROC=0.7153; TP=877; FN=1542; FP=1533; TN=13456
Step: 135/135; LR: 3.05176e-05; Total: loss=1.8737; Root: loss=1.0396; ROC=0.7675; TP=4247; FN=5419; FP=5800; TN=53654     
Epoch: 335/500; LR: 3.05176e-05; Total: loss=1.897; Root: loss=1.1331; ROC=0.7164; TP=875; FN=1549; FP=1538; TN=13446
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.987; Root: loss=1.1236; ROC=0.7163; TP=823; FN=1557; FP=1440; TN=13588      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.8337; Root: loss=1.1223; ROC=0.7178; TP=851; FN=1539; FP=1400; TN=13618     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.8943; Root: loss=1.1194; ROC=0.7158; TP=836; FN=1549; FP=1327; TN=13696     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.7571; Root: loss=1.1385; ROC=0.7174; TP=851; FN=1571; FP=1412; TN=13574     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.6908; Root: loss=1.1234; ROC=0.7136; TP=816; FN=1552; FP=1418; TN=13622     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.0606; Root: loss=1.1253; ROC=0.7137; TP=829; FN=1556; FP=1426; TN=13597     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.7604; Root: loss=1.1382; ROC=0.7213; TP=856; FN=1612; FP=1420; TN=13520     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.0416; Root: loss=1.1295; ROC=0.7106; TP=799; FN=1567; FP=1471; TN=13571     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.0667; Root: loss=1.1294; ROC=0.7167; TP=870; FN=1533; FP=1444; TN=13561     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.831; Root: loss=1.1563; ROC=0.7063; TP=793; FN=1632; FP=1444; TN=13539      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.0826; Root: loss=1.1311; ROC=0.7149; TP=828; FN=1570; FP=1381; TN=13629     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.8698; Root: loss=1.1453; ROC=0.7154; TP=871; FN=1598; FP=1354; TN=13585     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.9804; Root: loss=1.1242; ROC=0.7131; TP=842; FN=1547; FP=1413; TN=13606     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.052; Root: loss=1.1328; ROC=0.7131; TP=803; FN=1571; FP=1354; TN=13680      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.769; Root: loss=1.1316; ROC=0.7158; TP=895; FN=1538; FP=1411; TN=13564      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.7205; Root: loss=1.1275; ROC=0.713; TP=809; FN=1574; FP=1399; TN=13626      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.0318; Root: loss=1.125; ROC=0.7224; TP=873; FN=1544; FP=1401; TN=13590      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.6725; Root: loss=1.1382; ROC=0.702; TP=770; FN=1582; FP=1416; TN=13640      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.6515; Root: loss=1.1447; ROC=0.721; TP=870; FN=1601; FP=1339; TN=13598      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.6626; Root: loss=1.1473; ROC=0.7025; TP=783; FN=1608; FP=1436; TN=13581     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.006; Root: loss=1.1878; ROC=0.7092; TP=867; FN=1678; FP=1396; TN=13467      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.9979; Root: loss=1.1714; ROC=0.7106; TP=847; FN=1667; FP=1382; TN=13512     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.849; Root: loss=1.1377; ROC=0.7122; TP=869; FN=1555; FP=1474; TN=13510      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.7221; Root: loss=1.1513; ROC=0.7188; TP=878; FN=1623; FP=1424; TN=13483     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.9134; Root: loss=1.149; ROC=0.7129; TP=842; FN=1608; FP=1393; TN=13565      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.8192; Root: loss=1.1222; ROC=0.7155; TP=817; FN=1554; FP=1403; TN=13634     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=2.0552; Root: loss=1.1504; ROC=0.7126; TP=853; FN=1606; FP=1412; TN=13537     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.6132; Root: loss=1.1017; ROC=0.7153; TP=825; FN=1490; FP=1424; TN=13669     
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.7836; Root: loss=1.1212; ROC=0.721; TP=851; FN=1552; FP=1369; TN=13636      
Evaluate: 34/34; LR: 3.05176e-05; Total: loss=1.9696; Root: loss=1.1329; ROC=0.7138; TP=841; FN=1587; FP=1445; TN=13535     
End: 2021-03-03 13:09:15"

log[['tuning_divnn_reg']]=
  "Conduct hyperparameter tuning for DI-VNN timing regressor model
Started: 2021-03-10 06:30:47 
2021-03-10 06:30:48.024557: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 06:30:48.024906: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 06:30:48.025198: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 06:30:48.025478: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 06:30:48.025702: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 06:30:48.025840: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 06:30:48.026110: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=46s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8898; Root: loss=8721; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8827; Root: loss=8820; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7487; Root: loss=8540; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=8954; Root: loss=8899; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6851; Root: loss=8531; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9045; Root: loss=8834; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 07:50:38.335001: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 07:50:38.335346: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 07:50:38.335648: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 07:50:38.335899: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 07:50:38.336119: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 07:50:38.336257: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 07:50:38.336519: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=46s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8897; Root: loss=8716; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8828; Root: loss=8833; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7489; Root: loss=8536; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=8980; Root: loss=8903; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6850; Root: loss=8530; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9197; Root: loss=8835; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 09:10:21.479643: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 09:10:21.479956: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 09:10:21.480235: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 09:10:21.480460: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 09:10:21.480665: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 09:10:21.480792: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 09:10:21.481017: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=46s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8899; Root: loss=8719; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8826; Root: loss=8820; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7487; Root: loss=8537; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=8947; Root: loss=8896; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6850; Root: loss=8530; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9101; Root: loss=8829; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 10:29:40.466355: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 10:29:40.466690: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 10:29:40.466983: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 10:29:40.467221: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 10:29:40.467442: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 10:29:40.467580: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 10:29:40.467834: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=47s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8894; Root: loss=8721; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8829; Root: loss=8852; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7489; Root: loss=8541; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=8927; Root: loss=8904; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6854; Root: loss=8534; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9042; Root: loss=8837; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 11:49:10.573918: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 11:49:10.574225: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 11:49:10.574499: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 11:49:10.574717: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 11:49:10.574921: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 11:49:10.575049: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 11:49:10.575283: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=48s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8899; Root: loss=8720; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8830; Root: loss=8820; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7486; Root: loss=8539; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=8982; Root: loss=8949; RMSE=95
Step: 135/135; LR: 0.015; Total: loss=6852; Root: loss=8531; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9071; Root: loss=8866; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 13:08:16.600238: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 13:08:16.600551: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 13:08:16.600829: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 13:08:16.601054: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 13:08:16.601259: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 13:08:16.601386: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 13:08:16.601612: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=45s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8894; Root: loss=8720; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8826; Root: loss=8823; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7488; Root: loss=8541; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=8953; Root: loss=8903; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6854; Root: loss=8534; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9067; Root: loss=8834; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 14:27:26.924680: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 14:27:26.925012: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 14:27:26.925300: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 14:27:26.925543: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 14:27:26.925766: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 14:27:26.925903: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 14:27:26.926153: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=47s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8900; Root: loss=8722; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8833; Root: loss=8820; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7495; Root: loss=8544; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=8933; Root: loss=8899; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6855; Root: loss=8536; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9102; Root: loss=8831; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 15:46:00.420109: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 15:46:00.420460: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 15:46:00.420765: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 15:46:00.421007: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 15:46:00.421227: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 15:46:00.421364: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 15:46:00.421627: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 12s
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8952; Root: loss=8719; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=8878; Root: loss=8822; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7549; Root: loss=8541; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=9019; Root: loss=8899; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6885; Root: loss=8534; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9243; Root: loss=8844; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 17:05:23.793122: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 17:05:23.793461: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 17:05:23.793745: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 17:05:23.793983: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 17:05:23.794203: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 17:05:23.794341: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 17:05:23.794585: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=46s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=9272; Root: loss=8730; RMSE=93          
Epoch: 1/5; LR: 0.015625; Total: loss=9234; Root: loss=8827; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7957; Root: loss=8553; RMSE=92       
Epoch: 2/5; LR: 0.015; Total: loss=9321; Root: loss=8933; RMSE=95
Step: 135/135; LR: 0.015; Total: loss=7104; Root: loss=8547; RMSE=92         
Epoch: 3/5; LR: 0.0144; Total: loss=9303; Root: loss=8865; RMSE=94
Evaluation 30/30 RMSE=94
2021-03-10 18:24:27.617313: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-10 18:24:27.617657: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-10 18:24:27.617939: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-10 18:24:27.618172: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-10 18:24:27.618389: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-10 18:24:27.618530: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-10 18:24:27.618768: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=46s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=10019; Root: loss=9079; RMSE=95         
Epoch: 1/5; LR: 0.015625; Total: loss=10038; Root: loss=9217; RMSE=96
Step: 135/135; LR: 0.015625; Total: loss=8890; Root: loss=8965; RMSE=95       
Epoch: 2/5; LR: 0.015; Total: loss=10128; Root: loss=9283; RMSE=96
Step: 135/135; LR: 0.015; Total: loss=7613; Root: loss=8959; RMSE=95         
Epoch: 3/5; LR: 0.0144; Total: loss=10134; Root: loss=9207; RMSE=96
Evaluation 30/30 RMSE=96
End: 2021-03-10 19:43:42"

log[['modeling_divnn_reg']]=
  "Conduct modeling for DI-VNN timing regressor
Started: 2021-03-11 22:23:11 
2021-03-11 22:23:12.214214: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1618] Found device 0 with properties: 
name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.7085
pciBusID: 0000:01:00.0
2021-03-11 22:23:12.214541: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2021-03-11 22:23:12.214823: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1746] Adding visible gpu devices: 0
2021-03-11 22:23:12.215046: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1159] Device interconnect StreamExecutor with strength 1 edge matrix:
2021-03-11 22:23:12.215255: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1165]      0 
2021-03-11 22:23:12.215379: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1178] 0:   N 
2021-03-11 22:23:12.215619: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1304] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 11264 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=44s  
Warm-up:  7 steps
Step: 135/135; LR: 0.015625; Total: loss=8896; Root: loss=8720; RMSE=93          
Epoch: 1/500; LR: 0.015625; Total: loss=8826; Root: loss=8825; RMSE=94
Step: 135/135; LR: 0.015625; Total: loss=7487; Root: loss=8537; RMSE=92       
Epoch: 2/500; LR: 0.015; Total: loss=8915; Root: loss=8898; RMSE=94
Step: 135/135; LR: 0.015; Total: loss=6851; Root: loss=8529; RMSE=92         
Epoch: 3/500; LR: 0.0144; Total: loss=8955; Root: loss=8826; RMSE=94
Step: 135/135; LR: 0.0144; Total: loss=8176; Root: loss=8538; RMSE=92      
Epoch: 4/500; LR: 0.013824; Total: loss=9515; Root: loss=8824; RMSE=94
Step: 135/135; LR: 0.013824; Total: loss=9036; Root: loss=8542; RMSE=92      
Epoch: 5/500; LR: 0.01327104; Total: loss=10630; Root: loss=8851; RMSE=94
Step: 135/135; LR: 0.01327104; Total: loss=5903; Root: loss=8520; RMSE=92      
Epoch: 6/500; LR: 0.0127402; Total: loss=14265; Root: loss=8914; RMSE=94
Step: 135/135; LR: 0.0127402; Total: loss=9028; Root: loss=8543; RMSE=92      
Epoch: 7/500; LR: 0.01223059; Total: loss=10514; Root: loss=8884; RMSE=94
Step: 135/135; LR: 0.01223059; Total: loss=9117; Root: loss=8544; RMSE=92      
Epoch: 8/500; LR: 0.01174137; Total: loss=13936; Root: loss=8881; RMSE=94
Step: 135/135; LR: 0.01174137; Total: loss=8400; Root: loss=8539; RMSE=92      
Epoch: 9/500; LR: 0.01127171; Total: loss=13832; Root: loss=8932; RMSE=95
Step: 135/135; LR: 0.01127171; Total: loss=8438; Root: loss=8538; RMSE=92      
Epoch: 10/500; LR: 0.01082084; Total: loss=10614; Root: loss=8901; RMSE=94
Step: 135/135; LR: 0.01082084; Total: loss=6193; Root: loss=8521; RMSE=92      
Epoch: 11/500; LR: 0.01038801; Total: loss=11713; Root: loss=8840; RMSE=94
Step: 135/135; LR: 0.01038801; Total: loss=7900; Root: loss=8533; RMSE=92       
Epoch: 12/500; LR: 0.009972489; Total: loss=13441; Root: loss=8858; RMSE=94
Step: 135/135; LR: 0.009972489; Total: loss=12087; Root: loss=8562; RMSE=93      
Epoch: 13/500; LR: 0.00957359; Total: loss=13761; Root: loss=8885; RMSE=94
Step: 135/135; LR: 0.00957359; Total: loss=9056; Root: loss=8538; RMSE=92      
Epoch: 14/500; LR: 0.009190646; Total: loss=12148; Root: loss=8854; RMSE=94
Step: 135/135; LR: 0.009190646; Total: loss=6342; Root: loss=8517; RMSE=92      
Epoch: 15/500; LR: 0.00882302; Total: loss=11203; Root: loss=8923; RMSE=94
Step: 135/135; LR: 0.00882302; Total: loss=10519; Root: loss=8547; RMSE=92       
Epoch: 16/500; LR: 0.008470099; Total: loss=10971; Root: loss=8874; RMSE=94
Step: 135/135; LR: 0.008470099; Total: loss=8209; Root: loss=8529; RMSE=92      
Epoch: 17/500; LR: 0.008131295; Total: loss=12152; Root: loss=8821; RMSE=94
Step: 135/135; LR: 0.008131295; Total: loss=8223; Root: loss=8529; RMSE=92      
Epoch: 18/500; LR: 0.007806044; Total: loss=10631; Root: loss=8872; RMSE=94
Step: 135/135; LR: 0.007806044; Total: loss=7758; Root: loss=8525; RMSE=92      
Epoch: 19/500; LR: 0.007493802; Total: loss=10583; Root: loss=8826; RMSE=94
Step: 135/135; LR: 0.007493802; Total: loss=5755; Root: loss=8510; RMSE=92      
Epoch: 20/500; LR: 0.00719405; Total: loss=10742; Root: loss=8866; RMSE=94
Step: 135/135; LR: 0.00719405; Total: loss=7546; Root: loss=8523; RMSE=92      
Epoch: 21/500; LR: 0.006906288; Total: loss=12822; Root: loss=8887; RMSE=94
Step: 135/135; LR: 0.006906288; Total: loss=5939; Root: loss=8511; RMSE=92      
Epoch: 22/500; LR: 0.006630036; Total: loss=13819; Root: loss=8846; RMSE=94
Step: 135/135; LR: 0.006630036; Total: loss=10580; Root: loss=8545; RMSE=92      
Epoch: 23/500; LR: 0.006364835; Total: loss=11563; Root: loss=8867; RMSE=94
Step: 135/135; LR: 0.006364835; Total: loss=7220; Root: loss=8520; RMSE=92      
Epoch: 24/500; LR: 0.006110241; Total: loss=13681; Root: loss=8806; RMSE=94
Step: 135/135; LR: 0.006110241; Total: loss=6345; Root: loss=8514; RMSE=92      
Epoch: 25/500; LR: 0.005865831; Total: loss=12984; Root: loss=8906; RMSE=94
Step: 135/135; LR: 0.005865831; Total: loss=11248; Root: loss=8550; RMSE=92      
Epoch: 26/500; LR: 0.005631198; Total: loss=14111; Root: loss=8861; RMSE=94
Step: 135/135; LR: 0.005631198; Total: loss=10584; Root: loss=8544; RMSE=92      
Epoch: 27/500; LR: 0.00540595; Total: loss=11210; Root: loss=8781; RMSE=94
Step: 135/135; LR: 0.00540595; Total: loss=7366; Root: loss=8520; RMSE=92      
Epoch: 28/500; LR: 0.005189712; Total: loss=10643; Root: loss=8896; RMSE=94
Step: 135/135; LR: 0.005189712; Total: loss=7825; Root: loss=8523; RMSE=92      
Epoch: 29/500; LR: 0.004982124; Total: loss=12084; Root: loss=8942; RMSE=95
Step: 135/135; LR: 0.004982124; Total: loss=9045; Root: loss=8532; RMSE=92      
Epoch: 30/500; LR: 0.004782839; Total: loss=10364; Root: loss=8803; RMSE=94
Step: 135/135; LR: 0.004782839; Total: loss=7852; Root: loss=8523; RMSE=92      
Epoch: 31/500; LR: 0.004591525; Total: loss=13733; Root: loss=8816; RMSE=94
Step: 135/135; LR: 0.004591525; Total: loss=6931; Root: loss=8516; RMSE=92      
Epoch: 32/500; LR: 0.004407864; Total: loss=14770; Root: loss=8875; RMSE=94
Step: 135/135; LR: 0.004407864; Total: loss=9340; Root: loss=8534; RMSE=92      
Epoch: 33/500; LR: 0.004231549; Total: loss=11300; Root: loss=8822; RMSE=94
Step: 135/135; LR: 0.004231549; Total: loss=7682; Root: loss=8521; RMSE=92      
Epoch: 34/500; LR: 0.004062288; Total: loss=10452; Root: loss=8820; RMSE=94
Step: 135/135; LR: 0.004062288; Total: loss=8467; Root: loss=8527; RMSE=92      
Epoch: 35/500; LR: 0.003899796; Total: loss=10567; Root: loss=8897; RMSE=94
Step: 135/135; LR: 0.003899796; Total: loss=8797; Root: loss=8530; RMSE=92       
Epoch: 36/500; LR: 0.003743804; Total: loss=12149; Root: loss=8827; RMSE=94
Step: 135/135; LR: 0.003743804; Total: loss=11268; Root: loss=8548; RMSE=92      
Epoch: 37/500; LR: 0.003594052; Total: loss=8953; Root: loss=8820; RMSE=94
Step: 135/135; LR: 0.003594052; Total: loss=10451; Root: loss=8542; RMSE=92      
Epoch: 38/500; LR: 0.00345029; Total: loss=11312; Root: loss=8841; RMSE=94
Step: 135/135; LR: 0.00345029; Total: loss=9933; Root: loss=8538; RMSE=92      
Epoch: 39/500; LR: 0.003312278; Total: loss=12429; Root: loss=8894; RMSE=94
Step: 135/135; LR: 0.003312278; Total: loss=7237; Root: loss=8517; RMSE=92      
Epoch: 40/500; LR: 0.003179787; Total: loss=12509; Root: loss=8856; RMSE=94
Step: 135/135; LR: 0.003179787; Total: loss=9799; Root: loss=8536; RMSE=92       
Epoch: 41/500; LR: 0.003052596; Total: loss=11334; Root: loss=8851; RMSE=94
Step: 135/135; LR: 0.003052596; Total: loss=11912; Root: loss=8552; RMSE=92      
Epoch: 42/500; LR: 0.002930492; Total: loss=13833; Root: loss=8900; RMSE=94
Step: 135/135; LR: 0.002930492; Total: loss=10256; Root: loss=8540; RMSE=92     
Epoch: 43/500; LR: 0.002813272; Total: loss=11041; Root: loss=8873; RMSE=94
Step: 135/135; LR: 0.002813272; Total: loss=7638; Root: loss=8521; RMSE=92      
Epoch: 44/500; LR: 0.002700741; Total: loss=10836; Root: loss=8818; RMSE=94
Step: 135/135; LR: 0.002700741; Total: loss=9542; Root: loss=8535; RMSE=92      
Epoch: 45/500; LR: 0.002592712; Total: loss=13750; Root: loss=8837; RMSE=94
Step: 135/135; LR: 0.002592712; Total: loss=8741; Root: loss=8529; RMSE=92      
Epoch: 46/500; LR: 0.002489003; Total: loss=13685; Root: loss=8868; RMSE=94
Step: 135/135; LR: 0.002489003; Total: loss=7456; Root: loss=8519; RMSE=92      
Epoch: 47/500; LR: 0.002389443; Total: loss=17261; Root: loss=8843; RMSE=94
Step: 135/135; LR: 0.002389443; Total: loss=6860; Root: loss=8515; RMSE=92      
Epoch: 48/500; LR: 0.002293865; Total: loss=12319; Root: loss=8914; RMSE=94
Step: 135/135; LR: 0.002293865; Total: loss=8922; Root: loss=8530; RMSE=92      
Epoch: 49/500; LR: 0.002202111; Total: loss=14509; Root: loss=8869; RMSE=94
Step: 135/135; LR: 0.002202111; Total: loss=8924; Root: loss=8530; RMSE=92      
Epoch: 50/500; LR: 0.002114026; Total: loss=10573; Root: loss=8819; RMSE=94
Step: 135/135; LR: 0.002114026; Total: loss=8967; Root: loss=8530; RMSE=92      
Epoch: 51/500; LR: 0.002029465; Total: loss=13714; Root: loss=8872; RMSE=94
Step: 135/135; LR: 0.002029465; Total: loss=8390; Root: loss=8526; RMSE=92      
Epoch: 52/500; LR: 0.001948287; Total: loss=10722; Root: loss=8826; RMSE=94
Step: 135/135; LR: 0.001948287; Total: loss=7149; Root: loss=8517; RMSE=92      
Epoch: 53/500; LR: 0.001870355; Total: loss=14725; Root: loss=8866; RMSE=94
Step: 135/135; LR: 0.001870355; Total: loss=7022; Root: loss=8516; RMSE=92      
Epoch: 54/500; LR: 0.001795541; Total: loss=12391; Root: loss=8887; RMSE=94
Step: 135/135; LR: 0.001795541; Total: loss=6631; Root: loss=8513; RMSE=92      
Epoch: 55/500; LR: 0.001723719; Total: loss=14006; Root: loss=8845; RMSE=94
Step: 135/135; LR: 0.001723719; Total: loss=8116; Root: loss=8524; RMSE=92      
Epoch: 56/500; LR: 0.001654771; Total: loss=11379; Root: loss=8865; RMSE=94
Step: 135/135; LR: 0.001654771; Total: loss=10250; Root: loss=8539; RMSE=92     
Epoch: 57/500; LR: 0.00158858; Total: loss=13533; Root: loss=8805; RMSE=94
Step: 135/135; LR: 0.00158858; Total: loss=9256; Root: loss=8532; RMSE=92      
Epoch: 58/500; LR: 0.001525037; Total: loss=11585; Root: loss=8903; RMSE=94
Step: 135/135; LR: 0.001525037; Total: loss=8163; Root: loss=8524; RMSE=92      
Epoch: 59/500; LR: 0.001464035; Total: loss=12072; Root: loss=8858; RMSE=94
Step: 135/135; LR: 0.001464035; Total: loss=10205; Root: loss=8539; RMSE=92     
Epoch: 60/500; LR: 0.001405474; Total: loss=13033; Root: loss=8779; RMSE=94
Step: 135/135; LR: 0.001405474; Total: loss=8673; Root: loss=8528; RMSE=92      
Epoch: 61/500; LR: 0.001349255; Total: loss=13906; Root: loss=8895; RMSE=94
Step: 135/135; LR: 0.001349255; Total: loss=10230; Root: loss=8539; RMSE=92      
Epoch: 62/500; LR: 0.001295285; Total: loss=12333; Root: loss=8940; RMSE=95
Step: 135/135; LR: 0.001295285; Total: loss=10376; Root: loss=8540; RMSE=92     
Epoch: 63/500; LR: 0.001243473; Total: loss=12295; Root: loss=8802; RMSE=94
Step: 135/135; LR: 0.001243473; Total: loss=9680; Root: loss=8535; RMSE=92      
Epoch: 64/500; LR: 0.001193734; Total: loss=12461; Root: loss=8815; RMSE=94
Step: 135/135; LR: 0.001193734; Total: loss=5309; Root: loss=8503; RMSE=92      
Epoch: 65/500; LR: 0.001145985; Total: loss=10769; Root: loss=8874; RMSE=94
Step: 135/135; LR: 0.001145985; Total: loss=7123; Root: loss=8516; RMSE=92      
Epoch: 66/500; LR: 0.001100146; Total: loss=10782; Root: loss=8822; RMSE=94
Step: 135/135; LR: 0.001100146; Total: loss=9661; Root: loss=8535; RMSE=92      
Epoch: 67/500; LR: 0.00105614; Total: loss=12170; Root: loss=8819; RMSE=94
Step: 135/135; LR: 0.00105614; Total: loss=7390; Root: loss=8518; RMSE=92      
Epoch: 68/500; LR: 0.001013894; Total: loss=12405; Root: loss=8896; RMSE=94
Step: 135/135; LR: 0.001013894; Total: loss=7299; Root: loss=8517; RMSE=92      
Epoch: 69/500; LR: 0.0009733384; Total: loss=12082; Root: loss=8826; RMSE=94
Step: 135/135; LR: 0.0009733384; Total: loss=10582; Root: loss=8542; RMSE=92     
Epoch: 70/500; LR: 0.0009344049; Total: loss=14163; Root: loss=8820; RMSE=94
Step: 135/135; LR: 0.0009344049; Total: loss=6478; Root: loss=8511; RMSE=92      
Epoch: 71/500; LR: 0.0008970287; Total: loss=10150; Root: loss=8840; RMSE=94
Step: 135/135; LR: 0.0008970287; Total: loss=9184; Root: loss=8531; RMSE=92      
Epoch: 72/500; LR: 0.0008611476; Total: loss=11494; Root: loss=8893; RMSE=94
Step: 135/135; LR: 0.0008611476; Total: loss=7961; Root: loss=8522; RMSE=92      
Epoch: 73/500; LR: 0.0008267017; Total: loss=12668; Root: loss=8856; RMSE=94
Step: 135/135; LR: 0.0008267017; Total: loss=9054; Root: loss=8530; RMSE=92      
Epoch: 74/500; LR: 0.0007936336; Total: loss=12484; Root: loss=8851; RMSE=94
Step: 135/135; LR: 0.0007936336; Total: loss=9265; Root: loss=8532; RMSE=92      
Epoch: 75/500; LR: 0.0007618883; Total: loss=12257; Root: loss=8900; RMSE=94
Step: 135/135; LR: 0.0007618883; Total: loss=7768; Root: loss=8521; RMSE=92      
Epoch: 76/500; LR: 0.0007314127; Total: loss=10969; Root: loss=8873; RMSE=94
Step: 135/135; LR: 0.0007314127; Total: loss=8491; Root: loss=8526; RMSE=92      
Epoch: 77/500; LR: 0.0007021562; Total: loss=9140; Root: loss=8817; RMSE=94
Step: 135/135; LR: 0.0007021562; Total: loss=7954; Root: loss=8522; RMSE=92      
Epoch: 78/500; LR: 0.00067407; Total: loss=15200; Root: loss=8836; RMSE=94
Step: 135/135; LR: 0.00067407; Total: loss=7613; Root: loss=8519; RMSE=92      
Epoch: 79/500; LR: 0.0006471072; Total: loss=12373; Root: loss=8868; RMSE=94
Step: 135/135; LR: 0.0006471072; Total: loss=11311; Root: loss=8547; RMSE=92     
Epoch: 80/500; LR: 0.0006212229; Total: loss=15937; Root: loss=8842; RMSE=94
Step: 135/135; LR: 0.0006212229; Total: loss=7399; Root: loss=8518; RMSE=92      
Epoch: 81/500; LR: 0.000596374; Total: loss=14708; Root: loss=8914; RMSE=94
Step: 135/135; LR: 0.000596374; Total: loss=7484; Root: loss=8518; RMSE=92      
Epoch: 82/500; LR: 0.000572519; Total: loss=10747; Root: loss=8869; RMSE=94
Step: 135/135; LR: 0.000572519; Total: loss=7350; Root: loss=8517; RMSE=92      
Epoch: 83/500; LR: 0.0005496183; Total: loss=13589; Root: loss=8818; RMSE=94
Step: 135/135; LR: 0.0005496183; Total: loss=7051; Root: loss=8515; RMSE=92      
Epoch: 84/500; LR: 0.0005276335; Total: loss=12496; Root: loss=8871; RMSE=94
Step: 135/135; LR: 0.0005276335; Total: loss=11984; Root: loss=8552; RMSE=92     
Epoch: 85/500; LR: 0.0005065282; Total: loss=12303; Root: loss=8825; RMSE=94
Step: 135/135; LR: 0.0005065282; Total: loss=10794; Root: loss=8543; RMSE=92     
Epoch: 86/500; LR: 0.0004862671; Total: loss=12664; Root: loss=8865; RMSE=94
Step: 135/135; LR: 0.0004862671; Total: loss=8036; Root: loss=8522; RMSE=92      
Epoch: 87/500; LR: 0.0004668164; Total: loss=14367; Root: loss=8886; RMSE=94
Step: 135/135; LR: 0.0004668164; Total: loss=8559; Root: loss=8526; RMSE=92      
Epoch: 88/500; LR: 0.0004481437; Total: loss=11483; Root: loss=8845; RMSE=94
Step: 135/135; LR: 0.0004481437; Total: loss=12623; Root: loss=8556; RMSE=93     
Epoch: 89/500; LR: 0.000430218; Total: loss=12694; Root: loss=8865; RMSE=94
Step: 135/135; LR: 0.000430218; Total: loss=9233; Root: loss=8531; RMSE=92      
Epoch: 90/500; LR: 0.0004130093; Total: loss=13667; Root: loss=8805; RMSE=94
Step: 135/135; LR: 0.0004130093; Total: loss=8012; Root: loss=8522; RMSE=92      
Epoch: 91/500; LR: 0.0003964889; Total: loss=17113; Root: loss=8903; RMSE=94
Step: 135/135; LR: 0.0003964889; Total: loss=6338; Root: loss=8510; RMSE=92      
Epoch: 92/500; LR: 0.0003806293; Total: loss=13076; Root: loss=8858; RMSE=94
Step: 135/135; LR: 0.0003806293; Total: loss=7365; Root: loss=8518; RMSE=92      
Epoch: 93/500; LR: 0.0003654042; Total: loss=15421; Root: loss=8779; RMSE=94
Step: 135/135; LR: 0.0003654042; Total: loss=7579; Root: loss=8519; RMSE=92      
Epoch: 94/500; LR: 0.000350788; Total: loss=14152; Root: loss=8895; RMSE=94
Step: 135/135; LR: 0.000350788; Total: loss=5751; Root: loss=8506; RMSE=92      
Epoch: 95/500; LR: 0.0003367565; Total: loss=15181; Root: loss=8940; RMSE=95
Step: 135/135; LR: 0.0003367565; Total: loss=7112; Root: loss=8516; RMSE=92      
Epoch: 96/500; LR: 0.0003232862; Total: loss=13708; Root: loss=8802; RMSE=94
Step: 135/135; LR: 0.0003232862; Total: loss=10621; Root: loss=8542; RMSE=92     
Epoch: 97/500; LR: 0.0003103547; Total: loss=11633; Root: loss=8815; RMSE=94
Step: 135/135; LR: 0.0003103547; Total: loss=9277; Root: loss=8532; RMSE=92      
Epoch: 98/500; LR: 0.0002979406; Total: loss=13810; Root: loss=8874; RMSE=94
Step: 135/135; LR: 0.0002979406; Total: loss=6452; Root: loss=8511; RMSE=92      
Epoch: 99/500; LR: 0.000286023; Total: loss=14852; Root: loss=8822; RMSE=94
Step: 135/135; LR: 0.000286023; Total: loss=9841; Root: loss=8536; RMSE=92      
Epoch: 100/500; LR: 0.000274582; Total: loss=14543; Root: loss=8819; RMSE=94
Step: 135/135; LR: 0.000274582; Total: loss=7828; Root: loss=8521; RMSE=92      
Epoch: 101/500; LR: 0.0002635987; Total: loss=11287; Root: loss=8896; RMSE=94
Evaluate: 34/34; LR: 0.0002635987; Total: loss=11789; Root: loss=8896; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=9390; Root: loss=8998; RMSE=95      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=8715; Root: loss=8563; RMSE=93      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=7886; Root: loss=9044; RMSE=95       
Evaluate: 34/34; LR: 0.0002635987; Total: loss=10541; Root: loss=9139; RMSE=96      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=7231; Root: loss=8688; RMSE=93      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=9312; Root: loss=8617; RMSE=93      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=8703; Root: loss=8917; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=7704; Root: loss=9064; RMSE=95      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=7127; Root: loss=8998; RMSE=95      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=8844; Root: loss=8562; RMSE=93      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=9931; Root: loss=9120; RMSE=95       
Evaluate: 34/34; LR: 0.0002635987; Total: loss=9605; Root: loss=9119; RMSE=95      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=10772; Root: loss=8857; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=10764; Root: loss=9184; RMSE=96      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=8824; Root: loss=8902; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=5479; Root: loss=8914; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=7117; Root: loss=8648; RMSE=93      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=9102; Root: loss=8620; RMSE=93      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=8803; Root: loss=8845; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=8120; Root: loss=8777; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=10986; Root: loss=8718; RMSE=93      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=11181; Root: loss=8948; RMSE=95      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=10070; Root: loss=9023; RMSE=95      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=11490; Root: loss=8940; RMSE=95      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=9706; Root: loss=8518; RMSE=92      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=8197; Root: loss=8801; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=10161; Root: loss=8896; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=10402; Root: loss=8919; RMSE=94      
Evaluate: 34/34; LR: 0.0002635987; Total: loss=6860; Root: loss=8987; RMSE=95       
End: 2021-03-12 18:59:41"

log[['test_data']]=
  "Compile data for set of: calib 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=29s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 32s
Compile data for set of: ran 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=32s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 34s
Compile data for set of: geo 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=20s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 33s
Compile data for set of: tem 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=23s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 35s
Compile data for set of: bgt 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=04s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 30s"

log[['test_data_reg']]=
  "Compile data for set of: int 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=02m 01s
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 42s
Compile data for set of: calib 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=24s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 32s
Compile data for set of: ran 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=29s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 32s
Compile data for set of: geo 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=18s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 31s
Compile data for set of: tem 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=21s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 31s
Compile data for set of: bgt 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=04s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 30s"

log[['divnn']]=
  "Calibrate and evaluate DI-VNN 
Started: 2021-03-16 11:11:05 
Get predicted probability of DI-VNN
43/43 [==============================] - 83s 2s/step
Calibrate DI-VNN
Evaluate non-calibrated DI-VNN for set of: ran 
53/53 [==============================] - 103s 2s/step
Evaluate non-calibrated DI-VNN for set of: geo 
31/31 [==============================] - 59s 2s/step
Evaluate non-calibrated DI-VNN for set of: tem 
36/36 [==============================] - 70s 2s/step
Evaluate non-calibrated DI-VNN for set of: bgt 
5/5 [==============================] - 10s 2s/step
Evaluate calibrated DI-VNN for set of: ran 
53/53 [==============================] - 101s 2s/step
Evaluate calibrated DI-VNN for set of: geo 
31/31 [==============================] - 59s 2s/step
Evaluate calibrated DI-VNN for set of: tem 
36/36 [==============================] - 69s 2s/step
Evaluate calibrated DI-VNN for set of: bgt 
5/5 [==============================] - 10s 2s/step
End: 2021-03-16 11:25:29"

log[['timing_divnn']]=
  "Evaluate DI-VNN regressor 
Started: 2021-03-16 11:56:41 
Get timing regression of DI-VNN
211/211 [==============================] - 414s 2s/step
  |                                                  | 0 % ~calculating
Evaluate DI-VNN timing regression for set of: calib 
43/43 [==============================] - 84s 2s/step
Evaluate non-calibrated DI-VNN for set of: calib 
43/43 [==============================] - 84s 2s/step
Evaluate calibrated DI-VNN for set of: calib 
43/43 [==============================] - 83s 2s/step
  |++++++++++                                        | 20% ~16m 52s
Evaluate DI-VNN timing regression for set of: ran 
53/53 [==============================] - 105s 2s/step
Evaluate non-calibrated DI-VNN for set of: ran 
53/53 [==============================] - 102s 2s/step
Evaluate calibrated DI-VNN for set of: ran 
53/53 [==============================] - 105s 2s/step
  |++++++++++++++++++++                              | 40% ~14m 12s
Evaluate DI-VNN timing regression for set of: geo 
31/31 [==============================] - 61s 2s/step
Evaluate non-calibrated DI-VNN for set of: geo 
31/31 [==============================] - 61s 2s/step
Evaluate calibrated DI-VNN for set of: geo 
31/31 [==============================] - 60s 2s/step
  |++++++++++++++++++++++++++++++                    | 60% ~08m 21s
Evaluate DI-VNN timing regression for set of: tem 
36/36 [==============================] - 73s 2s/step
Evaluate non-calibrated DI-VNN for set of: tem 
36/36 [==============================] - 70s 2s/step
Evaluate calibrated DI-VNN for set of: tem 
36/36 [==============================] - 69s 2s/step
  |++++++++++++++++++++++++++++++++++++++++          | 80% ~04m 02s
Evaluate DI-VNN timing regression for set of: bgt 
5/5 [==============================] - 10s 2s/step
Evaluate non-calibrated DI-VNN for set of: bgt 
5/5 [==============================] - 10s 2s/step
Evaluate calibrated DI-VNN for set of: bgt 
5/5 [==============================] - 10s 2s/step
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=16m 39s
End: 2021-03-16 12:20:20"

log[['test_data_bld']]=
  "Compile data for set of: ran 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=14s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=02m 00s
Compile data for set of: geo 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=09s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 56s
Compile data for set of: tem 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=11s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 56s
Compile data for set of: bgt 
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=06s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 58s"

log[['eval_bld_divnn']]=
  "Evaluate non-calibrated DI-VNN for set of: ran 
20/20 [==============================] - 43s 2s/step
Evaluate non-calibrated DI-VNN for set of: geo 
11/11 [==============================] - 21s 2s/step
Evaluate non-calibrated DI-VNN for set of: tem 
14/14 [==============================] - 31s 2s/step
Evaluate non-calibrated DI-VNN for set of: bgt 
2/2 [==============================] - 5s 3s/step
Evaluate calibrated DI-VNN for set of: ran 
20/20 [==============================] - 41s 2s/step
Evaluate calibrated DI-VNN for set of: geo 
11/11 [==============================] - 21s 2s/step
Evaluate calibrated DI-VNN for set of: tem 
14/14 [==============================] - 26s 2s/step
Evaluate calibrated DI-VNN for set of: bgt 
2/2 [==============================] - 4s 2s/step"


log[['visualization']]=
  "Get ontonet visualisation table.
Get ontoarray visualisation table.
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01h 06m 40s"

log[['visualization_ontoarray_reg']]=
  "Get ontoarray visualisation table.
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01h 04m 47s"

log[['app']]=
  "Start 2021-04-21 20:43:13 
Convert the day intervals into the historical rates
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=22s  
Transform dimensions
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01s  
Transform features by 1-bit stochastic gradient descent (SGD)
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=00s  
Compile into a TidySet
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=01m 25s
Calling DI-VNN
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=42s  
Compute prediction
Calibrate prediction
Retrieve internal properties
  |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=32s  
End 2021-04-21 20:47:47"

saveRDS(log,'data/log.rds')
rm(log)