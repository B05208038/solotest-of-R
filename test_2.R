plot(cars$speed, cars$dist, main = "Car speed vs. braking distance", xlab = "Speed", ylab = "Dist")
plot (cars, main="汽車速度與位置關係")
> plot (cars$dist, cars$speed , main="汽車速度與位置關係")
> plot (cars, main="汽車速度與位置關係")
> plot (cars$dist, cars$speed , main="汽車速度與位置關係")
> plot (cars$dist, cars$speed , main="汽車速度與位置關係", xlab="distance", ylab="speed")
> > summary(iris)
Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500                  
> head(iris)
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
> plot(iris)
> str(iris)
'data.frame':  150 obs. of  5 variables:
  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
> class(iris)
[1] "data.frame"
> plot (cars)
> plot (cars, main"汽車速度與位置關係")
Error: unexpected string constant in "plot (cars, main"汽車速度與位置關係""
> plot (cars, main"汽車速度與位置關係")
Error: unexpected string constant in "plot (cars, main"汽車速度與位置關係""
> plot (cars, main="汽車速度與位置關係")
> plot (cars$dist, cars$speed , main="汽車速度與位置關係")
> plot (cars, main="汽車速度與位置關係")
> plot (cars$dist, cars$speed , main="汽車速度與位置關係")
> plot (cars$dist, cars$speed , main="汽車速度與位置關係", xlab="distance", ylab="speed")
> cars$speed
[1]  4  4  7  7  8  9 10 10 10 11 11 12 12 12 12 13 13 13 13 14 14 14 14 15 15 15 16 16 17 17 17 18 18 18 18 19 19 19 20 20
[41] 20 20 20 22 23 24 24 24 24 25
> cars$dist
[1]   2  10   4  22  16  10  18  26  34  17  28  14  20  24  28  26  34  34  46  26  36  60  80  20  26  54  32  40  32  40
[31]  50  42  56  76  84  36  46  68  32  48  52  56  64  66  54  70  92  93 120  85
> 
  > data()
> plot (CO2)
> dim(CO2)
[1] 84  5
> summary(CO2)
Plant             Type         Treatment       conc          uptake     
Qn1    : 7   Quebec     :42   nonchilled:42   Min.   :  95   Min.   : 7.70  
Qn2    : 7   Mississippi:42   chilled   :42   1st Qu.: 175   1st Qu.:17.90  
Qn3    : 7                                    Median : 350   Median :28.30  
Qc1    : 7                                    Mean   : 435   Mean   :27.21  
Qc3    : 7                                    3rd Qu.: 675   3rd Qu.:37.12  
Qc2    : 7                                    Max.   :1000   Max.   :45.50  
(Other):42                                                                  
> plot(CO2$type, CO2$treatment, main="二氧化碳報表", xlab="資料類型", ylab = "治療方式")
Error in plot.window(...) : 'xlim' 值不能是無限的
In addition: Warning messages:
  1: In min(x) : no non-missing arguments to min; returning Inf
2: In max(x) : no non-missing arguments to max; returning -Inf
3: In min(x) : no non-missing arguments to min; returning Inf
4: In max(x) : no non-missing arguments to max; returning -Inf
> plot(CO2$conc, CO2$uptake, main="二氧化碳報表", xlab="資料類型", ylab = "治療方式")
#在?plot()可看到what type of plot should be drawn. Possible types are

"p" for points,

"l" for lines,

"b" for both,

"c" for the lines part alone of "b",

"o" for both ‘overplotted’,

"h" for ‘histogram’ like (or ‘high-density’) vertical lines,

"s" for stair steps,

"S" for other steps, see ‘Details’ below,

"n" for no plotting.

plot(cars$speed, cars$dist, type = "b", main = "Car speed vs. braking distance", xlab = "Speed", ylab = "Dist", col="red")
> plot(cars$speed, cars$dist, type = "b", main = "Car speed vs. braking distance", xlab = "Speed", ylab = "Dist", col="red", lwd=3)
> plot(cars$speed, cars$dist, type = "b", main = "Car speed vs. braking distance", xlab = "Speed", ylab = "Dist", col="red", lwd=3, lty=2)
> plot(cars$speed, cars$dist, type = "b", main = "Car speed vs. braking distance", xlab = "Speed", ylab = "Dist", col="red", lwd=3, lty=2, pch=4)

> par(mfrow = c(1, 2)) # 建立一個 1x2 的網格畫布
> hist(cars$speed, main = "Distribution of speed variable", xlab = "Speed")
> hist(cars$dist, main = "Distribution of dist variable", xlab = "Dist")

> par(mfrow = c(2, 1)) # 建立一個 2x1 的網格畫布
> hist(cars$speed, main = "Distribution of speed variable", xlab = "Speed")
> hist(cars$dist, main = "Distribution of dist variable", xlab = "Dist")

#均勻分布利用

> n = 100
> par(mfrow = c(2, 1)) # 建立一個 1x2 的網格畫布
> hist(runif(n), main = paste("Distribution of", n, "uniformly distributed variables")) # 試著增加隨機數的個數 n
> hist(rnorm(n), main = paste("Distribution of", n, "normally distributed variables")) # 試著增加隨機數的個數 n
> 
  
  
  > paste("hello","World")
[1] "hello World"
> paste("distribution of",n,"normally distributed variables")
[1] "distribution of 100 normally distributed variables"
> hist paste(runif(n), main=paste("Distribution of", n ,"normally distributed variables"))
Error: unexpected symbol in "hist paste"
> hist(runif(n), main=paste("Distribution of", n ,"normally distributed variables"))
> 
  
  
  > par(mfrow = c(1, 2))
> boxplot(cars$speed, main = "Distribution of speed variable")
> boxplot(cars$dist, main = "Distribution of dist variable")
> str(iris)
'data.frame':  150 obs. of  5 variables:
  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...





par(mfrow = c(2, 2))
> boxplot(iris$Sepal.Length ~ iris$Species, main = "Sepal length by species")
> boxplot(iris$Sepal.Width ~ iris$Species, main = "Sepal width by species")
> boxplot(iris$Petal.Length ~ iris$Species, main = "Petal length by species")
> boxplot(iris$Petal.Width ~ iris$Species, main = "Petal width by species")
> 
  table(factor(mtcars$gear))

3  4  5 
15 12  5 
> barplot(summary(factor(mtcars$gear)))
> barplot(1:10)
> table(factor(mtcars$gear))

3  4  5 
15 12  5 
> barplot(table(factor(mtcars$gear)))


>vehicle_names <- row.names(mtcars)
> barplot(mtcars$hp, names = vehicle_names, main = "Horse power for each vehicles", xlab = "Horse power", ylab = "Vehicles", horiz = TRUE)
調成直向

> barplot(mtcars$hp, names = vehicle_names, main = "Horse power for each vehicles", xlab = "Horse power", ylab = "Vehicles", horiz = TRUE,las=1,cex.names=0.4,cex.axis=0.8)
> vehicle_names <- row.names(mtcars)
> barplot(mtcars$hp, names = vehicle_names, main = "Horse power for each vehicles", horiz = TRUE,las=1,cex.names=0.4,cex.axis=0.8)
  
  

    
