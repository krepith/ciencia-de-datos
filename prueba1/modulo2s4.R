library(tidyverse)
install.packages("datos")
library(datos)
install.packages("ggplot2")
library(ggplot2)

ggplot(data = diamantes)+
  geom_bar(mapping = aes(x=corte))

diamantes %>% 
  count(corte)

ggplot(data = diamantes)+
  geom_histogram(mapping = aes(x=quilate), binwidth = 0.5)

diamantes %>% 
  count(cut_width(quilate, 0.5))

pequenos <- diamantes %>% 
  filter(quilate<3)

ggplot(data= pequenos, mapping = aes(x=quilate, colour = corte))+
  geom_freqpoly(binwidth = 0.1)

ggplot(data = fiel, mapping = aes(x=erupciones))+
  geom_histogram(binwidth = 0.25)

ggplot(data = diamantes)+ #aca buscamos valores inusuales
  geom_histogram(mapping = aes(x=y), binwidth = 0.5)+
  coord_cartesian(ylim = c(0,50))

inusual <- diamantes %>% 
  filter(y < 3 | y > 20) %>% 
  select(precio,x,y,z) %>% 
  arrange(y)
inusual

#opcion 1 eliminar valores faltantes !NO RECOMENDADO¡

diamates2 <- diamantes %>% 
  filter(between(y,3,20))

#opcion 2 reemplazar valores inusuales con valores faltantes
diamantes2 <- diamantes %>% 
  mutate(y=ifelse(y < 3 | y > 20, NA, y))

ggplot(data=diamantes2, mapping = aes(x=x,y=y))+
  geom_point(na.rm = TRUE) #ignora los NA

#variables categoricas y continuas 

ggplot(data= diamantes, mapping = aes(x = precio))+
  geom_freqpoly(mapping = aes(colour = corte), binwidth = 500)

ggplot(diamantes)+
  geom_bar(mapping = aes(x = corte))

ggplot(data= diamantes, mapping = aes(x = precio, y= ..density..))+
  geom_freqpoly(mapping = aes(colour = corte), binwidth = 500)

ggplot(data= diamantes, mapping = aes(x = corte, y = precio))+
  geom_boxplot()

ggplot(data= millas, mapping = aes(x = clase, y = autopista))+
  geom_boxplot()

ggplot(data= millas)+
  geom_boxplot(mapping = aes(x=reorder(clase, autopista, FUN = median ), y= autopista ))

ggplot(data= millas)+
  geom_boxplot(mapping = aes(x=reorder(clase, autopista, FUN = median ), y= autopista ))+
  coord_flip()

#dos variables categoricas
ggplot(data = diamantes)+
  geom_count(mapping = aes(x = corte, y = color))

diamantes %>% 
  count(color, corte)

diamantes %>% 
  count(color, corte) %>% 
  ggplot(mapping = aes(x = color, y = corte))+
  geom_tile(mapping = aes(fill = n))

ggplot(data = diamantes)+
  geom_point(mapping = aes(x = quilate, y = precio), alpha = 1/100)
#agrega una difuminacion con alpha 

ggplot(data = pequenos)+
  geom_bin2d(mapping = aes(x= quilate, y = precio))

install.packages("hexbin")
library(hexbin)

ggplot(data = pequenos)+
  geom_hex(mapping = aes(x= quilate, y = precio))


