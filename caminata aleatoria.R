#binomial en probabilidad: número de aciertos en una cierta 
#cantidad de intentos
set.seed(1)
kk <- 0
pp <- 0
for (i in 1:100) {
  z <- 6.5
  x <- 0
while (z>=3 && z<=10 ) {
  #1= cuantas variables quiero generar
  #1 = número de intentos
  #0.5= que tan probable es el éxito
  moneda <- rbinom(1,1,0.5)
  if(moneda==1) { #Caminata aleatoria
    z <- z + 0.5
  }else{
    z <- z - 0.5
  }
  x <- x +1
}
  if(z>=10)
  {
    kk <- kk + 1
  }else if(z<3){
    pp <- pp + 1
  }
}

 print("Abajo"); print(pp)
  print("Arriba");   print(kk)
paste("En",i,"intentos, se escapa", pp, "veces por abajo y", kk, "veces
    por arriba" )
paste("La probabilidad de salir por abajo es", pp/i)
paste("La probabilidad de salir por arriba es", kk/i)
