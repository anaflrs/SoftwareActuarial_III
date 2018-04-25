str(str)
str(lm)
str(ls)
x<- rnorm(100)
str(x)#como es computacionalmente hablando 
summary(x) #estadisticamente
f <- gl(40,10)
str(f)
summary(f)

s<- split(airquality,airquality$Month)
str(s)
summary(airquality)

m <- matrix(rnorm(100),10,10)
summary(m)

s<- split(airquality,airquality$Month)
str(s)

x <- rnorm(10)
x
y <- rnorm(10,50,5)
y
summary(x)
summary(y)
