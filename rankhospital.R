setwd("C:/Users/anav_/OneDrive/Escritorio/calhospitales")
direc <- "C:/Users/anav_/OneDrive/Escritorio/calhospitales"

rankhospital <-function(estado, resultado, ranking){
  ldt <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  f<-nrow(ldt)
  
  
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
  
  
  if(ranking=="mejor" || ranking== 1 ){
    md <- ldt[ldt$State == estado,]
    md2 <- md[,c(2,cl)]
    if (sum(md2[,2]=="Not Available") < 1) {
      elec <- md2[order(as.numeric(md2[,2])),]
      elec2 <- elec[which(elec[,2] == elec[1,2]),]
      es <- elec2[order(elec2[,1]),]
      es[1,1]
      
    }
    else {
      final <- md2[- grep("Not", md2[,2]),]
      elec <- final[order(as.numeric(final[,2])),]
      elec2 <- elec[which(elec[,2] == elec[1,2]),]
      es <- elec2[order(elec2[,1]),]
      es[1,1]
    }
  }
  else if(ranking=="peor"){
    a <- matrix(ldt[,cl],f,1)
    ldt[,cl] <- suppressWarnings(as.numeric(a))
    ldt[,2] <- as.character(ldt[,2])
    b <- ldt[grep(estado,ldt$State),]
    or <- b[order(b[,cl], b[,2], na.last=NA),]
    tail(or[,2],1)
  }
  else if(ranking>f){
    print("NA")
  }
  else {
    a <- matrix(ldt[,cl],f,1)
    ldt[,cl] <- suppressWarnings(as.numeric(a))
    ldt[,2] <- as.character(ldt[,2])
    b <- ldt[grep(estado,ldt$State),]
    or <- b[order(b[,cl], b[,2], na.last=NA),] 
    
  }
  
 
}
rankhospital("TX", "falla", "mejor" )
rankhospital("MD", "ataque", "peor")
rankhospital("MD", "ataque", "5000")
rankhospital("MD", "ataque", "7")

