# MR analysis of measures of adiposity and metabolites 

# environment ====
## library ====
#library(devtools)
#devtools::install_github("MRCIEU/TwoSampleMR")
#devtools::install_github("MRCIEU/MRInstruments")
library(MRInstruments) 
library(TwoSampleMR)
library(data.table)

## set environment ====
directory_1 <- Sys.getenv("directory_1")
setwd(directory_1)

## source environment/data etc. ====
### MR Base data
ao <- available_outcomes(access_token=NULL)

### methods
methods <- mr_method_list()
methods_heterogeneity <- subset(methods, heterogeneity_test == TRUE)$obj
methods <- methods[c(3,6,10,13),1]

### colours
#install.packages("wesanderson")
library(wesanderson)
d1 <- wes_palette("Royal1", type = "discrete")
d2 <- wes_palette("GrandBudapest2", type = "discrete")
d3 <- wes_palette("Cavalcanti1", type = "discrete")
d4 <- wes_palette("Rushmore1", type = "discrete")
discrete_wes_pal <- c(d1, d2, d3, d4)
rm(d1,d2,d3,d4)

### source other scripts
source("002_adiposity_metabolites/scripts/my_mr_scatter_plot.R")

# WHR Pulit 316 ====
## extract exposure instruments ====
exposure_data <- read_exposure_data("002_adiposity_metabolites/data/pulit_WHR_316.txt",
                                    clump = F,
                                    sep = "\t",
                                    snp_col = "SNP",
                                    beta_col = "beta.combined",
                                    se_col = "se.combined",
                                    eaf_col = "frqA1.combined",
                                    effect_allele_col = "A1.combined",
                                    other_allele_col = "A2.combined",
                                    pval_col = "pval.combined",
                                    samplesize_col = "nmeta.combined",
                                    min_pval = 5e-8)
exposure_data$exposure <- "Pulit WHR EU sex combined 316 SNPs"
exposure_data$id.exposure <- "Pulit WHR EU sex combined 316 SNPs"

dim(exposure_data)
head(exposure_data)

## extract outcome data ====
a <- c(303:754)
b <- seq_along(a)
c <- 1
d <- split(a, ceiling(b/c))
e <- list()
for (i in 1:length(d)){
  e[[i]] <- try(extract_outcome_data(snps = exposure_data$SNP, outcomes = c(d[[i]]), proxies = 1, rsq = 0.8, align_alleles = 1, palindromes = 1, maf_threshold = 0.3, access_token = NULL))
  if( length( grep("Error", e[[i]] ) ) == 1) {
    e[[i]] <- try(extract_outcome_data(snps = exposure_data$SNP, outcomes = c(d[[i]]), proxies = 1, rsq = 0.8, align_alleles = 1, palindromes = 1, maf_threshold = 0.3, access_token = NULL))
  }
}
print("completed loop1")
print(length(e))
error_check_shin <- e
outcome_data_shin <- rbindlist(e)
head(outcome_data_shin)
dim(outcome_data_shin)

a <- c(838:960)
b <- seq_along(a)
c <- 1
d <- split(a, ceiling(b/c))
e <- list()
for (i in 1:length(d)){
  e[[i]] <- try(extract_outcome_data(snps = exposure_data$SNP, outcomes = c(d[[i]]), proxies = 1, rsq = 0.8, align_alleles = 1, palindromes = 1, maf_threshold = 0.3, access_token = NULL))
  if( length( grep("Error", e[[i]] ) ) == 1) {
    e[[i]] <- try(extract_outcome_data(snps = exposure_data$SNP, outcomes = c(d[[i]]), proxies = 1, rsq = 0.8, align_alleles = 1, palindromes = 1, maf_threshold = 0.3, access_token = NULL))
  }
}
print("completed loop2")
print(length(e))
error_check_kettunen <- e
outcome_data_kettunen <- rbindlist(e)
head(outcome_data_kettunen)
dim(outcome_data_kettunen)


## harmonize data ====
harmonise_data_shin <- harmonise_data(exposure_data, outcome_data_shin, action = 2)
harmonise_data_kettunen <- harmonise_data(exposure_data, outcome_data_kettunen, action = 2)

## MR ====
mr_results_shin <- mr(harmonise_data_shin, method_list = methods)
mr_results_kettunen <- mr(harmonise_data_kettunen, method_list = methods)

## Sensitivity analysis ====
mr_singlesnp_shin <- mr_singlesnp(harmonise_data_shin)
mr_hetrogeneity_shin <- mr_heterogeneity(harmonise_data_shin,
                                         method_list = methods_heterogeneity)
mr_pleiotropy_shin <- mr_pleiotropy_test(harmonise_data_shin)
mr_leaveoneout_shin <- mr_leaveoneout(harmonise_data_shin)

mr_singlesnp_kettunen <- mr_singlesnp(harmonise_data_kettunen)
mr_hetrogeneity_kettunen <- mr_heterogeneity(harmonise_data_kettunen,
                                             method_list = methods_heterogeneity)
mr_pleiotropy_kettunen <- mr_pleiotropy_test(harmonise_data_kettunen)
mr_leaveoneout_kettunen <- mr_leaveoneout(harmonise_data_kettunen)


## Plots ====
plot_mr_scatter_shin <- my_mr_scatter_plot(mr_results_shin, harmonise_data_shin)
plot_singlesnp_forest_shin <- mr_forest_plot(mr_singlesnp_shin)
plot_leaveoneout_forest_shin <- mr_leaveoneout_plot(mr_leaveoneout_shin)
plot_mr_funnel_shin <- mr_funnel_plot(mr_singlesnp_shin)

plot_mr_scatter_kettunen <- my_mr_scatter_plot(mr_results_kettunen, harmonise_data_kettunen)
plot_singlesnp_forest_kettunen <- mr_forest_plot(mr_singlesnp_kettunen)
plot_leaveoneout_forest_kettunen <- mr_leaveoneout_plot(mr_leaveoneout_kettunen)
plot_mr_funnel_kettunen <- mr_funnel_plot(mr_singlesnp_kettunen)

### save plots ====
pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_mr_scatter_shin.pdf")
for (i in 1:length(plot_mr_scatter_shin)) {
  print(plot_mr_scatter_shin[[i]])
}
dev.off()

pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_singlesnp_forest_shin.pdf")
for (i in 1:length(plot_singlesnp_forest_shin)) {
  print(plot_singlesnp_forest_shin[[i]])
}
dev.off()

pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_leaveoneout_forest_shin.pdf")
for (i in 1:length(plot_leaveoneout_forest_shin)) {
  print(plot_leaveoneout_forest_shin[[i]])
}
dev.off()

pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_mr_funnel_shin.pdf")
for (i in 1:length(plot_mr_funnel_shin)) {
  print(plot_mr_funnel_shin[[i]])
}
dev.off()

pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_mr_scatter_kettunen.pdf")
for (i in 1:length(plot_mr_scatter_kettunen)) {
  print(plot_mr_scatter_kettunen[[i]])
}
dev.off()

pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_singlesnp_forest_kettunen.pdf")
for (i in 1:length(plot_singlesnp_forest_kettunen)) {
  print(plot_singlesnp_forest_kettunen[[i]])
}
dev.off()

pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_leaveoneout_forest_kettunen.pdf")
for (i in 1:length(plot_leaveoneout_forest_kettunen)) {
  print(plot_leaveoneout_forest_kettunen[[i]])
}
dev.off()

pdf("002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/plot_mr_funnel_kettunen.pdf")
for (i in 1:length(plot_mr_funnel_kettunen)) {
  print(plot_mr_funnel_kettunen[[i]])
}
dev.off()




## Save output ====
write.table(exposure_data, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/exposure_data.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(outcome_data_shin, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/outcome_data_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(outcome_data_kettunen, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/outcome_data_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(harmonise_data_shin, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/harmonise_data_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(harmonise_data_kettunen, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/harmonise_data_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_results_shin, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_results_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_results_kettunen, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_results_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_singlesnp_shin, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_singlesnp_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_singlesnp_kettunen, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_singlesnp_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_hetrogeneity_shin, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_hetrogeneity_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_hetrogeneity_kettunen, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_hetrogeneity_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_pleiotropy_shin, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_pleiotropy_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_pleiotropy_kettunen, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_pleiotropy_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_leaveoneout_shin, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_leaveoneout_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
write.table(mr_leaveoneout_kettunen, "002_adiposity_metabolites/analysis/step1/WHR_Pulit_316/mr_leaveoneout_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")
