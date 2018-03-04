#Listas
x <- list(1, "a", TRUE, 3+2i, 5L, 1:50)
x
#Todos los elementos de una lista mantienen la clase que originalmente son.

#Matrices 
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
m <- matrix(data = 1:6, nrow = 2, ncol = 3)
m <- matrix(1:6,2,3)
m

#La manera automática de llenarse fue columna por columna 
#PAra llenar fila por fila sería:
m <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)
m <- matrix(1:6,2,3,T)
m

#Una menara alternativa de crear una matriz es desde un vector 
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra manera, es uniendo diferentes vectores
x <- 1:3
y <- 10:12
#CBind, unir columnas
cbind(x,y)
rbind(x,y)

#Factores nos sirve para valores que no son numéricas
x <- factor(c("Si", "Si", "No", "No", "Si"))
x

x<- factor(c("Azul", "Verde","Verde", "Azul", "Rojo"))
x

table(x)
unclass(x)  #Destransformar el vector 

x<- factor(c("Azul", "Verde","Verde", "Azul", "Rojo"), levels = c("Rojo", "Amarillo","Verde", "Azul"))
x
unclass(x)

#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x) #Valor faltante detectado
is.nan(x) #Valor no numérico que no es faltante

y <- c(1,2,NaN,10,3)
is.na(y) #Valor faltante detectado
is.nan(y) #Valor no numérico que no es faltante

#Data Frames ... puede tener elementos de diferentes clases 
x <-data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)
x
x <- list(a = 1, b=2, c = 3)

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m





