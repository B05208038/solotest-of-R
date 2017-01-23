> writelines("hello world")
Error: could not find function "writelines"
> writeLines("hello world")
hello world
> writeLines("hello\nworld")
hello
world
> writeLines("hello\\nworld")
hello\nworld
> ?reas.table
No documentation for ‘reas.table’ in specified packages and libraries:
  you could try ‘??reas.table’
> ?read.table
starting httpd help server ... done
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> load(url("https://storage.googleapis.com/r_rookies/straw_hat_devil_fruit.RData"))
> View(straw_hat_devil_fruit)
> straw_hat_df_devil_fruit <- merge(straw_hat_df, straw_hat_devil_fruit)
Error in merge(straw_hat_df, straw_hat_devil_fruit) : 
  object 'straw_hat_df' not found
> View(straw_hat_df_devil_fruit)
Error in View : object 'straw_hat_df_devil_fruit' not found
> load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
> straw_hat_df_devil_fruit <- merge(straw_hat_df, straw_hat_devil_fruit)
> View(straw_hat_df_devil_fruit)
> str(straw_hat_devil_druit)
Error in str(straw_hat_devil_druit) : 
  object 'straw_hat_devil_druit' not found
> str(straw_hat_df_devil_druit)
Error in str(straw_hat_df_devil_druit) : 
  object 'straw_hat_df_devil_druit' not found
> str(straw_hat_devil_fruit)
'data.frame':  4 obs. of  3 variables:
  $ name            : Factor w/ 4 levels "Brook","Monkey D. Luffy",..: 2 4 3 1
$ devil_fruit     : Factor w/ 4 levels "Flower-Flower Fruit",..: 2 3 1 4
$ devil_fruit_type: Factor w/ 2 levels "Paramecia","Zoan": 1 2 1 1
> law <- c("Trafalgar D. Water Law", "Op-Op Fruit","Paramecia")
> straw_hat_devil_fruit<-rbind(straw_hat_devil_fruit)
> View(straw_hat_devil_fruit)

#merge
> merged_df<- merge(straw_hat_df, straw_hat_devil_df)
Error in as.data.frame(y) : object 'straw_hat_devil_df' not found
> merged_df<- merge(straw_hat_df, straw_hat_devil_fruit)
> view(merged_df)
Error: could not find function "view"
> View(merged_df)
> merged_df1<- merge(straw_hat_df, straw_hat_devil_fruit, all.x = TRUE)
> View(merged_df1)
> merged_df_right_join<- merge(straw_hat_df, straw_hat_devil_fruit, all.y = TRUE)
> View(merged_df_right_join)
-----------------------------------------------------
#practice 1
  > # Create the character
  > boston_marathon_2016 <- "2016-04-18"
> 
  > # Check the variable type using `class()`
  > class(boston_marathon_2016)
[1] "character"
> 
  > # Using as.Date() to transform the character and re-assign it to another variable `bm_2016_date`
  > bm_2016_date <- as.Date(boston_marathon_2016)
> 
  > # Check the newly created variable type using `class()`
  > class(bm_2016_date)
[1] "Date"
---------------------------------------------------------
#practice 2
  > # Print order_data which was loaded previously
  > order_data
OrderID CustomerID  OrderDate
1   10308          2 1996-09-18
2   10309         37 1996-09-19
3   10310         77 1996-09-20
> 
  > # Print customer_data which was loaded previously
  > customer_data
CustomerID                       CustomerName    ContactName Country
1          1                Alfreds Futterkiste   Maria Anders Germany
2          2 Ana Trujillo Emparedados y helados   Ana Trujillo  Mexico
3          3     Antonio Moreno Taquer\303\255a Antonio Moreno  Mexico
> 
  > # Merge these 2 data frames using their common variable: CustomerID and assign to a new data frame: merged_data
  > merged_data <- merge(order_data, customer_data)
> 
  > # Print merged_data to the console
  > merged_data
CustomerID OrderID  OrderDate                       CustomerName  ContactName
1          2   10308 1996-09-18 Ana Trujillo Emparedados y helados Ana Trujillo
Country
1  Mexico
-------------------------------------------------------
> dim(mtcars)
[1] 32 11
> #迴圈應用 
#For loop to print out all variables of mtcars

  
  
  
  
  
  