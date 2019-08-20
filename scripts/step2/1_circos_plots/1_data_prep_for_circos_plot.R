BMI_shin <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/BMI/001_mr_BMI_shin.txt", header = T, sep = "\t")
BMI_kettunen <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/BMI/001_mr_BMI_kettunen.txt", header = T, sep = "\t")

BF_shin <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/BF/001_mr_BF_shin.txt", header = T, sep = "\t")
BF_kettunen <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/BF/001_mr_BF_kettunen.txt", header = T, sep = "\t")

BFLu_shin <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/BF-Lu/001_mr_BF_shin.txt", header = T, sep = "\t")
BFLu_kettunen <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/BF-Lu/001_mr_BF_kettunen.txt", header = T, sep = "\t")

WHR_shin <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/WHR/001_mr_WHR_shin.txt", header = T, sep = "\t")
WHR_kettunen <- read.table("/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/WHR/001_mr_WHR_kettunen.txt", header = T, sep = "\t")

table(BF_kettunen$method)
table(BFLu_kettunen$method)
table(BF_shin$method)
table(BFLu_shin$method)


BMI_shin <- subset(BMI_shin, method != "IVW radial")
BMI_kettunen <- subset(BMI_kettunen, method != "IVW radial")
BF_shin <- subset(BF_shin, method != "IVW radial")
BF_kettunen <- subset(BF_kettunen, method != "IVW radial")
BFLu_shin <- subset(BFLu_shin, method != "IVW radial")
BFLu_kettunen <- subset(BFLu_kettunen, method != "IVW radial")
WHR_shin <- subset(WHR_shin, method != "IVW radial")
WHR_kettunen <- subset(WHR_kettunen, method != "IVW radial")

colnames(BMI_kettunen) <- c("id.exposure", "id.outcome", "outcome", "exposure_BMI_kettunen", "method", "nsnp_BMI_kettunen", "b_BMI_kettunen", "se_BMI_kettunen", "p_BMI_kettunen", "metabolite_category", "name")
colnames(BMI_shin) <- c("id.exposure", "id.outcome", "outcome", "exposure_BMI_shin", "method", "nsnp_BMI_shin", "b_BMI_shin", "se_BMI_shin", "p_BMI_shin", "metabolite_category", "name")
colnames(BF_kettunen) <- c("id.exposure", "id.outcome", "outcome", "exposure_BF_kettunen", "method", "nsnp_BF_kettunen", "b_BF_kettunen", "se_BF_kettunen", "p_BF_kettunen", "metabolite_category", "name")
colnames(BF_shin) <- c("id.exposure", "id.outcome", "outcome", "exposure_BF_shin", "method", "nsnp_BF_shin", "b_BF_shin", "se_BF_shin", "p_BF_shin", "metabolite_category", "name")
colnames(BFLu_kettunen) <- c("id.exposure", "id.outcome", "outcome", "exposure_BF-Lu_kettunen", "method", "nsnp_BF-Lu_kettunen", "b_BF-Lu_kettunen", "se_BF-Lu_kettunen", "p_BF-Lu_kettunen", "metabolite_category", "name")
colnames(BFLu_shin) <- c("id.exposure", "id.outcome", "outcome", "exposure_BF-Lu_shin", "method", "nsnp_BF-Lu_shin", "b_BF-Lu_shin", "se_BF-Lu_shin", "p_BF-Lu_shin", "metabolite_category", "name")
colnames(WHR_kettunen) <- c("id.exposure", "id.outcome", "outcome", "exposure_WHR_kettunen", "method", "nsnp_WHR_kettunen", "b_WHR_kettunen", "se_WHR_kettunen", "p_WHR_kettunen", "metabolite_category", "name")
colnames(WHR_shin) <- c("id.exposure", "id.outcome", "outcome", "exposure_WHR_shin", "method", "nsnp_WHR_shin", "b_WHR_shin", "se_WHR_shin", "p_WHR_shin", "metabolite_category", "name")

names(BMI_kettunen)
BMI_kettunen1 <- BMI_kettunen[,c(2,3,11,10,5,6,7,8,9)]
BF_kettunen1 <- BF_kettunen[,c(6,7,8,9)]
BFLu_kettunen1 <- BFLu_kettunen[,c(6,7,8,9)]
WHR_kettunen1 <- WHR_kettunen[,c(6,7,8,9)]

BMI_shin1 <- BMI_shin[,c(2,3,11,10,5,6,7,8,9)]
BF_shin1 <- BF_shin[,c(6,7,8,9)]
BFLu_shin1 <- BFLu_shin[,c(6,7,8,9)]
WHR_shin1 <- WHR_shin[,c(6,7,8,9)]

data_kettunen <- cbind(BMI_kettunen1, BF_kettunen1, BFLu_kettunen1, WHR_kettunen1)
data_shin <- cbind(BMI_shin1, BF_shin1, BFLu_shin1, WHR_shin1)

write.table(data_kettunen, "analysis/combined/002_combined_kettunen.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")

write.table(data_shin, "analysis/combined/002_combined_shin.txt", 
            row.names = FALSE, col.names = TRUE, quote = FALSE, sep = "\t")

