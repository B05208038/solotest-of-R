#01182017
> char_vec <- c("Female","Male","Female","Female")
> char_vec
[1] "Female" "Male"   "Female" "Female"
> ?factor
starting httpd help server ... done
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> is.factor(male)
Error in is.factor(male) : object 'male' not found
> is.factor(char_vec)
[1] FALSE
> factor_vec <- factor(char_vec)
> factor_vec
[1] Female Male   Female Female
Levels: Female Male
> is.factor(factor_vec)
[1] TRUE
> factor_vec[1]>factor_vec[2]
[1] NA
Warning message:
  In Ops.factor(factor_vec[1], factor_vec[2]) :
  ‘>’ not meaningful for factors
> #名目型因素向量
  > speed_vec <- c("slow","fast", "fast", "moderate")
Error: unexpected input in "speed_vec <- c("slow","fast", "fast", "moderate")"
> speed_vec <- c("slow","fast", "fast", "moderate")
> speed_vec
[1] "slow"     "fast"     "fast"     "moderate"
> factor(speed_vec)
[1] slow     fast     fast     moderate
Levels: fast moderate slow
> speed_factor<-factor(speed_vec, ordered = TRUE, levels=c("slow","moderate","fast"))
> is.factor(speed_factor)
[1] TRUE
> speed_factor
[1] slow     fast     fast     moderate
Levels: slow < moderate < fast
> factor_vec
[1] Female Male   Female Female
Levels: Female Male
> #跟speed比較，可發現數值同但沒比大小
> speed_factor[1]>speed_factor[2]
[1] FALSE
> speed_factor[1]<speed_factor[2]
[1] TRUE
> #字串順利有大小順序排序

#如果沒有提供順序，係利用第一個字母的順序判斷大小
> speed_factor <- factor(speed_vec, ordered = TRUE)
> speed_factor
[1] slow     fast     fast     moderate
Levels: fast < moderate < slow
> "Z">"B"
[1] TRUE
> "x">"B"
[1] TRUE
> "Z">"B"
[1] TRUE
> "x">"B"
[1] TRUE
> temperature_vector <- c("Cold", "Warm", "Hot", "Cold", "Hot")
> temperature_factor <- factor(temperature_vector, ordered = TRUE)
> temperature_factor
[1] Cold Warm Hot  Cold Hot 
Levels: Cold < Hot < Warm
> temperature_vector <- c("Cold", "Warm", "Hot", "Cold", "Hot")
> temperature_factor <- factor(temperature_vector, ordered = TRUE, levels = c("Cold","Warm", "Hot"))
> temperature_factor
[1] Cold Warm Hot  Cold Hot 
Levels: Cold < Warm < Hot
> 
  
  
#創造矩陣
> my_vector <- 1:8
> my_vector
[1] 1 2 3 4 5 6 7 8
> my_mat<-matrix(my_vector,nrow=2)
> my_mat
[,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
> my_mat<-matrix(my_vector,ncol=4)
> my_mat
[,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
#簡化程式
> my_mat<-matrix(1:20, nrow=5)
> my_mat
[,1] [,2] [,3] [,4]
[1,]    1    6   11   16
[2,]    2    7   12   17
[3,]    3    8   13   18
[4,]    4    9   14   19
[5,]    5   10   15   20
> 
> #如果想橫向填滿
> my_mat<-matrix(1:20, nrow=5, byrow=true)
Error in matrix(1:20, nrow = 5, byrow = true) : object 'true' not found
> my_mat<-matrix(1:20, nrow=5, byrow=True)
Error in matrix(1:20, nrow = 5, byrow = True) : object 'True' not found
> my_mat<-matrix(1:20, nrow=5, byrow=TRUE)
> my_mat
[,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12
[4,]   13   14   15   16
[5,]   17   18   19   20
> #直接找數值
  > my_mat[3,2]
[1] 10
> my_mat[3]
[1] 9
> my_mat[3,]
[1]  9 10 11 12
> my_mat[,2]
[1]  2  6 10 14 18
#diag 實作
> conf_vec<-c(5,2,0,3,3,2,0,1,11)
> conf_matrix<-matrix(conf_vec, nrow = 3)
> conf_matrix
[,1] [,2] [,3]
[1,]    5    3    0
[2,]    2    3    1
[3,]    0    2   11
> acc <- diag(conf_matrix) / sum (conf_matrix)
> acc
[1] 0.1851852 0.1111111 0.4074074
> acc <- sum(diag(conf_matrix)) / sum (conf_matrix)
> acc
[1] 0.7037037
> my_mat
[,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12
[4,]   13   14   15   16
[5,]   17   18   19   20
> my_mat[my_mat > 10]
[1] 13 17 14 18 11 15 19 12 16 20
> my_mat%%3
[,1] [,2] [,3] [,4]
[1,]    1    2    0    1
[2,]    2    0    1    2
[3,]    0    1    2    0
[4,]    1    2    0    1
[5,]    2    0    1    2
> my_mat%%3==0
[,1]  [,2]  [,3]  [,4]
[1,] FALSE FALSE  TRUE FALSE
[2,] FALSE  TRUE FALSE FALSE
[3,]  TRUE FALSE FALSE  TRUE
[4,] FALSE FALSE  TRUE FALSE
[5,] FALSE  TRUE FALSE FALSE
> 
  在此的數字順序為其取出之順序
> my_mat[my_mat%%3==0]
[1]  9  6 18  3 15 12

> #dataframe(資料框)
  > name <- c("蒙其D魯夫", "羅羅亞索隆", "娜美", "賓什莫克香吉士")
> is_female <- c(FALSE, FALSE, TRUE, FALSE)
> age <- c(19, 21, 20, 21)
> one_piece_df <- data.frame(name, is_female, age)
> str(one_piece_df
      + )
'data.frame':  4 obs. of  3 variables:
  $ name     : Factor w/ 4 levels "娜美","蒙其D魯夫",..: 2 4 1 3
$ is_female: logi  FALSE FALSE TRUE FALSE
$ age      : num  19 21 20 21
> is.factor(one_piece_df$name)
[1] TRUE
> is.factor(one_piece_df$is_female)
[1] FALSE
> is.logical(one_piece_df$is_female)
[1] TRUE
> is.numeric(one_piece_df$age)
[1] TRUE
> View(one_piece_df)
> str(one_piece_df)
'data.frame':  4 obs. of  3 variables:
  $ name     : Factor w/ 4 levels "娜美","蒙其D魯夫",..: 2 4 1 3
$ is_female: logi  FALSE FALSE TRUE FALSE
$ age      : num  19 21 20 21
> 
  
#避免讓dataframe自動轉為factor
> ?dataframe
  No documentation for ‘dataframe’ in specified packages and libraries:
  you could try ‘??dataframe’
> ?data.frame
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> name <- c("蒙其D魯夫", "羅羅亞索隆", "娜美", "賓什莫克香吉士")
> is_female <- c(FALSE, FALSE, TRUE, FALSE)
> age <- c(19, 21, 20, 21)
> one_piece_df <- data.frame(name, is_female, age)
> one_piece_df[, 3]
[1] 19 21 20 21
> one_piece_df[, "age"]
[1] 19 21 20 21
> one_piece_df$age
[1] 19 21 20 21
> one_piece_df[1, ]
name is_female age
1 蒙其D魯夫     FALSE  19
> 
> is_luffy <- one_piece_df$name == "蒙其D魯夫"
> is_luffy
[1]  TRUE FALSE FALSE FALSE
> one_piece_df[is_luffy, ]
name is_female age
1 蒙其D魯夫     FALSE  19
> one_piece_df[one_piece_df$age == 21, ] 
name is_female age
2     羅羅亞索隆     FALSE  21
4 賓什莫克香吉士     FALSE  21  
> one_piece_df
name is_female age
1      蒙其D魯夫     FALSE  19
2     羅羅亞索隆     FALSE  21
3           娜美      TRUE  20
4 賓什莫克香吉士     FALSE  21
> one_piece_df[3,1]
[1] 娜美
Levels: 娜美 蒙其D魯夫 賓什莫克香吉士 羅羅亞索隆
> one_piece_df[3,]
name is_female age
3 娜美      TRUE  20
> one_piece_df[,1]
[1] 蒙其D魯夫      羅羅亞索隆     娜美           賓什莫克香吉士
Levels: 娜美 蒙其D魯夫 賓什莫克香吉士 羅羅亞索隆
> one_piece_df[,3]
[1] 19 21 20 21
> one_piece_df[3"name"]
Error: unexpected string constant in "one_piece_df[3"name"]
> one_piece_df[3,"name"]
[1] 娜美
Levels: 娜美 蒙其D魯夫 賓什莫克香吉士 羅羅亞索隆
> one_piece_df[3,"age"]
               + one_piece_df[3,"age"]
               Error: unexpected symbol in:
               "one_piece_df[3,"age"]
                             one_piece_df[3,"age"]
                             > one_piece_df[3,"age"]
                             [1] 20
                             > one_piece_df[,"age"]
                             [1] 19 21 20 21


#抓數值
> one_piece_df["name",3]
[1] NA
> one_piece_df$name
[1] 蒙其D魯夫      羅羅亞索隆     娜美           賓什莫克香吉士
Levels: 娜美 蒙其D魯夫 賓什莫克香吉士 羅羅亞索隆
> one_piece_df$is_female
[1] FALSE FALSE  TRUE FALSE
> one_piece_df$age
[1] 19 21 20 21
> one_piece_df[one_piece_df$age>19,]
            name is_female age
2     羅羅亞索隆     FALSE  21
3           娜美      TRUE  20 
4 賓什莫克香吉士     FALSE  21
> one_piece_df[one_piece_df$age>19,"name"]
[1] 羅羅亞索隆     娜美           賓什莫克香吉士
Levels: 娜美 蒙其D魯夫 賓什莫克香吉士 羅羅亞索隆

> #選是女性觀測值
> one_piece_df[one_piece_df$is_female==TRUE,]
  name is_female age
3 娜美      TRUE  20
> one_piece_df[one_piece_df$name=="娜美",]
  name is_female age
3 娜美      TRUE  20
