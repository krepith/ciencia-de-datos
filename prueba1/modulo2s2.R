library(tidyverse)
library(lubridate)
library(dplyr)

casos <- read.csv("https://raw.githubusercontent.com/MinCiencia/Datos-COVID19/master/output/producto3/TotalesPorRegion_std.csv")

str(casos)
 
unique(casos$Region) #me muestra los valores unicos (cuales regiones tengo)
unique(casos$Categoria)
casos %>% 
  filter(Region != "Total", #tengo una region total que no quiero
         Categoria == "Casos nuevos totales") %>% #solo quiero los casos nuevos
  group_by(Anio= year(Fecha)) %>% #agrupare por cada año, agrupando por años iguales
  summarise(Total_nuevos = sum(Total, na.omit=TRUE))#ahora que tengo todos los datos nuevos por año, los sumare para tener el total por año

resumen_chile <- casos %>% 
  filter(Region != "Total", #tengo una region total que no quiero
         Categoria == "Casos nuevos totales") %>% #solo quiero los casos nuevos
  group_by(Region, Anio= year(Fecha), Mes = month(Fecha)) %>% #agrupare por cada año, agrupando por años iguales
  summarise(Total_nuevos = sum(Total, na.omit=TRUE))#ahora que tengo todos los datos nuevos por año, los sumare para tener el total por año

casos %>% 
  filter(Categoria == "Casos nuevos totales") %>% 
  group_by(Semana= week(Fecha)) %>% #agrupare por cada año, agrupando por años iguales
  summarise(Total = sum(Total)) %>% 
  mutate(Var= (Total/ lag(Total)-1)*100) %>% 
  filter(Semana != 53) %>% 
  ggplot(aes(Semana,Var))+
  geom_line()+
  geom_smooth()
 
