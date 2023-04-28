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

### modulo2s1 :four:
- transformar datos
- - mutate crea una nueva columna con una operacion solicitada
- - select selecciona lo que le pedimos

