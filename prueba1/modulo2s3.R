library(tidyverse)

#limpieza de dato ----------
table4a
tablacasos <- table4a %>% 
  gather( '1999', '2000', key="año", value="cases") #unir dos variables en una sola columna
tablacasos

table4b
tablapoblacion <- table4b %>% 
  gather( '1999', '2000', key="año", value="population") #unir dos variables en una sola columna
tablapoblacion

#vamos a combinar las dos tablas para tener poblacion casos por años
nuevatabla <- left_join(tablacasos, tablapoblacion)
nuevatabla

table2
ntable2 <- table2 %>% 
  spread (key=type,value =count)
ntable2

table3
table3 %>% 
  separate(rate, into =c("cases","population"))

table5 %>% 
  unite(new_year, century, year, sep="") %>% 
  separate(rate, into =c("cases","population")) 
  
