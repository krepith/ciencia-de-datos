install.packages("tidyverse")
install.packages("styler")
library(tidyverse)

data(iris)
View(iris)
dim(iris) #dimensiones
str(iris) #nombres 
head(iris, 6) #primeros X
tail (iris) ultimos x
summary(iris) #cuartiles, conteo y sumatorias 
glimpse (iris) #caracteristicas
min(iris$Sepal.Length) #minimo de una columna
max(iris$Sepal.Width)
unique(iris$Species) #valores unicos
table(iris$Sepal.Width) #conteo de variables
vignette("grid") #muestra la documentacion de una libreria 

plot(iris) #grafica

#formas de segmentar
setosa <- iris %>% 
  filter(Species == "setosa")
setosa2 <- iris[iris$Species == "setosa", ] #es lo mismo que lo anterior


