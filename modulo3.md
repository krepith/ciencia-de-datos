# ciencia-de-datos mudulo 3
aca esta mi proceso aprendiendo ciencia de datos con el curso de ciencia de datos de openlab
## Modulo 3
### visualizacion 1️⃣:
- ggplot2 
- - geom_point() dispersion de puntos
- - geom_smooth() curvas de tendencia
- - geom_boxplot() grafico de cajas 
- sintaxis basica:
- - ggplot2( data = "ruta de data") +  se define la ruta
- - geom_funcion (mapping = aes (x=, y=)) +  que forma de visualizar  y AES define los datos de las coordenadas 
- - elementos adicionales (size, color, alpha)
- - - color, shape y alpha pueden ser forma de diferenciar los datos 
- - - forma usa 6 simbolos y alpha una escala de degrade de grises (no son muy utiles)
- - - size visualiza por tamaño 
- - face_wrap presenta diferentes graficas se parados por una clase para ver el comportamiento individual
- - face_grid presenta el comportamiento individual separado por X variable
- - - facet_grid(.~variable) 1 variablee
- - - facet_grid(v1~v2) la interseccion de 2 variables 
- - - ~ la virgulilla es una funcion de correlacion

### HIGHCHARTER 2️⃣:
- paquetes para visualizar de manera clara y dinamica
- - radarchart
- - corplot
- - leaflet
- - gganimate - anima y hace gif, muy dinamico 
- - plotly - graficos dinamicos para paginas web
- - highcharter - dinamico e interactivo
- USO DE HIGHCHARTER 
- - hchart( dataframe, tipo_grafico, hcaes(mapeo))
- - - tipos_graficos
- - - - line - grafico de lineas
- - - - column - grafico de barras
- - - - scatter - grafico de puntos de dispersion
- - - - pie - grafico de pastel

### GGPLOT2 avanzado 3️⃣:
- aes( ejex, ejey)+
- geom_line - diagrama de lineas de tendencia aes(
- - color= grupo etario - separa por colores, size=1 - tamaño de linea, alpha =3 - transparencia)
- scale_color_manual ( name= "nombre de los grupos",
- - values = c(a,b,c) - donde a,b,c son colores 
- - laberls = c("a","b","c") arreglo con los nombres que queremos de cada linea 
- theme_bw aplica un tema hay muchos bw es blanco y negro
- date breaks ="1 month" cada cuando muestra un seña en el eje x
- - date labels = "que parte del formato dia quiere mostrar"
- labs ayuda a definir informacion de la grafica
- - x="" nombre de eje x
- - y="" nombre del eje y
- - axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1), inclina el texto del eje x muy bonito
- - title= "" nombre de la grafica
- - subtitle ="" una descripcion
- - caption = "" fuente en la parte de abajo
- ggplotly(objeto grafica) grafica desde GGploty mas bonita o diferente YYYY es interactivo permite hacer zoom y pone un datos interactivos en las lineas
