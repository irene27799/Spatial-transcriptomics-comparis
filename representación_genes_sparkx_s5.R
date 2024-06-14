#vamos a hacer lo mismo (representar genes) pero solo de la primera muestra
#prueba a representar genes con un spe 
library(SpatialExperiment)
library(spatialDE)
library(patchwork)
library(ggplot2)
library(qvalue)
library(amap)
library(scater)
library(scran)
library(ggspavis)

#cargar datos 
load('spe5.RData')
load('sparkx5.RData')

#calculo los qvalores
pval <- spk5$res_mtest$combinedPval
qvals <- qvalue(pval)
spk5$res_mtest$adjustedPval <- qvals$qvalues

#filtro para quedarme con los significativos
data_frame <- as.data.frame(spk5$res_mtest)
filtered_data_frame <- data_frame[data_frame$adjustedPval < 0.01,]


#filtro los genes que he seleccionado en mi spe original  
genes_to_keep <- rownames(filtered_data_frame)
spe_filtered <- spe5[genes_to_keep, ]

#vamos a hacer ahora cluster, a ver que genes están en cada cluster
assay(spe_filtered, "counts") = as(assay(spe_filtered, "counts"),'matrix')

# Realizar PCA
set.seed(123)
spePCA <- runPCA(spe_filtered)

# Extraer las primeras 23 componentes principales
pca_results <- reducedDim(spePCA, "PCA")
pca_subset <- pca_results[, 1:50]

#clustering como en el tutorial
#estabilizo la varianza
assay(spePCA) <- stabilize(assay(spePCA))
set.seed(123)
k <- 25
g <- buildSNNGraph(spePCA, k = k, use.dimred = "PCA")
g_walk <- igraph::cluster_walktrap(g)
clus <- g_walk$membership
table(clus)
colLabels(spe_filtered) <- factor(clus)

# Extraer coordenadas y etiquetas de clusters
coords <- spatialCoords(spe_filtered)
clusters <- colLabels(spe_filtered)

# Crear un data.frame para ggplot
plot_data <- data.frame(coords, cluster = clusters)

# Definir paleta de colores (puedes personalizar esta paleta)
pal <- c("darkorange", "magenta", "yellow","darkblue", "green","darkgreen")

# Graficar con ggplot2
ggplot(plot_data, aes(x = pxl_col_in_fullres, y = pxl_row_in_fullres, color = cluster)) +
  geom_point(size = 1) +
  scale_color_manual(values = pal) +
  theme_minimal() +
  theme(axis.text = element_blank(), axis.ticks = element_blank()) +
  coord_fixed() +
  scale_y_reverse()+
  labs(x = "", y = "")+
  guides(color = FALSE)
