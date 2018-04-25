setwd("C:/Users/anav_/OneDrive/Escritorio/specdata")
direc <- "C:/Users/anav_/OneDrive/Escritorio/specdata"

corr <- function(direc, horizonte=0){
  correlacion <- vector("numeric",0)
  conta <- 1
  for (j in 1:332){
    
    id2<-formatC(j,width = 3 ,flag = "0")
    x <- read.csv(paste(id2, ".csv",sep=""),header=TRUE)
    md <- data.frame(x$sulfate,x$nitrate)
    completo <- md[complete.cases(md),]
    n <- nrow(completo)
    if (n>horizonte){
      length(correlacion) <- length(correlacion)+1
      correlacion[conta] <- cor(completo[,1],completo[,2])
      conta <- conta + 1
    }
  }
  correlacion
}
z <- corr("specdata", 150)
head(z)
