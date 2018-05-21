setwd("C:/Users/anav_/OneDrive/Escritorio/calhospitales")
direc <- "C:/Users/anav_/OneDrive/Escritorio/calhospitales"

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome)
colnames(outcome)
names(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])

mejor <- function(estado,resultado){
  ldt <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
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
mejor("TX", "falla")
mejor("TX", "fail")
mejor("MD", "ataque")
mejor("TX", "ataque")