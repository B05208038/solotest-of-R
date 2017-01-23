#for loop counting means for cars variables
result <- rep(NA, times=2) 
result[1] <- mean(cars$speed)
result[2] <- mean(cars$dist)
result


result <- rep(NA, times=11) 
result[1] <- mean(mtcars, [,1])
result[2] <- mean(mtcars, [,2])
result[3] <- mean(mtcars, [,3])
result
#--------------------------------------------
#for loop 
result <- rep(NA, times=11) 
for (i in 1:length(mtcars)){
  result[i<-mean(mtcars[, i])]
}

names(result)<- names(mtcars)
result

#--------------------------------------------
#apply usuage
apply(mtcars, MARGIN = 2, FUN = mean)

-------------------------------------
  ---------------------------------------
  ---------------------------
  #results
  > #for loop counting means for cars variables
  > result <- rep(NA, times=2)
> result
[1] NA NA
> 
  > 
  > 
  > 
  > 
  > 
  > #for loop counting means for cars variables
  > result <- rep(NA, times=2) 
> result[1] <- mean(cars$speed)
> result[2] <- meas(cars$dist)
Error: could not find function "meas"
> result
[1] 15.4   NA
> #for loop counting means for cars variables
  > result <- rep(NA, times=2) 
> result[1] <- mean(cars$speed)
> result[2] <- mean(cars$dist)
> result
[1] 15.40 42.98
> result <- rep(NA, times=11) 
> result[1] <- mean(cars, [,1])
Error: unexpected '[' in "result[1] <- mean(cars, ["
> result[2] <- mean(cars, [,2])
Error: unexpected '[' in "result[2] <- mean(cars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> result[1] <- mean(mtcars, [,1])
Error: unexpected '[' in "result[1] <- mean(mtcars, ["
> result[2] <- mean(mtcars, [,2])
Error: unexpected '[' in "result[2] <- mean(mtcars, ["
> result[3] <- mean(mtcars, [,3])
Error: unexpected '[' in "result[3] <- mean(mtcars, ["
> result
[1] NA NA NA NA NA NA NA NA NA NA NA
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result
mpg  cyl disp   hp drat   wt qsec   vs   am gear carb 
NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA 
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result
mpg  cyl disp   hp drat   wt qsec   vs   am gear carb 
NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA 
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result
mpg  cyl disp   hp drat   wt qsec   vs   am gear carb 
NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA 
> result <- rep(NA, times=11) 
> for (i in 1:length(mtcars)){
  +   result[i<-mean(mtcars[, i])]
  + }
> 
  > names(result)<- names(mtcars)
> result
mpg  cyl disp   hp drat   wt qsec   vs   am gear carb 
NA   NA   NA   NA   NA   NA   NA   NA   NA   NA   NA 
> apply(mtcars, MARGIN = 2, FUN = mean)
mpg        cyl       disp         hp       drat         wt       qsec         vs         am       gear       carb 
20.090625   6.187500 230.721875 146.687500   3.596563   3.217250  17.848750   0.437500   0.406250   3.687500   2.812500 
> lapply(mtcars, MARGIN = 2, FUN = mean)
$mpg
[1] 20.09062

$cyl
[1] 6.1875

$disp
[1] 230.7219

$hp
[1] 146.6875

$drat
[1] 3.596563

$wt
[1] 3.21725

$qsec
[1] 17.84875

$vs
[1] 0.4375

$am
[1] 0.40625

$gear
[1] 3.6875

$carb
[1] 2.8125

> my_list
Error: object 'my_list' not found
> my_list<-list(1:10, 1:100)
> lapply(mtcars, MARGIN = 2, FUN = mean)
$mpg
[1] 20.09062

$cyl
[1] 6.1875

$disp
[1] 230.7219

$hp
[1] 146.6875

$drat
[1] 3.596563

$wt
[1] 3.21725

$qsec
[1] 17.84875

$vs
[1] 0.4375

$am
[1] 0.40625

$gear
[1] 3.6875

$carb
[1] 2.8125

> lapply(my_list, FUN = mean)
[[1]]
[1] 5.5

[[2]]
[1] 50.5

> my_list
[[1]]
[1]  1  2  3  4  5  6  7  8  9 10

[[2]]
[1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29
[30]  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54  55  56  57  58
[59]  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87
[88]  88  89  90  91  92  93  94  95  96  97  98  99 100

> unlist(lapply(mtcars, FUN = meas))
Error in match.fun(FUN) : object 'meas' not found
> unlist(lapply(mtcars, FUN = mean))
mpg        cyl       disp         hp       drat         wt       qsec         vs         am       gear       carb 
20.090625   6.187500 230.721875 146.687500   3.596563   3.217250  17.848750   0.437500   0.406250   3.687500   2.812500 
> unlist(lapply(mtcars, FUN = sum))
mpg      cyl     disp       hp     drat       wt     qsec       vs       am     gear     carb 
642.900  198.000 7383.100 4694.000  115.090  102.952  571.160   14.000   13.000  118.000   90.000 
> unlist(lapply(mtcars, FUN = median))
mpg     cyl    disp      hp    drat      wt    qsec      vs      am    gear    carb 
19.200   6.000 196.300 123.000   3.695   3.325  17.710   0.000   0.000   4.000   2.000 
> 
#--------------------------------------------------------------------
#for versus apply
> # create data frame
> col1 <- runif (12^4, min = 0, max = 2)
> col2 <- rnorm (12^4, mean = 0, sd = 2)
> col3 <- rpois (12^4, lambda = 3)
> col4 <- rchisq (12^4, df = 2)
> df <- data.frame (col1, col2, col3, col4)
> 
> # use apply() to calculate the sum of every line
> system.time(apply(df, FUN = sum, MARGIN = 1))
user  system elapsed 
0.03    0.00    0.03 
> 
> # use for-loop to calculate the sum of every line
> result <- c()
> system.time(
  +     for (i in 1:nrow(df)) {
    +         result[i] <- sum(df[i, ])
    +     }
  + )
user  system elapsed 
2.98    0.03    3.01 
> 