#For loop to print out all variables of mtcars
column_names <- names(mtcars)
number_of_columns<- length(mtcars)
iterating_vector <- 1:number_of_columns
for (iterator in iterating_vector) {
  print(column_names[iterator])
}
iterator

