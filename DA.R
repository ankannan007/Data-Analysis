admission<-read.csv("C:/AN Kannan/Data Anlayst Course/Janak Suthar_R & Python/Admission_Prediction.csv")
View(admission)
head(admission,10)
tail(admission,5)

Airqualit<-datasets::airquality
View(airquality[,c(1,2)])
af<-airquality[,-6]
View(af)

View(summary(airquality))

summary(airquality[,1])

 summary(airquality$Month)

 #Data Visualization
 
plot(airquality$Wind,type="l")

plot(airquality$Wind,type="b")

plot(airquality$Wind,airquality$Temp,type="l") ## line

plot(airquality$Wind,airquality$Temp,type="h") ## histogram

plot(airquality$Wind,airquality$Temp,type="s") ## stair steps

plot(airquality$Wind,airquality$Temp,type="b") ## Line and point

plot(airquality$Wind,airquality$Temp,type="p") ## Point

plot(airquality)

plot(airquality$Ozone, xlab="ozone concentration", ylab="no.of instence",
    main = "ozone level in newyork", col='blue')

barplot(airquality$Ozone,xlab="ozone concentration", ylab="no.of instence",
        main = "ozone level in newyork", col='blue',horiz = T) ##T = True

barplot(airquality$Ozone,xlab="ozone concentration", ylab="no.of instence",
        main = "ozone level in newyork", col='blue',axes = T) ##axes = ,T = True

hist(airquality$Temp,xlab = "Temp",ylab = "Frequency", 
     main = "qirquality temp",col = 'red')

# Single box plot

boxplot(airquality$Wind)
boxplot.stats(airquality$Wind)$out

# Multi box plot

boxplot(airquality[,1:4],main="multi box plot")

par(mfrow=c(3,3))
plot(airquality$Wind)
boxplot(airquality$Wind)
hist(airquality$Wind)
plot(airquality$Temp,type="l")
boxplot(airquality$Temp)
boxplot(airquality[1:4])
boxplot(airquality$Wind)
boxplot(airquality$wind,airquality$Temp)

sd(airquality$Wind) ## Standard deviation

library(moments)
skewness(airquality$Wind)
kurtosis(airquality$Wind)
