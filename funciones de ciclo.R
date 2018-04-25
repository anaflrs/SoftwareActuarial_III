#funciones de ciclo 
  #-lapply: aplica una función a todos los elementos de una lista.
      #Entrega el resultado como una lista.
  #-sapply:igual que lapply pero intenta simplificar el resultado.
      #simplificar la versión lapply. En lugar de expresarlo como una lista
      #trata de expresarlo como un dataframe.
      #si el resultado es una lista con elementos de tamaño 1 => vector
  #-apply:aplica una función dentro de los márgenes de un arreglo.
      #evalua la función en lor margenes de un arreglo.
      #se usa para aplicar una función a las filas o columnas de una matriz.
  #-tapply:aplica una función sobre los subconjuntos de un vector.
      #tableapply, los resultados sean expresados como una tabla.
      #sintetiza la información resultante.
  #-mapply:versión multivariante de lapply.
      #toma en cuenta distintas variables (se orienta más a las matrices).



x <- list(a=1:5, b=rnorm(10000))
lapply(x,mean)

x<-list(a=1:5,b=rnorm(10),c=rnorm(10,1), d=rnorm(10,2))
lapply(x, mean)

x<- 1:4
lapply(x, runif)

x <- 1:4
lapply(x, runif, max=15, min= 5)

#sapply
x<-list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x, mean)
sapply(x, mean)

#apply
x<-matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)
#rowSums=apply(x,1,sum) #rowmeans=apply(x,1,mean)
#colsums=apply(x,2,sum) #colmeans=apply(x,2,mean)

x<-matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))

a<-array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims = 2)
rowMeans(a,dims = 1)

#mapply
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep, 1:4, 4:1)
