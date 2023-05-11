#metricas
library(tidyverse)
library(lubridate)
library(readxl)
install.packages("Rmisc")
library(Rmisc)
atenciones <- read_excel("data/AtencionesUrgencia.xlsx")

respiratorias <- atenciones %>% 
  slice(4:11)

respiratorias <- respiratorias %>% 
  mutate(tipo = str_remove(tipo, pattern = " \\(([^\\)]+)\\)"))

respiratorias_long <- respiratorias %>%
  pivot_longer(cols =-tipo,
               names_to = "fecha",
               values_to =  "n")
respiratorias_long <- respiratorias_long %>%
  mutate(tipo = factor(tipo),
         fecha = ymd(fecha))

library(DataExplorer)
introduce(respiratorias_long) 
plot_intro(respiratorias_long) #grafica de analisis general

sum(respiratorias_long$n) #sumatoria de los casos
min(respiratorias_long$n) #minimo numero de casos
max(respiratorias_long$n) #maximo numero de casos

respiratorias_long %>% 
  group_by(mes = month(fecha)) %>% 
  dplyr::summarise(total = sum(n),
                   min= min(n),
                   max= max(n),
                   IQR= IQR(n), #intervalo intercuartilico
                   #mucha dispersion de datos 
                   mean= mean(n),
                   se= sd(n),
                   median = median(n),
                   q10= quantile(n, probs = 0.1),
                   q90= quantile(n, probs = 0.9),
                   upper_ci = CI(n, 0.95)[1], #intervalo de confianza 
                   lower_ci = CI(n, 0.95)[3]  #intervalo donde se mueven el 95% de los datos
                   )


attach(respiratorias_long)
numero <-  cut(n,breaks = nclass.Sturges(n))
Freq <- as.data.frame(table(numero))
tabla <- transform(Freq, cum_freq = cumsum(Freq),
                   rel = prop.table(Freq), cum_rel = cumsum(prop.table(Freq)))

tabla

detach(respiratorias_long)

hist(respiratorias_long$n)

respiratorias_long %>% 
  ggplot(aes(n, tipo))+
  geom_boxplot()

respiratorias_long %>% 
  ggplot(aes(n))+
  geom_boxplot() 

respiratorias_long %>% 
  ggplot(aes(n))+
  geom_histogram()+
  facet_wrap( tipo)

respiratorias_long %>% 
  ggplot(aes(fecha, n, color= tipo))+
  geom_smooth(se=FALSE) 
