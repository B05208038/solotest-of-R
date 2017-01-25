#---------------------------é¡Œç›®??‡æ?ä»¶-----------------------------------
#å°‡ä?‰ä»½ç¨‹å?ä?Šå‚³?‡³ GitHub
#1.å°‡èª²??‚ä¸­??„è‡ªè¨‚æ?’å?å‡½?•¸?? å…¥ decreasing = ??„å?ƒæ•¸ï¼ˆé?è¨­?‚º FALSEï¼‰è?“ä½¿?”¨?€…å¯ä»¥æ?‡å?šé?žå?žæ?–é?žæ?›æ?’å??
#2.?‡ªè¨‚è?ˆç?—æ¨£?œ¬æ¨™æ?–å·®??„å‡½?•¸
#3.?‡ªè¨‚è?ˆç?? BMI ??„å‡½?•¸ä¸¦ä?”ä½¿?”¨ mapply ?‡½?•¸å°? bmi è®Šæ•¸?? å…¥ data frameï¼?

heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights
install.packages("tidyr")
library(tidyr)
#-------------------------------------------------------------------------
#1.å°‡èª²??‚ä¸­??„è‡ªè¨‚æ?’å?å‡½?•¸?? å…¥ decreasing = ??„å?ƒæ•¸ï¼ˆé?è¨­?‚º FALSEï¼‰è?“ä½¿?”¨?€…å¯ä»¥æ?‡å?šé?žå?žæ?–é?žæ?›æ?’å??
function_P<- function(input_vector) {
  sorted_vector <- sort(input_vector, decreasing = TRUE)
  return(sorted_vector)
}
function_P(heights)
function_P(weights)

#-------------------------------------------------------------------------
#å¹³å??
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
