#建立一個 Data Frame 來練習
# 角色設定的向量
name <- c("Monkey D. Luffy", "Roronoa Zoro", "Nami", "Usopp", "Vinsmoke Sanji", "Tony Tony Chopper", "Nico Robin", "Franky", "Brook")
gender <- c("Male", "Male", "Female", "Male", "Male", "Male", "Female", "Male", "Male")
occupation <- c("Captain", "Swordsman", "Navigator", "Sniper", "Cook", "Doctor", "Archaeologist", "Shipwright", "Musician")
bounty <- c(500000000, 320000000, 66000000, 200000000, 177000000, 100, 130000000, 94000000, 83000000)
age <- c(19, 21, 20, 19, 21, 17, 30, 36, 90)
birthday <- c("05-05", "11-11", "07-03", "04-01", "03-02", "12-24", "02-06", "03-09", "04-03")
height <- c(174, 181, 170, 176, 180, 90, 188, 240, 277)

# 建立草帽海賊團角色設定的資料框
straw_hat_df <- data.frame(name, gender, occupation, bounty, age, birthday, height)

#使用我們提過的函數觀察這個資料框
# 建立草帽海賊團角色設定的資料框
> straw_hat_df <- data.frame(name, gender, occupation, bounty, age, birthday, height)
> load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
Error in load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData")) : 
  cannot open the connection
In addition: Warning message:
  In load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData")) :
  InternetOpenUrl failed: '無法連線至撤銷伺服器，或者無法取得可用回應。'
> dim(straw_hat_df)
[1] 9 7
> str(straw_hat_df)
'data.frame':  9 obs. of  7 variables:
  $ name      : Factor w/ 9 levels "Brook","Franky",..: 3 6 4 8 9 7 5 2 1
$ gender    : Factor w/ 2 levels "Female","Male": 2 2 1 2 2 2 1 2 2
$ occupation: Factor w/ 9 levels "Archaeologist",..: 2 9 6 8 3 4 1 7 5
$ bounty    : num  5.00e+08 3.20e+08 6.60e+07 2.00e+08 1.77e+08 1.00e+02 1.30e+08 9.40e+07 8.30e+07
$ age       : num  19 21 20 19 21 17 30 36 90
$ birthday  : Factor w/ 9 levels "02-06","03-02",..: 6 8 7 4 2 9 1 3 5
$ height    : num  174 181 170 176 180 90 188 240 277
> summary(straw_hat_df)
name      gender          occupation     bounty               age           birthday     height     
Brook          :1   Female:2   Archaeologist:1    Min.   :      100   Min.   :17.00   02-06  :1   Min.   : 90.0  
Franky         :1   Male  :7   Captain      :1    1st Qu.: 83000000   1st Qu.:19.00   03-02  :1   1st Qu.:174.0  
Monkey D. Luffy:1              Cook         :1    Median :130000000   Median :21.00   03-09  :1   Median :180.0  
Nami           :1              Doctor       :1    Mean   :174444456   Mean   :30.33   04-01  :1   Mean   :186.2  
Nico Robin     :1              Musician     :1    3rd Qu.:200000000   3rd Qu.:30.00   04-03  :1   3rd Qu.:188.0  
Roronoa Zoro   :1              Navigator    :1    Max.   :500000000   Max.   :90.00   05-05  :1   Max.   :277.0  
(Other)        :3              (Other)      :3                                        (Other):3                  
> View(straw_hat_df)
> 

  
  
#沒有草帽海賊團的出生年，如何建立?  
> straw_hat_df$birthday
[1] 05-05 11-11 07-03 04-01 03-02 12-24 02-06 03-09 04-03
Levels: 02-06 03-02 03-09 04-01 04-03 05-05 07-03 11-11 12-24
> straw_hat_df$age
[1] 19 21 20 19 21 17 30 36 90

> ?substr
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> substr(Sys.Date(), start = 1, stop = 4)
[1] "2017"  #這樣就切出年份了
> 
  
  
> format(Sys.Date(), format = "%y")
[1] "17"
> format(Sys.Date(), format = "%x")
[1] "2017/1/20"
> format(Sys.Date(), format = "%z")
[1] "+0000"
> format(Sys.Date(), format = "%d")
[1] "20"
> format(Sys.Date(), format = "%B")
[1] "一月"
> format(Sys.Date(), format = "%B %d")
[1] "一月 20"
> format(Sys.Date(), format = "%y-%B-%d")
[1] "17-一月-20"
> format(Sys.Date(), format = "%B-%d-%y")
[1] "一月-20-17"


> format(Sys.Date(), format = "%y")-straw_hat_df$age
Error in format(Sys.Date(), format = "%y") - straw_hat_df$age : 
  non-numeric argument to binary operator  #字串，無法直接相減
> as.numeric(format(Sys.Date(), format = "%Y"))-straw_hat_df$age
[1] 1998 1996 1997 1998 1996 2000 1987 1981 1927


#利用cbind加入新變數
> favorite_food <- c("Meat", "Food matches wine", "Orange", "Fish", "Food matches black tea", "Sweets", "Food matches coffee", "Food matches coke", "Milk")
> straw_hat_df <- cbind(straw_hat_df, favorite_food)
> View(straw_hat_df)


#刪除變數
> straw_hat_df <- cbind(straw_hat_df, favorite_food)
> View(straw_hat_df)
> straw_hat_df$occupation <- NULL
> View(straw_hat_df)
> straw_hat_df$gender <- NULL
> View(straw_hat_df)


''
NA 和 NULL 的差別 
NULL 可忽略，但是NA 不可，故回傳值 在NA時=NA
如果NA想忽略
na.rm=TRUE調開即可
''

#新增觀測值
> #rbind 使用
  > load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
> princess_vivi <- c("Nefeltari Vivi", "Female", "Princess of Alabasta", NA, 18, "02-02", NA)
> straw_hat_df <- rbind(straw_hat_df, princess_vivi)
> View(straw_hat_df)


#使用 subset() 函數，subset() 函數可以一次對欄位與觀測值進行篩選，只保留符合條件
> load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
> male_bounty <- subset(straw_hat_df, gender == "Male", select = c(name, gender, bounty))
> View(male_bounty)
#if只要男性姓名
> subset(straw_hat_df, subset = gender == "Male", select = name)
name
1   Monkey D. Luffy
2      Roronoa Zoro
4             Usopp
5    Vinsmoke Sanji
6 Tony Tony Chopper
8            Franky
9             Brook


> #轉換格式
> #新增一個變數為生日的年月日，格式為 Date
> #先算生日的年份，跟原本的月日結合，然後轉換格式
  > birth_year
[1] 1998 1996 1997 1998 1996 2000 1987 1981 1927
> straw_hat_df$birthday
[1] "05-05" "11-11" "07-03" "04-01" "03-02" "12-24" "02-06" "03-09" "04-03"
> straw_hat_df$birthday <- as.chracter()
Error: could not find function "as.chracter"
> straw_hat_df$birthday <- as.character()
Error in `$<-.data.frame`(`*tmp*`, "birthday", value = character(0)) : 
  replacement has 0 rows, data has 9
> straw_hat_df$birthday <- as.character(straw_hat_df$birthday)
> paste(birth_year, straw_hat_df$birthday, sep="-")
[1] "1998-05-05" "1996-11-11" "1997-07-03" "1998-04-01" "1996-03-02" "2000-12-24" "1987-02-06" "1981-03-09" "1927-04-03"
> birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep="-")
> class (birth_date_chr)
[1] "character"



#轉換字元
> birth_date_chr
[1] "1998-05-05" "1996-11-11" "1997-07-03" "1998-04-01" "1996-03-02" "2000-12-24" "1987-02-06" "1981-03-09" "1927-04-03"
> as.Date(birth_date_chr)
[1] "1998-05-05" "1996-11-11" "1997-07-03" "1998-04-01" "1996-03-02" "2000-12-24" "1987-02-06" "1981-03-09" "1927-04-03"
> as.Date(birth_date_chr, format = "%y %m-%d")
[1] NA NA NA NA NA NA NA NA NA
> as.Date(birth_date_chr, format = "%y %m - %d")
[1] NA NA NA NA NA NA NA NA NA
> as.Date(birth_date_chr, format = "%B, %d, %y")
[1] NA NA NA NA NA NA NA NA NA
> this_year <- as.numeric(format(Sys.Date(), '%Y'))
> birth_year <- this_year - straw_hat_df$age
> birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
> straw_hat_df$birth_date <- as.Date(birth_date_chr)
> str(straw_hat_df)
'data.frame':  9 obs. of  8 variables:
  $ name      : chr  "Monkey D. Luffy" "Roronoa Zoro" "Nami" "Usopp" ...
$ gender    : Factor w/ 2 levels "Female","Male": 2 2 1 2 2 2 1 2 2
$ occupation: chr  "Captain" "Swordsman" "Navigator" "Sniper" ...
$ bounty    : num  5.00e+08 3.20e+08 6.60e+07 2.00e+08 1.77e+08 1.00e+02 1.30e+08 9.40e+07 8.30e+07
$ age       : num  19 21 20 19 21 17 30 36 90
$ birthday  : chr  "05-05" "11-11" "07-03" "04-01" ...
$ height    : num  174 181 170 176 180 90 188 240 277
$ birth_date: Date, format: "1998-05-05" "1996-11-11" "1997-07-03" "1998-04-01" ...



#為什麼要學資料轉置
#先看我們的原始寬表格
#如果我們想要快速地畫在一個長條圖上畫兩組數據呢？
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_wide_df <- straw_hat_df[, c("name", "age", "height")]
View(straw_hat_wide_df)
library(ggplot2)
ggplot(straw_hat_wide_df, aes(x = factor(name), y = age)) + geom_bar(stat = "identity")




#使用tool時須注意座標軸數值部分
> ggplot(straw_hat_wide_df, aes(x = factor(name), y = height)) + geom_bar(stat = "identity")
> straw_hat_long_df <- gather(straw_hat_wide_df, key = category, value = values, age, height)
> ggplot(straw_hat_long_df, aes(x = factor(name), y = values, fill = category)) + geom_bar(stat = "identity", position = "dodge")
> straw_hat_long_df <- gather(straw_hat_wide_df, key = category, value = values, age, height)
> ggplot(straw_hat_long_df, aes(x = factor(name), y = values, fill = category)) + geom_bar(stat = "identity", position = "dodge")
> 
  
  
#連結資料框
> ggplot(straw_hat_wide_df, aes(x = factor(name), y = height)) + geom_bar(stat = "identity")
> straw_hat_long_df <- gather(straw_hat_wide_df, key = category, value = values, age, height)
> ggplot(straw_hat_long_df, aes(x = factor(name), y = values, fill = category)) + geom_bar(stat = "identity", position = "dodge")
> straw_hat_long_df <- gather(straw_hat_wide_df, key = category, value = values, age, height)
> ggplot(straw_hat_long_df, aes(x = factor(name), y = values, fill = category)) + geom_bar(stat = "identity", position = "dodge")
> load(url("https://storage.googleapis.com/r_rookies/straw_hat_devil_fruit.RData"))
> View(straw_hat_devil_fruit)
> #連結資料框:merge
> merge(straw_hat_df, straw_hat_devil_fruit)
name gender    occupation  bounty age birthday height         devil_fruit devil_fruit_type
1             Brook   Male      Musician 8.3e+07  90    04-03    277 Revive-Revive Fruit        Paramecia
2   Monkey D. Luffy   Male       Captain 5.0e+08  19    05-05    174       Gum-Gum Fruit        Paramecia
3        Nico Robin Female Archaeologist 1.3e+08  30    02-06    188 Flower-Flower Fruit        Paramecia
4 Tony Tony Chopper   Male        Doctor 1.0e+02  17    12-24     90   Human-Human Fruit             Zoan
> straw_hat_df_merged<- merge(straw_hat_df, straw_hat_devil_fruit)
> view(straw_hat_df_merged)
Error: could not find function "view"
> View(straw_hat_df_merged)

sqlzoo net