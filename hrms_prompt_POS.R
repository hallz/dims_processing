
setwd("D:/Data_processing work shop_HRMS_MAR2015") ### where your mzXML files are stored nad where processed files will be saved

source("hrms_POS.R") ####directory where the hrms_POS.R script is stored (ensure LipidLists are in the working directory)
library(xcms) 
library(data.table) 


 files = list.files(".", pattern=".mzXML")
 system.time(
  for (i in 1:length(files)) {
    main(files[i], rtwin=c(20,60), mzwin=c(200,1200))
  }
)   

 results <- signals_deviations()   

