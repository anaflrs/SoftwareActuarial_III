#Tarea dput y dget
carros <- data.frame(mtcars)
str(mtcars)
dput(carros) 
dput(carros,file ="~/GitHub/SoftwareActuarial_III/carros.R")
carrosAna <- dget(file = "~/GitHub/SoftwareActuarial_III/carros.R")







