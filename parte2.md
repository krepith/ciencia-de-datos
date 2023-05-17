# ciencia-de-datos mudulo 3 y 4
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

### visualizacion 2️⃣:
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

