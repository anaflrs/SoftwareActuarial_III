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


