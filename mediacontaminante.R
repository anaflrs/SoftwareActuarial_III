setwd("C:/Users/anav_/OneDrive/Escritorio/specdata")
direc <- "C:/Users/anav_/OneDrive/Escritorio/specdata"

mediacontaminante <- function(direc, contam, id = 1:332){
  cuenta <- numeric()
  for (j in id){
    
    id1 <- formatC(j,width = 3 ,flag = "0")
    x <- read.csv(paste(id1, ".csv",sep=""),header = T)
    
    if (contam == "sulfate"){
      cuenta <- c(cuenta,x$sulfate)
    } else if (contam == "nitrate"){
      cuenta <- c(cuenta,x$nitrate)
    } else {
      paste("El contaminante",contam,"no existe.")
    } 
  }
  
  promedio <- mean(cuenta, na.rm = T)
  promedio
}
 mediacontaminante(,"sulfate",1:332)
#commit
 