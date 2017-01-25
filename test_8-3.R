#while loop for printing variable of mtcars
var_names <- names(mtcars)
iterator <- 1

while(iterator < length(var_names)){
  print(var_names[iterator])
  iterator<- iterator+1
}
iterator
