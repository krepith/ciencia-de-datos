library(tidyverse)
install.packages("epitools")
library (epitools)

nombres <- c("juan", "pedro", "luis", "sofia")
edades <-c(20,23,43,27)
enteros <- c(5L, 4L) ##la c es para decirle que es un vector la L es para indicar que es entero no x.0

 curso <- data.frame(nombres,edades)
glimpse(curso) ## usado para estudiar los datos muestra 
                ##carateristicas necesarias, columnas filas tipos de datos
str(curso) ##muestra las observaciones y las variables 
            ## muestra los tipos de datos

data("HairEyeColor") ##esta es una estructura no tiddy [fila, colmuna, registo]
                      #en este caso hay 2 registros uno para hombres otro para mujeres
HairEyeColor[,,1] #muestra el registro 1 (hombre)
HairEyeColor[,,"Female"] #ahora muesto el numero asignado a las mujeres

H <- expand.table(HairEyeColor) ## transforma una tabla de contigencia no tiddy en tiddy
x <- list(rep("pepe",3),1:20) ## crea una lista el primer registro es pepe*3 el segundo es del 1 al 20

m <- matrix(c(1,2,3,4,5,6), nrow=2, byrow = TRUE)
a <- array(1:12,c(2,3,2)) ##crea dos grupos de dos filas y 3 columnas

b <- 1:6
dim(b) <- c(3,2) #re escribe el arreglo en una matrix de dimension (x,y)
b

popu2018 <- c(123,345,300)
popu2019 <- c(213,232,522)

popu <- matrix(c(popu2018,popu2019), nrow=3, byrow=FALSE)
colnames(popu) <- c("poblacion2018", "poblacion2019")
rownames(popu) <- c("italia","francia","cincelejo")


popu[c("italia","francia"), ]
popu[1,]
popu <- cbind( popu, popu2020 = c (142,323,543,435))
popu <- rbind(popu, españa =c(132,426,434))
rowSums(popu) #suma las columnas
mean (popu[,2]) ##promedia la columna 2 
max(popu) ##busca el valor maximo
popu[,2] <- popu[,2]*2 ##multiplica la columna 2 por 2
which(popu == max(popu), arr.ind = TRUE)
is.data.frame(popu)

(y <- seq(1, 10, length.out = 5)) ## crea una secuencia de 1 a 5 de 5 numeros y al estar 
      ##encerrado en () imprime inmediatamente en pantalla el resultado


