rankc <- function(resultado, num){
  ldt <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ldh <- read.csv("hospital-data.csv")
  
  if (resultado == "ataque") {
    cl<-11 
  }
  else if (resultado == "falla"){
    cl<-17
  }
  else if (resultado == "neumonia"){
    cl<-23
  }
  else {
    stop("resultado inválido")
  }
  
  f <- nrow(ldt)
  st<-levels(ldh[,7])
  pos <- 1

  for (j in st){
    a <- subset(ldt,st==j)
    for(i in 1:f){
      a <- matrix(ldt[,cl],f,1)
      ldt[,cl] <- suppressWarnings(as.numeric(a))
      ldt[,2] <- as.character(ldt[,2])
      b <- ldt[grep(st,ldt$State),]
      or <- b[order(b[,cl], b[,2], na.last=NA),]
      }
    }
  result<-data.frame(nombre=b,valor=or)
  result<-result[with(result,order(valor,nombre)),]
  ss<-order(result$valor,result$nombre)
  print(result[ss[num],])
  if (num=="mejor"){
    print(result[ss[1],])
  }else{
    if (num=="peor"){
      print(result[ss[length(ss)],])
    }
  }
  }
  rankc("ataque",20)
  