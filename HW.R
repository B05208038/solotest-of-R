#---------------------------題目??��?�件-----------------------------------
#將�?�份程�?��?�傳?�� GitHub
#1.將課??�中??�自訂�?��?�函?��??�入 decreasing = ??��?�數（�?�設?�� FALSE）�?�使?��?��可以�?��?��?��?��?��?��?��?��??
#2.?��訂�?��?�樣?��標�?�差??�函?��
#3.?��訂�?��?? BMI ??�函?��並�?�使?�� mapply ?��?���? bmi 變數??�入 data frame�?

heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights
install.packages("tidyr")
library(tidyr)
#-------------------------------------------------------------------------
#1.將課??�中??�自訂�?��?�函?��??�入 decreasing = ??��?�數（�?�設?�� FALSE）�?�使?��?��可以�?��?��?��?��?��?��?��?��??
function_P<- function(input_vector) {
  sorted_vector <- sort(input_vector, decreasing = TRUE)
  return(sorted_vector)
}
function_P(heights)
function_P(weights)

#-------------------------------------------------------------------------
#平�??
my.mean <- function(input_vector) {
  my_sum <- 0
  count <- 0
  for (i in input_vector) {
    my_sum <- my_sum + i
  }
  for (i in input_vector) {
    count <- count + 1
  }
  return(my_sum / count)
}

my.mean(heights)
my.mean(weights)



#2.Standard deviation
SD <- function(input_vector_for_SD){
  SD <- 0
  for (i in input_vector_for_SD) {
    SD_sum <- sqrt((1/(length(input_vector_for_SD)))*(i - my.mean(input_vector_for_SD))^2)}
  return(SD_sum)
}

SD(heights)
SD(weights)
heights
length(heights)
weights
length(weights)


#3. BMI
<<<<<<< HEAD
heights_and_weights<- as.matrix(heights_and_weights)
my.BMI <- function(input_vector1,input_vector2) {
  my_BMI <- 0
  for (i in input_vector1) {
    my_BMI <- i[,2]/((i[,1]/100)^2)
    print(i$heights, i$weights)
    }
  return(my_BMI)
}
my.BMI(heights_and_weights[3,])
heights_and_weights
=======
#heights_and_weights <- gather(heights_and_weights)
heights_and_weights<-as.matrix(heights_and_weights)
my.BMI <- function(input_vector) {
  my_BMI <- 0
  for (i in input_vector) {
    my_BMI <- i[,2]/((i[,1]/100)^2)
    #print(i)
  }
  return(my_BMI)
}
my.BMI(heights_and_weights[2, ])
View(my.BMI(heights_and_weights))
heights_and_weights[2]
BMI <- c(my.BMI(heights_and_weights))
>>>>>>> 8219a4396d6c8dd038f97ef348f2bb5832d73e54
