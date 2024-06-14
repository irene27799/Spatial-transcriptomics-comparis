#cargar las librerias 
library(SpatialExperiment)
library(scuttle)
library(ggplot2)
library(ggspavis)
library(scater)
library(scran)
library(pheatmap)
library(nnSVG)
library(here)
library(DropletUtils)
library(SPARK)
library(SingleCellExperiment)

#esta es mi matriz de conteo
load('spe.RData')
counts <- assay(spe)
spat_info <- as.data.frame(spatialCoords(spe))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

#SPARK-X por muestra 

#muestra 1
load('spe1.RData')
spe1 <- logNormCounts(spe1)
counts <- assay(spe1)
spat_info <- as.data.frame(spatialCoords(spe1))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

spk <- sparkx(scale(counts), spat_info, numCores = 1, option = 'mixture') 
save(spk, file = "./sparkx.RData")

#muestra 2
load('spe2.RData')
spe2 <- logNormCounts(spe2)
counts <- assay(spe2)
spat_info <- as.data.frame(spatialCoords(spe2))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

spk2 <- sparkx(scale(counts), spat_info, numCores = 1, option = 'mixture') 
save(spk2, file = "./sparkx2.RData")

#muestra 3
load('spe3.RData')
spe3 <- logNormCounts(spe3)
counts <- assay(spe3)
spat_info <- as.data.frame(spatialCoords(spe3))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

spk3 <- sparkx(scale(counts), spat_info, numCores = 1, option = 'mixture') 
save(spk3, file = "./sparkx3.RData")

#muestra 4
load('spe4.RData')
spe4 <- logNormCounts(spe4)
counts <- assay(spe4)
spat_info <- as.data.frame(spatialCoords(spe4))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

spk4 <- sparkx(scale(counts), spat_info, numCores = 1, option = 'mixture') 
save(spk4, file = "./sparkx4.RData")

#muestra 5
load('spe5.RData')
spe5 <- logNormCounts(spe5)
counts <- assay(spe5)
spat_info <- as.data.frame(spatialCoords(spe5))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

spk5 <- sparkx(scale(counts), spat_info, numCores = 1, option = 'mixture') 
save(spk5, file = "./sparkx5.RData")

#muestra 6
load('spe6.RData')
spe6 <- logNormCounts(spe6)
counts <- assay(spe6)
spat_info <- as.data.frame(spatialCoords(spe6))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

spk6 <- sparkx(scale(counts), spat_info, numCores = 1, option = 'mixture') 
save(spk6, file = "./sparkx6.RData")