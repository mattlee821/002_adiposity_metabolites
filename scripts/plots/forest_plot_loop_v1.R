# forest plot loop

##### environment
devtools::install_github("NightingaleHealth/ggforestplot")
library(ggforestplot)
library(ggplot2)
source("scripts/ggplot_my_theme.R")
library(cowplot)
kettunen_list <- read.table("data/kettunen_metabolites.txt", header = T, sep = "\t")

##### data
data1 <- read.table("analysis/combined/002_combined_kettunen.txt", header = T, sep = "\t")
data2 <- data1[,c(3,4,5,7,8,9)]
data2 <- left_join(data2, kettunen_list, by = "name")

# identify methods you want to plot
table(data2$method)
method_list <- c("Inverse variance weighted (multiplicative random effects)", "MR Egger", " Weighted median", "Weighted mode")
IVW <- subset(data2, method == "Inverse variance weighted (multiplicative random effects)")
IVW <- IVW[order(IVW$metabolite_category, IVW$b_BMI_kettunen),]
IVW$order <- 1:123
order <- IVW[,c(1,19)]
egger <- subset(data2, method == "MR Egger")
egger <-  left_join(egger, order, by = "name")
egger <- egger[order(egger$order),]
Weighted_median <- subset(data2, method == "Weighted median")
Weighted_median <-  left_join(Weighted_median, order, by = "name")
Weighted_median <- Weighted_median[order(Weighted_median$order),]
Weighted_mode <- subset(data2, method == "Weighted mode")
Weighted_mode <-  left_join(Weighted_mode, order, by = "name")
Weighted_mode <- Weighted_mode[order(Weighted_mode$order),]

data4 <- rbind(IVW, egger, Weighted_median, Weighted_mode)

colnames(data4)[1:6] <- c("name", "metabolite_category", "method", "estimate", "se", "p")
table(data4$subclass)

psignif <- 0.05/123
ci <- 0.95

plots <- list()
for (i in levels(data4$subclass)){
  data <- subset(data4, subclass == i)

  p <-   
  forestplot(df = data, 
             name = name, # the variable in df that contains the y-axis names. This argument is automatically quoted and evaluated in the context of the df data frame. See Note.
             estimate = estimate, # the variable in df that contains the values (or log of values) to be displayed. This argument is automatically quoted and evaluated in the context of the df data frame. See Note.
             se = se, # the variable in the df data frame that contains the standard error values. This argument is automatically quoted and evaluated in the context of the df data frame. See Note.
             pvalue = p, # the variable in df that contains the p-values. Defaults to NULL. When explicitly defined, in conjuction with the p-value threshold provided in the psignif, the non-significant entries will be drawn as hollow points. This argument is automatically quoted and evaluated in the context of the df data frame. See Note.
             colour = method, # the variable in df by which to colour the different groups of points. This argument is automatically quoted and evaluated in the context of the df data frame. See Note.
             shape = method, # the variable in df by which to shape the different groups of points. This argument is automatically quoted and evaluated in the context of the df data frame. See Note.
             logodds = FALSE, # logical (defaults to FALSE) specifying whether the estimate parameter should be treated as log odds/hazards ratio (TRUE) or not (FALSE). When logodds = TRUE the estimates and corresponding confidence intervals will be exponentiated and a log scale will be used for the x-axis.
             psignif = psignif, # numeric, defaults to 0.05. The p-value threshold for statistical significance. Entries with larger than psignif will be drawn with a hollow point.
             ci = ci, # A number between 0 and 1 (defaults to 0.95) indicating the type of confidence interval to be drawn.
             title = i,
             xlab = "1-SD increment in BMI per 1-SD increment in biomarker concentration ") +
    
    # change the shape of the IVW to a diamond
    scale_shape_manual(
      values = c(23,21,21,21)) +
    theme(
      legend.position = "bottom"
    )
  
  plot_name <- paste0("p",i)
  plots[[plot_name]] <- p
  
}


plots


