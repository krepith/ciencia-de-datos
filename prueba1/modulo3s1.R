library(tidyverse)
ggplot2::mpg
mpg
view(mpg)
help(mpg)
?mpg

#displ: tamaño del motor litros
#hwy: numero de millas por galon

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y= hwy, color = class))
#ademas de color se puede usar shape para diferenciar por forma o alpha para diferenciar por 
#una escala de transparencia  de grises

ggplot(data =mpg)+
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_wrap(~class, nrow = 2) # muestras separado el comportamiento de cada clase
 #n row es cuantas filas de graficas para distribuirlas de manera comoda 


ggplot(data =mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, color =class))+
  facet_grid(drv~cyl) #muestra el comportamiento individual separadodos variables

ggplot(data =mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, color =class))+
  facet_grid(.~cyl) #muestra el comportamiento individual separado por una variable

ggplot(data =mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, color =class))+
  facet_grid(drv~.) #muestra el comportamiento individual separado por una variable

ggplot(data =mpg)+
  geom_smooth( mapping = aes(x=displ, y= hwy, linetype= drv))

ggplot(data =mpg)+
  geom_point( mapping = aes(x=displ, y= hwy, color=drv))+
  geom_smooth( mapping = aes(x=displ, y= hwy, linetype= drv, color =drv))
 #una grafica clara que muestra los puntos de dispersion al tiempo que las
#lineas de tendencia 

ggplot(data =mpg,mapping = aes(x=displ, y= hwy))+
  geom_point( mapping = aes(color=class))+
  geom_smooth( data = filter(mpg, class=="suv"), se=F)
#elimina el intervalo de convianza y muesta solo la linea de tendencia de una categoria
#pero muestra en colores todas las clases

