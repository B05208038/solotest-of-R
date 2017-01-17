par(mfrow = c(3, 2))
#散步圖
plot (mtcars$mpg, mtcars$hp, main="引擎馬力與油耗關係圖",xlab="油耗量(mpg)", ylab="馬力(hp)", col="blue", lwd=2, lty=2,pch=4)
#線圖
plot(AirPassengers, main="Air Passengers from 1949-1960", xlab="Time(Year)", ylab="Air passengers (person)", col="blue", lwd=2, lty=2,pch=4)
#直方圖
hist(AirPassengers)
#盒鬚圖
boxplot(AirPassengers, main= "distribution of Air Passengers", ylab="the number of passengers")
#長條圖
barplot(table(factor(AirPassengers)), main="Air passengers per month", xlab="人數", ylab="月數")
