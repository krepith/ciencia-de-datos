library(readxl)
library(writexl)
library(tidyverse)
install.packages("janitor")
library(janitor)

indicadores <- read_xlsx("data/Popular_Indicators.xlsx")

str(indicators)
colnames(indicators)
unique(indicators$`serie Name`)
tail(indicators)

indicators <- read_excel("data/Popular_Indicators.xlsx", 
                         sheet = "Data",
                         range = "A1:Y11068") #toma la primer hoja y el rectangulo del rango 


listado <- read_excel("data/listado_pacientes.xlsx", skip = 7) 
  #salta las primeras 7

listado <- read_excel("data/listado_pacientes.xlsx",
                      range= cell_rows(c(9:2089))) %>% 
  select(-c(2:3)) %>% 
  clean_names( )

#leer multiples archivos
files <- list.files(path = "data", pattern = "archivo", full.names = TRUE) %>% 
  map_df(:: read_excel(, col_names = TRUE))
 
#unir las diferentes hojas de un mismo excel
sheet_names <- excel_sheets("data/archivo1.xlsx")
sheet_names
list_all <-  lapply(sheet_names, function(x){
  as.data.frame(read_excel("data/archivo1.xlsx", sheet = x, col_names = TRUE ))
})
list_all

names(list_all) <- sheet_names
list_all

library(data.table)

files_path <- list.files(path = "data", pattern = "archivo", full.names = TRUE)

names_files <- list.files(path = "data", pattern = "archivo") |>
  str_extract_all(pattern = ".*[^.xlsx]", simplify = TRUE)


df_list <- lapply(files_path, function(x) {
  sheets <- excel_sheets(x)
  dfs <- lapply(sheets, function(y) {
    read_excel(x, sheet = y, col_names = TRUE)
  })
  names(dfs) <- sheets
  dfs
})

names(df_list) <- names_files
df_list

# Otras forma de entrar a ver los datos en una lista

df_list$archivo1$enero
walk(df_list, .f = print)


# Pasar de una lista a dataframe
data <- rbindlist(lapply(df_list, rbindlist, id = "mes"))



# Guardar Excel

write_xlsx(data, "data/data_completa.xlsx")
