s2 <- function(x,y)
{
  x+y
}
s2(1,3)

mayor10 <- function(x)
{
  num <- x>10
  x[num]
}
mayor10(1:20)

#Si no le pongo un valor a n, su default es 10 
mayor <- function(x,n=10)
{
  num <- x>n
  x[num]
}
mayor(1:20)
mayor(1:20,15) #mi valor de n ahora es 15 
mayor(n=15, x = 1:20)
#si mis argumentos estan en orden, no es necesario especificar la 
#variable, solo cuando esten en desorden como en el último caso.
mayor <- function(x,n=10)
{
  x[x>n]
}
mayor(1:20)



promediocol <- function(x,quitarNa=TRUE)
{
  nc <- ncol(x)
  media <- vector("numeric",nc)
  for (i in 1:nc)
  {
    media[i] <- mean(x[,i],na.rm = quitarNa)
  }
  media
}
x <- matrix(1:100,20,5)
promediocol(x)



f <- function(a,b)
{
  a^2
}
f(2)

g<- function(a,b)
{
  print(a)
  print(b)
}
g(3,4)


#Plot
myplot <- function(x,y,tipo="l",...)
{
  plot(x,y,type = tipo,...)
  
}
myplot(1:10,10:1)
plot(1:10,10:1)

myplot(1:10,10:1, main="Mi gráfica")


#Paste
paste("kk","pp","jkl", sep = "/")
mipaste <- function(sep="",...)
{
  paste(...,sep = sep)
}

install.packages("swirl")
library(swirl)
swirl()

