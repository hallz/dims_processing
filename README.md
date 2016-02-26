dims_processing

This is the readme file for the dims_processing repository.

Use the hrms_promt_POS.R or hrms_prompt_NEG.R scripts to set up your working directories, and source the main script (hrms_POS.R or hrms_NEG.R).

Put these scripts and the LipidLists files in your working directory.

Note that you can make your own lipid lists using the lipid list generator excel file. 


################################################################################################################################################


setwd("D:/Data_processing work shop_HRMS_MAR2015") ### where your mzXML files are stored and where processed files will be saved

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

####################################################################################################################################################