#CREATE a function: circle.calculate()
circle.calculate <- function(radius, area_cal=TRUE) {
  circle_area <- pi * radius^2
  circle_circum <- 2 * pi * radius
  if (area_cal == TRUE) {
    return(circle_area)
  } else {
    return(circle_circum)
  }
}
circle.calculate(3) 
circle.calculate(area_cal = FALSE, radius = 3) 


#create a function : my.length()
my.length <-function(input_vec){
  count <- 0
  for (i in input_vec) {
    count <- count + 1
  }
  return(count)
}

my_vector <- 1:10
another_vector <- 1:100

my.length(my_vector)
my.length(another_vector)
#create a function : my.sum()
my.sum<- function(input_vec){
  summation <-0
  for (i in input_vec){
    cpunter <- counter+1
  }
return(counter)
}

#create a function : my_counter
my_counter<- function(input_vec){
  counter <-0
  for (i in input_vec){
    counter <- counter+1
  }
  return(counter)
}



#sort function
my.sort.asc<- function(input_vec){
  len_input_vec<-length(input_vec)
  for(i in 1:(len_input_vec - 1)){
    if (input_vec[i] > input_[j]){
      temp_i <- input_vec[i]
      input_vec[i] <- input_vec[j]
      input_vec[j] <-temp_i 
    }
  }
  return(input_vec)
}
