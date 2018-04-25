setwd("C:/Users/anav_/OneDrive/Escritorio/specdata")
direc <- "C:/Users/anav_/OneDrive/Escritorio/specdata"

completos <- function(direc, id = 1:332){
  nobs <- vector("numeric", length(id))
  suma<-1
  for (j in id){
    id1<-formatC(j,width = 3 ,flag = "0")
    readen <- read.csv(paste(id1, ".csv",sep=""), header=T)
    x <- (readen$sulfate)
    y <- (readen$nitrate)
    midata <- data.frame(x, y)
    nobs[suma] <- nrow(midata[complete.cases(midata),])
    suma<-suma+1
  }
  data.frame(id=id,nobs=nobs)
}
completos("specdata",id=30:25)
