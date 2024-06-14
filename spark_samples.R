#muestra 1
#esta es mi matriz de conteo
load('spe1.RData')
counts <- assay(spe1)
spat_info <- as.data.frame(spatialCoords(spe1))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

#SPARK 
spark <- CreateSPARKObject(counts=counts, 
                           location=spat_info,
                           percentage = 0.1, 
                           min_total_counts = 10)
save(spark, file = "./spark1.RData")

#numero de recuentos totales para cada spot
spark@lib_size <- apply(spark@counts, 2, sum)

#estimacion de los parametros 
spark <- spark.vc(spark, 
                  covariates = NULL, 
                  lib_size = spark@lib_size, 
                  num_core = 1,
                  verbose = F)
save(spark, file = "./spark11.RData")

#calculo de los pvalores 
spark <- spark.test(spark, 
                    check_positive = T, 
                    verbose = F)
save(spark, file = "./spark12.RData")

#muestra 2
#esta es mi matriz de conteo
load('spe2.RData')
counts <- assay(spe2)
spat_info <- as.data.frame(spatialCoords(spe2))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

#SPARK 
spark <- CreateSPARKObject(counts=counts, 
                           location=spat_info,
                           percentage = 0.1, 
                           min_total_counts = 10)
save(spark, file = "./spark2.RData")

#numero de recuentos totales para cada spot
spark@lib_size <- apply(spark@counts, 2, sum)

#estimacion de los parametros 
spark <- spark.vc(spark, 
                  covariates = NULL, 
                  lib_size = spark@lib_size, 
                  num_core = 1,
                  verbose = F)
save(spark, file = "./spark21.RData")

#calculo de los pvalores 
spark <- spark.test(spark, 
                    check_positive = T, 
                    verbose = F)
save(spark, file = "./spark22.RData")

#muestra 3
#esta es mi matriz de conteo
load('spe3.RData')
counts <- assay(spe3)
spat_info <- as.data.frame(spatialCoords(spe3))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

#SPARK 
spark <- CreateSPARKObject(counts=counts, 
                           location=spat_info,
                           percentage = 0.1, 
                           min_total_counts = 10)
save(spark, file = "./spark3.RData")

#numero de recuentos totales para cada spot
spark@lib_size <- apply(spark@counts, 2, sum)

#estimacion de los parametros 
spark <- spark.vc(spark, 
                  covariates = NULL, 
                  lib_size = spark@lib_size, 
                  num_core = 1,
                  verbose = F)
save(spark, file = "./spark31.RData")

#calculo de los pvalores 
spark <- spark.test(spark, 
                    check_positive = T, 
                    verbose = F)
save(spark, file = "./spark32.RData")

#muestra 4
#esta es mi matriz de conteo
load('spe4.RData')
counts <- assay(spe4)
spat_info <- as.data.frame(spatialCoords(spe4))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

#SPARK 
spark <- CreateSPARKObject(counts=counts, 
                           location=spat_info,
                           percentage = 0.1, 
                           min_total_counts = 10)
save(spark, file = "./spark4.RData")

#numero de recuentos totales para cada spot
spark@lib_size <- apply(spark@counts, 2, sum)

#estimacion de los parametros 
spark <- spark.vc(spark, 
                  covariates = NULL, 
                  lib_size = spark@lib_size, 
                  num_core = 1,
                  verbose = F)
save(spark, file = "./spark41.RData")

#calculo de los pvalores 
spark <- spark.test(spark, 
                    check_positive = T, 
                    verbose = F)
save(spark, file = "./spark42.RData")

#muestra 5
#esta es mi matriz de conteo
load('spe5.RData')
counts <- assay(spe5)
spat_info <- as.data.frame(spatialCoords(spe5))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

#SPARK 
spark <- CreateSPARKObject(counts=counts, 
                           location=spat_info,
                           percentage = 0.1, 
                           min_total_counts = 10)
save(spark, file = "./spark5.RData")

#numero de recuentos totales para cada spot
spark@lib_size <- apply(spark@counts, 2, sum)

#estimacion de los parametros 
spark <- spark.vc(spark, 
                  covariates = NULL, 
                  lib_size = spark@lib_size, 
                  num_core = 1,
                  verbose = F)
save(spark, file = "./spark51.RData")

#calculo de los pvalores 
spark <- spark.test(spark, 
                    check_positive = T, 
                    verbose = F)
save(spark, file = "./spark52.RData")

#muestra 6
#esta es mi matriz de conteo
load('spe6.RData')
counts <- assay(spe6)
spat_info <- as.data.frame(spatialCoords(spe6))
colnames(spat_info) <- c('x', 'y') 
colnames(counts) <- rownames(spat_info)

#SPARK 
spark <- CreateSPARKObject(counts=counts, 
                           location=spat_info,
                           percentage = 0.1, 
                           min_total_counts = 10)
save(spark, file = "./spark6.RData")

#numero de recuentos totales para cada spot
spark@lib_size <- apply(spark@counts, 2, sum)

#estimacion de los parametros 
spark <- spark.vc(spark, 
                  covariates = NULL, 
                  lib_size = spark@lib_size, 
                  num_core = 1,
                  verbose = F)
save(spark, file = "./spark61.RData")

#calculo de los pvalores 
spark <- spark.test(spark, 
                    check_positive = T, 
                    verbose = F)
save(spark, file = "./spark62.RData")