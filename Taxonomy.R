# Taxonomic analysis using NCBI and HMP (Steps I have to take from Vishnu)
setwd("~/Work/Metagenomic_Analysis/Final_Analysis/TaxonomicAnalysis")
taxa <- read.csv (file = "NCBI_HMP_TAXA_ABUNDANCE", sep = "\t", header = T, row.names = 1)
taxa_proportions <- taxa/colSums(taxa)[col(taxa)]
write.table(taxa_proportions, file ="NCBI_HMP_TAXA_proportions.txt", sep = "\t")
taxa1 <- data.frame(t(taxa_proportions))

metadata <- read.csv(file="../Metadata.txt", sep = "\t", row.names=1, header = T)

bray_dist <- vegdist(taxa1, "bray")
taxa_bray_pcoa <-pcoa(bray_dist)
Groups <- metadata[,1:3]
taxa_bray_pcoa$values[1:2,]
mds.var.per = round(taxa_bray_pcoa$values$Eigenvalues/sum(taxa_bray_pcoa$values$Eigenvalues)*100, 1)
Taxa_Bray_PCoA_MATRIX <- taxa_bray_pcoa$vectors[,1:2]
Taxa_Bray_PCoA_MATRIX <- data.frame(Taxa_Bray_PCoA_MATRIX)
Taxa_Bray_PCoA_MATRIX_New <- cbind(Taxa_Bray_PCoA_MATRIX, Groups)

Color <- c("darkgreen", "darkred")
Colors <- c("brown4", "orangered3", "green4", "limegreen")

jpeg("Taxa_Bray_PCoA_Group.jpg", height = 4, width = 5, units = 'in', res = 600)
ggplot(Taxa_Bray_PCoA_MATRIX_New, aes(x=Axis.1, y=Axis.2, colour=Group)) + geom_point(size=3) + scale_shape_manual(values =1:20) + scale_color_manual(values=Color) + xlab(paste("PCoA1 - ", mds.var.per[1], "%", sep="")) + ylab(paste("PCoA2 - ", mds.var.per[2], "%", sep="")) + ggtitle("") + theme(axis.text.x = element_text(size = 12, colour = "black", face = "bold"), axis.text.y = element_text(size = 12, colour = "black", face = "bold"), legend.text = element_text(size = 14, colour = "black"), legend.title = element_text(size = 16, face = "bold")) + theme_bw() + geom_vline(xintercept = 0, linetype="dotted") +  geom_hline(yintercept = 0, linetype="dotted")
dev.off ()
jpeg("Taxa_Bray_PCoA_Group1.jpg", height = 4, width = 5, units = 'in', res = 600)
ggplot(Taxa_Bray_PCoA_MATRIX_New, aes(x=Axis.1, y=Axis.2, colour=Group1)) + geom_point(size=3) + scale_shape_manual(values =1:20) + scale_color_manual(values=Colors) + xlab(paste("PCoA1 - ", mds.var.per[1], "%", sep="")) + ylab(paste("PCoA2 - ", mds.var.per[2], "%", sep="")) + ggtitle("") + theme(axis.text.x = element_text(size = 12, colour = "black", face = "bold"), axis.text.y = element_text(size = 12, colour = "black", face = "bold"), legend.text = element_text(size = 14, colour = "black"), legend.title = element_text(size = 16, face = "bold")) + theme_bw() + geom_vline(xintercept = 0, linetype="dotted") +  geom_hline(yintercept = 0, linetype="dotted")
dev.off ()
bray_dist <- as.matrix(bray_dist)
adonis (bray_dist ~ Group1, data=metadata)
#Df SumsOfSqs MeanSqs F.Model      R2 Pr(>F)    
#Group1     3    4.2454 1.41515  20.359 0.56513  0.001 ***

#----Important Taxa Identification
#RandomForest
Group <- metadata$Group
taxa_proportions_Group <- cbind(taxa1, Group)
library (randomForest)
RF1 <- randomForest(Group~., data=taxa_proportions_Group, ntree = 1000, proximity = TRUE, importance = TRUE, do.trace = 100, cv.fold = 10, na.action = na.omit)
jpeg("RF_MDA_gorillavsHuman.jpg", height = 12, width = 6, units = 'in', res = 600)
varImpPlot(RF1, type=1)
dev.off ()
MDA <- importance(RF1, type=1)
write.table (MDA, file = "MDA_GorillavsHuman.txt", sep = "\t")

Group1 <- metadata$Group1
taxa_proportions_Group <- cbind(taxa1, Group1)
library (randomForest)
RF1 <- randomForest(Group1~., data=taxa_proportions_Group, ntree = 1000, proximity = TRUE, importance = TRUE, do.trace = 100, cv.fold = 10, na.action = na.omit)
jpeg("RF_MDA_compareAll4Groups.jpg", height = 12, width = 6, units = 'in', res = 600)
varImpPlot(RF1, type=1)
dev.off ()
MDA <- importance(RF1, type=1)
write.table (MDA, file = "MDA_comparisionbetweenAllFour.txt", sep = "\t")

#---- ROC Curve
OOB.votes <- RF1$votes
write.table (OOB.votes, file = "OOB_pred", sep = "\t")
predictions <- read.csv (file = "OOB_pred", sep = "\t")
roc.multi <- multiclass.roc(taxa_proportions_Group$Group1, predictions$Bantu)
auc(roc.multi)
# AUC: 0.869
rs <- roc.multi[['rocs']]
plot.roc(rs[[1]])
sapply(2:length(rs),function(i) lines.roc(rs[[i]],col=c("green")))

jpeg("AUC.png", height = 4, width = 4, units = 'in', res = 600)
plot.roc(rs[[1]], print.auc = TRUE, grid=c(0.1, 0.2), lwd=3)
dev.off ()
#RF1$confusion

#--- HeatMap using Selected 55 taxa
categories <- metadata[,1:2]
taxa_Sel <- read.csv (file = "Selected_common55Taxa_proportions.txt", sep = "\t", header = T, row.names = 1)
taxa_Sel<- as.matrix(taxa_Sel)
rownames(categories) <- colnames(taxa_Sel)
annot.color.col <- list('Group'=c("darkgreen", "darkred"),'Group1'=c("brown4", "orangered3", "green4", "limegreen"))
jpeg("Selected_Taxa_HeatMap.jpg", height = 8, width = 8, units = 'in', res = 600)
aheatmap(sqrt(sqrt(sqrt(taxa_Sel)))*100, color = "-RdYlBu2:100", breaks = 0,  main = "Association", distfun = "spearman", hclustfun = "complete", fontsize=10, scale = "column", Rowv = TRUE, Colv = TRUE, border_color = NA, legend = TRUE, cexRow = .7, cexCol = .7, annCol = categories, annRow = NA, annColors = annot.color.col, annLegend = TRUE)
dev.off ()

#-- New heatmap after sorting using Groups without clustering
taxa_Sel <- read.csv (file = "Selected_common55Taxa_proportions.txt", sep = "\t", header = T, row.names = 1)
taxa_Sel_t <- data.frame(t(taxa_Sel))
groups <- metadata[,1:2]
taxa_sel_Group <- cbind (taxa_Sel_t, groups)
write.table (taxa_sel_Group, file="Selected_Taxa_Groups.txt", sep ="\t")

Taxa_Sel_Group <- read.csv (file = "Selected_Taxa_Groups_Formatted.txt", sep = "\t", header = T, row.names = 1)
categories <- Taxa_Sel_Group[,56:57]
Taxa_Sel_pred <- Taxa_Sel_Group[,1:55]
rownames(categories) <- rownames(Taxa_Sel_pred)
annot.color.col <- list('Group'=c("darkgreen", "darkred"),'Group1'=c("brown4", "orangered3", "green4", "limegreen"))
jpeg("Selected_Taxa_HeatMap_Nocluster.jpg", height = 8, width = 10, units = 'in', res = 600)
aheatmap(sqrt(sqrt(sqrt(Taxa_Sel_pred)))*100, color = "-RdYlBu2:100", breaks = 0,  main = "Association", distfun = "spearman", hclustfun = "complete", fontsize=10, scale = "row", Rowv = NA, Colv = TRUE, border_color = NA, legend = TRUE, cexRow = .7, cexCol = .7, annRow = categories, annCol = NA, annColors = annot.color.col, annLegend = TRUE)
dev.off ()


#---- Tried
taxa_Sel <- data.frame(t(taxa_Sel))
taxa_sel_axis_group <- cbind (Taxa_Bray_PCoA_MATRIX, taxa_Sel, metadata)
Spirochate_combined <- taxa_sel_axis_group[,c(4,22,57)]
Spirochate_combined <- rowSums(Spirochate_combined)
Spirochate_combined_axis_group <- cbind (Taxa_Bray_PCoA_MATRIX, Spirochate_combined, metadata)

jpeg("Spirochate_combined.jpg", height = 4, width = 4, units = 'in', res = 600)
plot (Spirochate_combined_axis_group$Axis.1, sqrt(Spirochate_combined_axis_group$Spirochate_combined)*100, col=c("brown4", "orangered3", "green4", "limegreen")[Spirochate_combined_axis_group$Group1], pch=19, xlab="PCoA1",ylab="sqrt(Relative Abundance)%")
model1<-lm (sqrt(Spirochate_combined_axis_group$Spirochate_combined)*100 ~ Spirochate_combined_axis_group$Axis.1)
abline(model1)
dev.off ()
summary(model1)
#Multiple R-squared:  0.7569,	Adjusted R-squared:  0.7519 
#F-statistic: 152.5 on 1 and 49 DF,  p-value: < 2.2e-16

Prevotella_combined <- taxa_sel_axis_group[,c(18,36,48:56)]
Prevotella_combined <- rowSums(Prevotella_combined)
Prevotella_combined_axis_group <- cbind (Taxa_Bray_PCoA_MATRIX, Prevotella_combined, metadata)

jpeg("Prevotella_combined.jpg", height = 4, width = 4, units = 'in', res = 600)
plot (Prevotella_combined_axis_group$Axis.1, sqrt(Prevotella_combined_axis_group$Prevotella_combined)*100, col=c("brown4", "orangered3", "green4", "limegreen")[ Prevotella_combined_axis_group$Group1], pch=19, xlab="PCoA1",ylab="sqrt(Relative Abundance)")
model1<-lm (sqrt(Prevotella_combined_axis_group$Prevotella_combined)*100 ~ Prevotella_combined_axis_group$Axis.1)
abline(model1)
dev.off ()
summary(model1)
#Multiple R-squared:  0.4429,	Adjusted R-squared:  0.4315 
#F-statistic: 38.96 on 1 and 49 DF,  p-value: 9.92e-08
