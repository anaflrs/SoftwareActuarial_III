setwd("/GitHub/SoftwareActuarial_III")

#Extracción de valores faltantes 
airquality[1:6,]
completos <- complete.cases(airquality)
airquality[completos,]
data <- airquality[completos,]
data[1:6,]
#Al hacer una extracción desde un vector lógico, obtengo solo los 
#valores que son true.

#Algunas operaciones 
#El ; las separa como si fuera ,
x<- 1:4; y <- 6:9
x+y
x>2
y==8
x*y > 10
x/y

x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y
x;y; x%*%y
y%*%x

x = 3
if(x>5){
    print("Mayor")
}else{ 
    print("Menor")
}

x=7
if(x<5)
{
  print("Menor a 5")
} else if(x<=10){
  print("entre5 y 10")
}else{
  print("Mayor a 10")
}


x = 2
if(x>3){
  y <- 10
}else{
  y <- 0
}
print(y)

x=5
y <- if(x>3) {
  10
  }else{
  0
  }
 print(y)


 #Ciclo For
 for (i in 1:10) {
   print(i)
 }

 x<- c("a", "b", "c", "d")
 for (i
      in 1:4) {
   print(x[i])
 }

 for (i in seq_along(x)) {
   print(x[i])
 }

  for (letra in x) { 
    print(letra)    
  }
 for (i in 1:4) { print(x[i])
 }

 
 x <- matrix(1:6,2,3)
  for (i in seq_len(nrow(x))) {
    for (j in seq_len(ncol(x))) {
        print(x[i,j])
    }
  }
 
 count <- 0 
 while (count<10) {
   print(count)
   count <- count + 1
 }
 
 #binomial en probabilidad: número de aciertos en una cierta 
 #cantidad de intentos
 
 set.seed(1)
 z <- 5 
 x <- 0
 while (z>=3 && z<=10 ) {
   k[x+1] <- z 
   #1= cuantas variables quiero generar
   #1 = número de intentos
   #0.5= que tan probable es el éxito
   moneda <- rbinom(1,1,0.5)
    if(moneda==1) { #Caminata aleatoria
      z <- z + 1
    }else{
      z <- z - 1
    }
   x <- x +1
 }
  print(x); print("pasos")
  k[x+1]<- z
  k
  