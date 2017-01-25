#---------------------------題目與條件-----------------------------------
#將三份程式上傳至 GitHub
#1.將課堂中的自訂排序函數加入 decreasing = 的參數（預設為 FALSE）讓使用者可以指定遞增或遞減排序
#2.自訂計算樣本標準差的函數
#3.自訂計算 BMI 的函數並且使用 mapply 函數將 bmi 變數加入 data frame：

heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights
#-------------------------------------------------------------------------
#1.將課堂中的自訂排序函數加入 decreasing = 的參數（預設為 FALSE）讓使用者可以指定遞增或遞減排序
function_P<- function(input_vector) {
  sorted_vector <- sort(input_vector, decreasing = TRUE)
  return(sorted_vector)
}
function_P(heights)
function_P(weights)

#-------------------------------------------------------------------------
#平均
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
my.BMI <- function(input_vector) {
  my_BMI <- 0
  for (i in input_vector) {
    my_BMI <- heights/((weights/100)^2)
    print(i)
  }
  return(my_BMI)
}
my.BMI(heights_and_weights[3])
