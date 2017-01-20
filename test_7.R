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



