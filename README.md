# ciencia-de-datos
aca esta mi proceso aprendiendo ciencia de datos con el curso de ciencia de datos de openlab
## Modulo 1 
### consejos :exclamation:
- crear una subcarpeta para tus datos originales
- crear una subcarpeta para los datos limpios
- crear una subcarpeta para tus scripts
- crear una carpeta para cada documento
- crear una carpeta si necesitas guardar figuras 

### consejos: atajaos de teclado
- ctrl + 1 salta al script
- crtl + 2  saltar a la consola
- crtl + shift + n nuevo script
- crtl + shift + c comentar linea
- crtl + shift + r insertar salto de seccion
- crtl + alt + i insertar fragmento de Rmd vacio 
- crtl + -  inserta <- (asignacion)
- crtl + shift + m inserta operador de tuberia %>%

### modulo1s1 :one:
-aca se ubica lo que aprendi en los primeros 2 modulos, aprendizaje basico de algunos comandos de identificacion de datos

### modulo1s3 :two:
- Aprendo sobre las estructuras de datos, vectores, matrices, dataframes y listas.
-  - vector: conjunto lineal de un mismo tipo de dato
-  - matrix: tabla de solo numeros
-  - dataframe: tabla donde cada columna tiene un tipo de dato 
-  - lista: conjunto lineal de datos, donde cada dato puede ser un vector, una matrix, un data frame, o un dato normal 
- Coercion de datos
- Formas de manejar estas estructuras de datos
- Formatos tidy y no tidy (contingencia)

### modulo1s4 :three:
- importacion de datos:
- - read_csv(): para leer archivos separados con , 
- - read_csv2(): para leer archivos con punto y coma ; 
- - read_tsv(): para leer archivos con tabulador  como separador
- - read_delim(, sep="|"): archivos separados por otros simbolos como |
- read_csv("nombre.csv") <- forma recomendada 
- read_csv ("archivo.csv", skip=0, col_names=FALSE) no tiene encabezado y no tiene nombres de columna
- read_csv ("archivo.csv", skip=8, header=TRUE, sep=',') tiene 8 columnas que no sirven, la 9 es el encabezado y especifico el separador
- leer excel
- - library(readxl)
- - import dataset de Rstudio
- sav (encuestas)
- library(datapasta) para tablas en html

## Modulo 2

### modulo2s1 :four:
- transformar datos
- - mutate crea una nueva columna con una operacion solicitada, edita la tabla
- - select selecciona lo que le pedimos
- - filter busca filas especificas}
- - summarise(): permite modificar con funciones matematicas

### modulo2s2 :five:
-libreria dplyr:
- - grup_by()agrupa por caracteristicas similares
- - acciones concretas que ayudan a agrupar o filtrar:
- - - arrange ordena de forma ascendente
- - - -arrange ordena de forma descendente 
- - - filter(Region %in$ c("valparaiso", "maule") %in% c para usar un vector en un filter
- - - slice_max( variable, n=5) muestra los 5 valores mas altos de la variable
- - - filter(between(total, 1000, 2000)) filtra entre 2 valores
- - casos <- transform(casos, Fecha=as.Date(casos$Fecha,format="%Y-%m-%d")) #transforme el char a fecha

### modulo2s3 :six:
- manipulacion de datos
- - gather combina dos columnas en una nueva 
- - left_join  combina 2 tablas
- - debe haber solo un tipo de variable por columna
- - spread divide en 2 columnas basadas en un argumento 
- - separate separa una variable en 2 nuevas variables (columnas)
- - unite une 2 columnas 

### modulo2s4 :seven:
analisis exploratorio de datos:
- ggplot(data = diamantes)+ #elijo la data
- - geom_bar(mapping = aes(x=corte)) +agrego un parametro de visualizacion con + grafico de barras
- - geom_freqpoly graficar por lineas poligonales
- - geom_point grafica una distribucion de puntos
- - si existen datos inusuales se pueden eliminar o remplazar
- - - eliminar no es recomendado, es mejor remplazar
- covariacion: como perillas entre mas obreros menos se demora en construir (proporcion indirecta)
- - aes() de aestethics define que variables van en el grafico y en que ejes
- coord_flip() cambia los ejes
- geom_bin2d() crea cuadros con una escala cromatica de frencuencia
- geom_hex() crea hexagonos

### taller metricas
- plot_intro() analisis general
- IQR() intervalo intercuartilico, util en datos muy dispersos
- upper_ci intervalo de confianza
- attach() asigna el data frame para acceder facilmente a sus columnas
- - detach() desasigna el dataframe para dejar libre ese espacio util
- sturgles es una regla que sirve para calcular el número clases o intervalos idóneo en los que se debe dividir un conjunto de datos
- cut() agrupa un vector en de datos basado en las clases que pertenece
- cumsum() genera un vector de las sumas acumulativas 

