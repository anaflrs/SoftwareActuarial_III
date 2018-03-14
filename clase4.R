#Dump source 

setwd("~/GitHub/SoftwareActuarial_III")
x<- "Software Actuarial III"
y <- data.frame(a = 1, b="a")
dump(c("x","y"), file = "data.R")
rm(x,y)
x
source("data.R")
#source: pedirle que corra las instrucciones necesarias para 
#generar los objetos que estoy pidiendo.

con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con)
x[7] <- "\t<title>FCFM</title"
writeLines(x, "FCFM.html")

x <- c("a", "b", "c", "c", "d", "e")
x
#Extraer elementos
x[1]
x[2]
#Extraer una secuencia de elementos 
x[1:4]
#Extraer elementos que cumplen alguna condición
x[x>"b"]
#Vector lógico
u <- x == "c"
u
x[u]

x <- list(foo=1:4, bar=0.6)
x
#Lista que contiene al vector de la secuencia.
x[1]
#Vector de la secuencia de números.
x[[1]]
x$foo
x["bar"]

x <- list(foo=1:4, bar=0.6, baz = "Hola")
#Extrae elementos no secuenciales, 1 sí, 2 no, 3 sí 
x[c(1,3)]
#Extrae secuencialmente desde los elementos extraidos
#Primero extrae el 1° elemento y de ahí extrae la 3° posición.
x[[c(1,3)]]

name <- "baz"
x[name]
x[[name]]
x$name
#Si quiero realizar extracciones con el $, es necesario escribir
#el nombre 

x <- matrix(1:6,2,3)
x
x[1,2]
x[2,1]
x[1,]
x[2,]
#Con drop = false, se mantiene la dimensión y 
#el resultado será una matriz.
x[1, , drop=FALSE]

