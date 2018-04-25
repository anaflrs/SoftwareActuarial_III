lm
lm<-function(x){x*x}
lm
rm(lm)
lm
#lm:regresión lineal.
#search():orden de búsqueda.
library(swirl)


hpot<-function(n)
{
  potencia<-function(x)
  {
    x^n
  }
  potencia
}

y<-10
f<-function(x)
{
  y<-2
  y^2+g(x)
}
g<-function(x)
{
  x*y
}
f(3)

w<-as.Date("1970-01-01")
w
unclass(w)
unclass(as.Date("1970-01-02"))

inicio<-unclass(as.Date("1998-06-19"))
final<-unclass(as.Date("2018-04-02"))
final-inicio
weekdays(as.Date("1998-06-19"))
a<- as.POSIXct("1998-06-19")
b<-as.POSIXlt("1998-06-19")