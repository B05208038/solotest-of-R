#載入 Excel 試算表
#先將 https://storage.googleapis.com/r_rookies/kaggle_titanic_train.xlsx 下載到 ~/Downloads 目錄下
install.packages("readxl")
library(readxl)
titanic_xlsx <- read_excel("~/Downloads/kaggle_titanic_train.xlsx")


#載入 SAS 資料集
install.packages("haven")
library(haven)
smoking_sas_data <- read_sas("http://storage.googleapis.com/r_rookies/smoking.sas7bdat")


#json:羽量級資料群集
install.packages("jsonlite")
library(jsonlite)
url <- "https://storage.googleapis.com/r_rookies/iris.json" # 在雲端上儲存了一份 JSON 檔
iris_json_df <- fromJSON(url)
head(iris_json_df)
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa

> toJSON(head(iris_json_df))
[{"Sepal.Length":5.1,"Sepal.Width":3.5,"Petal.Length":1.4,"Petal.Width":0.2,"Species":"setosa"},{"Sepal.Length":4.9,"Sepal.Width":3,"Petal.Length":1.4,"Petal.Width":0.2,"Species":"setosa"},{"Sepal.Length":4.7,"Sepal.Width":3.2,"Petal.Length":1.3,"Petal.Width":0.2,"Species":"setosa"},{"Sepal.Length":4.6,"Sepal.Width":3.1,"Petal.Length":1.5,"Petal.Width":0.2,"Species":"setosa"},{"Sepal.Length":5,"Sepal.Width":3.6,"Petal.Length":1.4,"Petal.Width":0.2,"Species":"setosa"},{"Sepal.Length":5.4,"Sepal.Width":3.9,"Petal.Length":1.7,"Petal.Width":0.4,"Species":"setosa"}] 
