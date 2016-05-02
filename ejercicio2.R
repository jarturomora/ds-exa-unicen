# Ejercicio 2
## R en Acción - Parte 2

### Navegación por Directorios

#### Ver el directorio de trabajo actual
getwd()

#### Cambiar el directorio de trabajo
# setwd("ruta_del_directorio")

### Medidas de tendencia central

#### La media aritmética
datos <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
mean(datos)

#### La mediana
median(datos)

#### La moda
datos2 <- round(runif(100, 1 , 10)) # Generanos 100 datos aleatorios
datos2 # Muestra los datos generados
datos2_ord <- sort(table(datos2)) # Creamos una tabla de contingencia
                                  # y la ordenamos.
datos2_ord # Mostramos la tabla
mode.value <- max(datos2_ord) # Obtenemos el mayor número de repeticiones
                              # de un valor entre 1 y 10
mode.names <- names(datos2_ord[datos2_ord == mode.value])
# mode.names <- names(datos2_ord[datos2_ord == max(datos2_ord)])

#### La varianza
var(datos)

#### Desviación estándar
sqrt(var(datos))

### Obtenición de Datos desde Archivos CSV

#### Abrir un archivo CSV
datos3 <- read.csv("data/matriculaMujeresIngenieria.csv", header = TRUE)

#### Ver los primeros registros del data frame
head(datos3) # Primero 6 registros
head(datos3, 10) # Primeros 10 registros

#### Accediendo a los datos del data frame
datos3[1]
datos3["ENTIDAD"]
datos3$ENTIDAD

#### Datos estadísticos generales
summary(datos3)
str(datos3)

#### Jugando con el Data Frame
mean(datos3$X2010.2011)

estados <- array(datos3$ENTIDAD)
barplot(datos3$X2010.2011, names.arg = estados, las = 2, col = rainbow(32))