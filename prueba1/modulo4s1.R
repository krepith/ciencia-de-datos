library(readr)
install.packages("dplyr")
library(dplyr)

datos <- read.csv("data/casos_totales.csv", header = TRUE, sep =",", dec=";")
datos <- transform(datos, Poblacion = as.numeric((as.factor(Poblacion))))
glimpse(datos) 
datos$Casos.confirmados <- as.numeric(datos$Casos.confirmados)
datos$Poblacion <- as.numeric(datos$Poblacion)
View(datos)
filter(datos,Comuna=="Buin") 
datos <- na.omit() #elimina datos NA
is.na(datos)#busca donde hay datos na
arrange(datos, Casos.confirmados) #ordena creciente
arrange(datos, desc(Casos.confirmados)) #ordena creciente
filter(datos,Comuna=="Buin")
select(filter(datos,Comuna=="Buin"), Casos.confirmados ) #selecciona
select(datos,Region:Poblacion) #selecciona todas las columnas entre region y comuna
select(datos,-(Region:Poblacion)) #selecciona todas las columnas excepto las que estan entre region y comuna
select(datos, Casos.confirmados,Poblacion, everything()) #ubica primero lo que le pedimos y luego todo lo demas
mutate(datos, porcentaje=Poblacion/Casos.confirmados) #crea una nueva columna con el nombre y la operacion asignados
reframe(datos, Casos.confirmados, na.rm=TRUE)

