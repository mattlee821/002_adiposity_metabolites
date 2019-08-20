# script to combine all columns from mr() and selected columns from harmonise_data() outputs to get a final data frame with all MR results which includes labels for metabolite categories

# environment ====
## library ====
library(dplyr)

## set environment ====
directory_1 <- Sys.getenv("directory_1")
setwd(directory_1)

# BF Hubel 76 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Hubel_76/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Hubel_76/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BF Hubel 76 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Hubel_76/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Hubel_76/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Hubel_76/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BMI Locke 77 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Locke_77/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Locke_77/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BMI Locke 77 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Locke_77/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Locke_77/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Locke_77/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BF Lu 7 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Lu_7/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Lu_7/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BF Lu 7 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Lu_7/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BF_Lu_7/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BF_Lu_7/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHR Pulit 316 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHR Pulit 316 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHRadjBMI Pulit 346 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHRadjBMI Pulit 346 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Pulit_346/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHR Shungin 26 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHR SHungin 26 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHR_Shungin_26/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHRadjBMI Shungin 53 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# WHRadjBMI Shungin 53 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/WHRadjBMI_Shungin_53/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BMI Yengo 656 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BMI Yengo 656 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_656/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BMI Yengo 941 ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/mr_results_shin.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/harmonise_data_shin.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/001_mr_BF_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/mr_results_kettunen.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/harmonise_data_kettunen.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/001_mr_BF_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 

# BMI Yengo 941 clump ====
mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/mr_results_shin_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/harmonise_data_shin_clump.txt", header = T, sep = "\t")

data <- unique(harmonise_data[,c("id.outcome", "subcategory.outcome", "originalname.outcome")]) #there are some columns we need to put into the MR output file so we extract these from the data output file from MR base, namely these are to do with the names of the metabolites and the categories they are determined to be in (we use this info to create the sections of the circos plot)

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/001_mr_BF_shin_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 


mr_results <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/mr_results_kettunen_clump.txt", header = T, sep = "\t")
harmonise_data <- read.table("002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/harmonise_data_kettunen_clump.txt", header = T, sep = "\t")

data1 <- left_join(mr_results, data, by = "id.outcome") #merge the columns we just extracted with the MR output file

write.table(data1, "002_adiposity_metabolites/analysis/step1/BMI_Yengo_941/001_mr_BF_kettunen_clump.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t") 
