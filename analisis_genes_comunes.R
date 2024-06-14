load('spe1.RData')

#spatialDE
load('out1.RData')

#filtro para quedarme con los significativos
data_frameDE <- as.data.frame(out1)
rownames(data_frameDE) <- data_frameDE$g
filtered_data_frameDE <- data_frameDE[data_frameDE$qval < 0.01,]

#SPARK
load('SPARK1.RData')

#calculo los qvalores
pval <- spark12$combined_pvalue
qvals <- qvalue(pval)
spark12$adjusted_pvalue <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSP <- as.data.frame(spark12)
filtered_data_frameSP <- data_frameSP[data_frameSP$adjusted_pvalue < 0.01,]

#SPARKX
load('sparkx1.RData')

#calculo los qvalores
pval <- spk1$res_mtest$combinedPval
qvals <- qvalue(pval)
spk1$res_mtest$adjustedPval <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSPX <- as.data.frame(spk1$res_mtest)
filtered_data_frameSPX <- data_frameSPX[data_frameSPX$adjustedPval < 0.01,]

# Crear dataframes de ejemplo
df1 <- data.frame(name = rownames(filtered_data_frameDE))
df2 <- data.frame(name = rownames(filtered_data_frameSP))
df3 <- data.frame(name = rownames(filtered_data_frameSPX))

# Encontrar nombres comunes usando dplyr
nombres_comunes <- df1 %>%
  inner_join(df2, by = "name") %>%
  inner_join(df3, by = "name") %>%
  select(name)

# Mostrar nombres comunes
print(nombres_comunes)

# Contar cuántos nombres coinciden en los tres dataframes
num_nombres_comunes <- nrow(nombres_comunes)
cat("El número de nombres que coinciden en los tres dataframes es:", num_nombres_comunes, "\n")


#muestra 2

load('spe2.RData')

#spatialDE
load('out2.RData')
out2 <- out2[-9065,]

#filtro para quedarme con los significativos
data_frameDE <- as.data.frame(out2)
rownames(data_frameDE) <- data_frameDE$g
filtered_data_frameDE <- data_frameDE[data_frameDE$qval < 0.01,]

#SPARK
load('SPARK2.RData')

#calculo los qvalores
pval <- spark22$combined_pvalue
qvals <- qvalue(pval)
spark22$adjusted_pvalue <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSP <- as.data.frame(spark22)
filtered_data_frameSP <- data_frameSP[data_frameSP$adjusted_pvalue < 0.01,]

#SPARKX
load('sparkx2.RData')

#calculo los qvalores
pval <- spk2$res_mtest$combinedPval
qvals <- qvalue(pval)
spk2$res_mtest$adjustedPval <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSPX <- as.data.frame(spk2$res_mtest)
filtered_data_frameSPX <- data_frameSPX[data_frameSPX$adjustedPval < 0.01,]

# Crear dataframes de ejemplo
df1 <- data.frame(name = rownames(filtered_data_frameDE))
df2 <- data.frame(name = rownames(filtered_data_frameSP))
df3 <- data.frame(name = rownames(filtered_data_frameSPX))

# Encontrar nombres comunes usando dplyr
nombres_comunes <- df1 %>%
  inner_join(df2, by = "name") %>%
  inner_join(df3, by = "name") %>%
  select(name)

# Mostrar nombres comunes
print(nombres_comunes)

# Contar cuántos nombres coinciden en los tres dataframes
num_nombres_comunes <- nrow(nombres_comunes)
cat("El número de nombres que coinciden en los tres dataframes es:", num_nombres_comunes, "\n")


#muestra 3

load('spe3.RData')

#spatialDE
load('out3.RData')

#filtro para quedarme con los significativos
data_frameDE <- as.data.frame(out3)
rownames(data_frameDE) <- data_frameDE$g
filtered_data_frameDE <- data_frameDE[data_frameDE$qval < 0.01,]

#SPARK
load('SPARK3.RData')

#calculo los qvalores
pval <- spark32$combined_pvalue
qvals <- qvalue(pval)
spark32$adjusted_pvalue <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSP <- as.data.frame(spark32)
filtered_data_frameSP <- data_frameSP[data_frameSP$adjusted_pvalue < 0.01,]

#SPARKX
load('sparkx3.RData')

#calculo los qvalores
pval <- spk3$res_mtest$combinedPval
qvals <- qvalue(pval)
spk3$res_mtest$adjustedPval <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSPX <- as.data.frame(spk3$res_mtest)
filtered_data_frameSPX <- data_frameSPX[data_frameSPX$adjustedPval < 0.01,]

# Crear dataframes de ejemplo
df1 <- data.frame(name = rownames(filtered_data_frameDE))
df2 <- data.frame(name = rownames(filtered_data_frameSP))
df3 <- data.frame(name = rownames(filtered_data_frameSPX))

# Encontrar nombres comunes usando dplyr
nombres_comunes <- df1 %>%
  inner_join(df2, by = "name") %>%
  inner_join(df3, by = "name") %>%
  select(name)

# Mostrar nombres comunes
print(nombres_comunes)

# Contar cuántos nombres coinciden en los tres dataframes
num_nombres_comunes <- nrow(nombres_comunes)
cat("El número de nombres que coinciden en los tres dataframes es:", num_nombres_comunes, "\n")

#muestra 4

load('spe4.RData')

#spatialDE
load('out4.RData')

#filtro para quedarme con los significativos
data_frameDE <- as.data.frame(out4)
rownames(data_frameDE) <- data_frameDE$g
filtered_data_frameDE <- data_frameDE[data_frameDE$qval < 0.01,]

#SPARK
load('SPARK4.RData')

#calculo los qvalores
pval <- spark42$combined_pvalue
qvals <- qvalue(pval)
spark42$adjusted_pvalue <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSP <- as.data.frame(spark42)
filtered_data_frameSP <- data_frameSP[data_frameSP$adjusted_pvalue < 0.01,]

#SPARKX
load('sparkx4.RData')

#calculo los qvalores
pval <- spk4$res_mtest$combinedPval
qvals <- qvalue(pval)
spk4$res_mtest$adjustedPval <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSPX <- as.data.frame(spk4$res_mtest)
filtered_data_frameSPX <- data_frameSPX[data_frameSPX$adjustedPval < 0.01,]

# Crear dataframes de ejemplo
df1 <- data.frame(name = rownames(filtered_data_frameDE))
df2 <- data.frame(name = rownames(filtered_data_frameSP))
df3 <- data.frame(name = rownames(filtered_data_frameSPX))

# Encontrar nombres comunes usando dplyr
nombres_comunes <- df1 %>%
  inner_join(df2, by = "name") %>%
  inner_join(df3, by = "name") %>%
  select(name)

# Mostrar nombres comunes
print(nombres_comunes)

# Contar cuántos nombres coinciden en los tres dataframes
num_nombres_comunes <- nrow(nombres_comunes)
cat("El número de nombres que coinciden en los tres dataframes es:", num_nombres_comunes, "\n")

#muestra 5

load('spe5.RData')

#spatialDE
load('out5.RData')

#filtro para quedarme con los significativos
data_frameDE <- as.data.frame(out5)
rownames(data_frameDE) <- data_frameDE$g
filtered_data_frameDE <- data_frameDE[data_frameDE$qval < 0.01,]

#SPARK
load('SPARK5.RData')

#calculo los qvalores
pval <- spark52$combined_pvalue
qvals <- qvalue(pval)
spark52$adjusted_pvalue <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSP <- as.data.frame(spark52)
filtered_data_frameSP <- data_frameSP[data_frameSP$adjusted_pvalue < 0.01,]

#SPARKX
load('sparkx5.RData')

#calculo los qvalores
pval <- spk5$res_mtest$combinedPval
qvals <- qvalue(pval)
spk5$res_mtest$adjustedPval <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSPX <- as.data.frame(spk5$res_mtest)
filtered_data_frameSPX <- data_frameSPX[data_frameSPX$adjustedPval < 0.01,]

# Crear dataframes de ejemplo
df1 <- data.frame(name = rownames(filtered_data_frameDE))
df2 <- data.frame(name = rownames(filtered_data_frameSP))
df3 <- data.frame(name = rownames(filtered_data_frameSPX))

# Encontrar nombres comunes usando dplyr
nombres_comunes <- df1 %>%
  inner_join(df2, by = "name") %>%
  inner_join(df3, by = "name") %>%
  select(name)

# Mostrar nombres comunes
print(nombres_comunes)

# Contar cuántos nombres coinciden en los tres dataframes
num_nombres_comunes <- nrow(nombres_comunes)
cat("El número de nombres que coinciden en los tres dataframes es:", num_nombres_comunes, "\n")

#muestra 6

load('spe6.RData')

#spatialDE
load('out6.RData')

#filtro para quedarme con los significativos
data_frameDE <- as.data.frame(out6)
rownames(data_frameDE) <- data_frameDE$g
filtered_data_frameDE <- data_frameDE[data_frameDE$qval < 0.01,]

#SPARK
load('SPARK6.RData')

#calculo los qvalores
pval <- spark62$combined_pvalue
qvals <- qvalue(pval)
spark62$adjusted_pvalue <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSP <- as.data.frame(spark62)
filtered_data_frameSP <- data_frameSP[data_frameSP$adjusted_pvalue < 0.01,]

#SPARKX
load('sparkx6.RData')

#calculo los qvalores
pval <- spk6$res_mtest$combinedPval
qvals <- qvalue(pval)
spk6$res_mtest$adjustedPval <- qvals$qvalues

#filtro para quedarme con los significativos
data_frameSPX <- as.data.frame(spk6$res_mtest)
filtered_data_frameSPX <- data_frameSPX[data_frameSPX$adjustedPval < 0.01,]

# Crear dataframes de ejemplo
df1 <- data.frame(name = rownames(filtered_data_frameDE))
df2 <- data.frame(name = rownames(filtered_data_frameSP))
df3 <- data.frame(name = rownames(filtered_data_frameSPX))

# Encontrar nombres comunes usando dplyr
nombres_comunes <- df1 %>%
  inner_join(df2, by = "name") %>%
  inner_join(df3, by = "name") %>%
  select(name)

# Mostrar nombres comunes
print(nombres_comunes)

# Contar cuántos nombres coinciden en los tres dataframes
num_nombres_comunes <- nrow(nombres_comunes)
cat("El número de nombres que coinciden en los tres dataframes es:", num_nombres_comunes, "\n")
