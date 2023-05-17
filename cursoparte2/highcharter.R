install.packages("highcharter")
install.packages("forcats")
install.packages("scales")
library(highcharter)
library(readr)
library(dplyr)
library(forcats)
library(scales)

byCountry <- read.csv("data/by_country.csv")

clean <- byCountry %>% 
  select(Country, Value) %>% 
  arrange(-Value) %>% 
  mutate(Country = fct_inorder(Country)) #asigna factores basado en la metrica


#hchart( dataframe, tipo_grafico, hcaes(mapeo))

hchart(clean, "column", hcaes(x=Country, y=Value ))
#columnas con etiquetas al pasar el cursor

barras <- hchart(clean, "column", hcaes(x=Country, y=Value ), names= "muertes por 100 mil habitates" ) %>% 
  hc_title(text =" cancer de mamá")

hchart(read.csv("data/breast_pais.csv") %>% 
         filter(Year >= 2010), "line", hcaes(Year, Value, group=Country ))
#grafico de lineas dinamico re lindo


hchart(read.csv("data/breast_pais.csv") %>% 
         filter(Year >= 2010), "line", hcaes(Year, Value, group=Country )) %>% 
  hc_tooltip(table=TRUE, valueDecimals =2 ) %>% 
  hc_legend( layout="vertical") %>% 
  hc_title(text="estadisticas cancer de mama por pais")

library(datos)
?datos

hchart(paises %>% 
          filter(anio==2007),"scatter", hcaes(pib_per_capita, esperanza_de_vida, group = continente ) )

texto_explicativo <- "Extracto de datos de <b>Gapminder</b> sobre <b>expectativa de vida</b>, <b>PIB per cápita</b> y <b>población</b>, según país.<br/>
                      Se utilizará un <i>escala logarítmica</i> en el eje x por la asimetría de la variable."

#### podemos utilizar <b> </b> para negrita
#### <b/> para salto de línea
#### <i> para itálica (o cursiva)

hchart(
  paises, # nuestra base de datos
  "scatter", #tipo de gráfico
  hcaes(pib_per_capita, esperanza_de_vida, group = continente, z = poblacion),
  maxSize = 30) %>%  # para fijar y setar el tamaño máximo
  hc_tooltip(pointFormat = "{point.pais}") %>%  # para que nos muestre solo el país
  hc_caption(text = texto_explicativo) %>% #añadimos nuestro texto explicativo
  hc_title(text = "Relación entre PIB y Esperanza de vida") %>% #agregamos título
  hc_xAxis(type = "logarithmic") # señalamos el tipo de escala de nuestro eje x


self_harm <- read_csv("data/self_harm.csv") #base de datos

self_auxiliar <- self_harm %>% 
  select(Year, Value)


self_aux <- self_harm %>% 
  filter(Sex=="Both sexes" & Year==2000)

face_wrap_chart_04 <- hchart(
  self_aux, 
  "line",
  hcaes(Year, Value, group = Country, colorize= Sex),
  yAxis = c(0, 1, 2) # parte clave para asignar cada grupo a cada eje Y
) %>% 
  # esta es la parte donde se crean *manualmente* 3 ejes.
  hc_yAxis_multiples(
    create_axis(
      naxis = 3, #número de ejes
      lineWidth = 2, #tamaño
      title = purrr::map(0:2, ~list(text = "Country")) #nombre en cada faceta
    )
  ) %>% 
  hc_title(text = "") %>% #titulo del gráfico
  hc_tooltip(table = TRUE) #arregamos la tooltip

face_wrap_chart_04



self_aux <- mutate(self_aux, porcentaje = percent(Value/sum(Value)))

hchart( self_aux %>% 
          filter(Year==2000), "pie", hcaes(x= Country, y=Value),
        name= "muertes", innerSize= "60%", #innerSize vacio interior
        dataLabels = list(format= "{point.Country}<br> ({point.porcentaje})"))
