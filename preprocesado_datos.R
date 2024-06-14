## Análisis exploratorio de los datos 
library(ggplot2)
library(scater)
library(scuttle)
library(scran)
library(ggspavis)

## Cargo datos 
load('spe.RData')

## normalizo los datos 
spe <- computeLibraryFactors(spe)
summary(sizeFactors(spe))

## Crear el histograma de los size factors
ggplot(as.data.frame(colData(spe)), aes(x = sizeFactors(spe))) + 
  geom_histogram(binwidth = 0.1, fill = "red", color = "black", alpha = 0.7) +
  labs(title = "",
       x = "",
       y = "") +
  theme_minimal() 


#transformacion logaritmica 
spe <- logNormCounts(spe)
assayNames(spe)

##me guardo los datos definitivos 
save(spe, file = "./spe.RData")

# fit mean-variance relationship
dec <- modelGeneVar(spe)

# visualize mean-variance relationship
fit <- metadata(dec)
plot(fit$mean, fit$var, 
     xlab = "mean of log-expression", ylab = "variance of log-expression")
curve(fit$trend(x), col = "dodgerblue", add = TRUE, lwd = 2)

# select top HVGs
top_hvgs <- getTopHVGs(dec, prop = 0.1)
length(top_hvgs)

plotSpots(spe, annotate = 'ENSG00000134042', point_size = 0.5, pal = c('#F0F0F0','darkred'))

load("E:/Irene/Master/TFM/Documentacion/Metodos/datos/raw/counts_and_images/spe.Rdata")

# Selecciona el gen de interés
gene_of_interest <- 'ENSG00000134042'

# Extrae la expresión del gen de interés
expr_data <- assay(spe, "logcounts")[gene_of_interest, ]

# Obtener las coordenadas espaciales
coords <- spatialCoords(spe)

# Obtener el identificador de muestra
sample_ids <- colData(spe)$sample_id

# Crear un data frame para ggplot2
plot_data <- data.frame(
  x = coords[,1],
  y = coords[,2],
  expression = expr_data,
  sample_id = sample_ids
)

# Crear la gráfica utilizando ggplot2
p <- ggplot(plot_data, aes(x = x, y = y, color = expression)) +
  geom_point() +
  facet_wrap(~ sample_id) +
  scale_color_gradient(low = "white", high = "red") +
  theme_minimal() +
  labs( color = "Expresión", x = "",
        y = "")

# Mostrar la gráfica
print(p)

p2 <- ggplot(plot_data, aes(x = expression)) +
  geom_histogram(binwidth = 0.5, fill = "red", color = "black", alpha = 0.7) +
  facet_wrap(~ sample_id) +
  theme_minimal() +
  labs(x = "",
       y = "")

# Mostrar la gráfica
print(p2)
