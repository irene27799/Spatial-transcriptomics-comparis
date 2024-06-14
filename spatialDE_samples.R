library(SpatialExperiment)
library(spatialDE)
library(patchwork)
library(ggplot2)
library(qvalue)
library(amap)
library(scater)
library(scran)
library(ggspavis)

#lo vamos a hacer muestra a muestra 

#muestra 1
load("spe1.Rdata")
assay(spe1, "counts") = as(assay(spe1, "counts"),'matrix')

#estabilizamos la varianza 
#y quitamos el efecto del tamaño del library
stabilized <- stabilize(assay(spe1))
sample_info <- as.data.frame(spatialCoords(spe1))
sample_info$total_counts <- colSums(assay(spe1))

assay(spe1) <- regress_out(counts = stabilized, sample_info = sample_info)

#spatialDE final 
out1 <- spatialDE(spe1, assay_type = "counts", verbose = FALSE)
save(out1, file = "./out1.RData")

#muestra 2
load("spe2.Rdata")
assay(spe2, "counts") = as(assay(spe2, "counts"),'matrix')

#estabilizamos la varianza 
#y quitamos el efecto del tamaño del library
stabilized <- stabilize(assay(spe2))
sample_info <- as.data.frame(spatialCoords(spe2))
sample_info$total_counts <- colSums(assay(spe2))

assay(spe2) <- regress_out(counts = stabilized, sample_info = sample_info)

#spatialDE final 
out2 <- spatialDE(spe2, assay_type = "counts", verbose = FALSE)
save(out2, file = "./out2.RData")

#muestra 3
load("spe3.Rdata")
assay(spe3, "counts") = as(assay(spe3, "counts"),'matrix')

#estabilizamos la varianza 
#y quitamos el efecto del tamaño del library
stabilized <- stabilize(assay(spe3))
sample_info <- as.data.frame(spatialCoords(spe3))
sample_info$total_counts <- colSums(assay(spe3))

assay(spe3) <- regress_out(counts = stabilized, sample_info = sample_info)

#spatialDE final 
out3 <- spatialDE(spe3, assay_type = "counts", verbose = FALSE)
save(out3, file = "./out3.RData")

#muestra 4
load("/home/ibonache/TFM_IreneBonache/spe4.Rdata")
assay(spe4, "counts") = as(assay(spe4, "counts"),'matrix')

#estabilizamos la varianza 
#y quitamos el efecto del tamaño del library
stabilized <- stabilize(assay(spe4))
sample_info <- as.data.frame(spatialCoords(spe4))
sample_info$total_counts <- colSums(assay(spe4))

assay(spe4) <- regress_out(counts = stabilized, sample_info = sample_info)

#spatialDE final 
out4 <- spatialDE(spe4, assay_type = "counts", verbose = FALSE)
save(out4, file = "./out4.RData")

#muestra 5
load("/home/ibonache/TFM_IreneBonache/spe5.Rdata")
assay(spe5, "counts") = as(assay(spe5, "counts"),'matrix')

#estabilizamos la varianza 
#y quitamos el efecto del tamaño del library
stabilized <- stabilize(assay(spe5))
sample_info <- as.data.frame(spatialCoords(spe5))
sample_info$total_counts <- colSums(assay(spe5))

assay(spe5) <- regress_out(counts = stabilized, sample_info = sample_info)

#spatialDE final 
out5 <- spatialDE(spe5, assay_type = "counts", verbose = FALSE)
save(out5, file = "./out5.RData")

#muestra 6
load("/home/ibonache/TFM_IreneBonache/spe6.Rdata")
assay(spe6, "counts") = as(assay(spe6, "counts"),'matrix')

#estabilizamos la varianza 
#y quitamos el efecto del tamaño del library
stabilized <- stabilize(assay(spe6))
sample_info <- as.data.frame(spatialCoords(spe6))
sample_info$total_counts <- colSums(assay(spe6))

assay(spe6) <- regress_out(counts = stabilized, sample_info = sample_info)

#spatialDE final 
out6 <- spatialDE(spe6, assay_type = "counts", verbose = FALSE)
save(out6, file = "./out6.RData")

