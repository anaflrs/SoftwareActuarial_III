#funciones de ciclo 
  #-lapply: aplica una funci�n a todos los elementos de una lista.
      #Entrega el resultado como una lista.
  #-sapply:igual que lapply pero intenta simplificar el resultado.
      #simplificar la versi�n lapply. En lugar de expresarlo como una lista
      #trata de expresarlo como un dataframe.
      #si el resultado es una lista con elementos de tama�o 1 => vector
  #-apply:aplica una funci�n dentro de los m�rgenes de un arreglo.
      #evalua la funci�n en lor margenes de un arreglo.
      #se usa para aplicar una funci�n a las filas o columnas de una matriz.
  #-tapply:aplica una funci�n sobre los subconjuntos de un vector.
      #tableapply, los resultados sean expresados como una tabla.
      #sintetiza la informaci�n resultante.
  #-mapply:versi�n multivariante de lapply.
      #toma en cuenta distintas variables (se orienta m�s a las matrices).



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
