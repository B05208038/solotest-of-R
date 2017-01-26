#讀個資料
url = "https://storage.googleapis.com/2017_ithome_ironman/data/kaggle_titanic_train.csv"
titanic <- read.csv(url)
titanic
summary(titanic)
str(titanic)
summary(titanic$Age)
table(titanic$Embarked)
View(titanic)
#將資料格式轉換，用complete cases篩選
titanic <- titanic[complete.cases(titanic), ]
#知道資料及之觀測值數量
n <-nrow(titanic)
?sample
#為了使洗牌結果一致，提供因子
set.seed(87)
shuffled_titanic <- titanic[sample(n),]#洗牌的動作
head(shuffled_titanic)
#使用 70/30 比例分割為訓練/測試樣本，選擇切割位置的列數
set.seed(87)
shuffled_titanic <- titanic[sample(n), ]
train_indices <- 1:round(0.7 * n)
train <- shuffled_titanic[train_indices, ]
test_indices <- (round(0.7 * n) + 1):n
test <- shuffled_titanic[test_indices, ]
#測試資料檢視
head(train)
#我們使用決策樹分類器
install.packages("rpart")
library(rpart)
tree_fit <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method = "class")
#做預測(模型輸入須相同)
prediction <- predict(tree_fit, test[, c("Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked")], type = "class")

#計算你的數學模型精準度
#diag : 對角線
confusion_matrix <- table(test$Survived, prediction)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
accuracy
#隨機森林模型
#建議Y轉為factor
install.packages("randomForest")
library(randomForest)
titanic$Survived <- factor(titanic$Survived)
set.seed(87)
forest_fit <- randomForest(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, ntree = 500)
prediction <- predict(forest_fit, newdata = test[, c("Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked")])
confusion_matrix <- table(test$Survived, prediction)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
accuracy

mean_fare<-mean(to_predict$Fare)
mean_fare
mean_fare<-mean(to_predict$Fare, na.rm = TRUE)

to_predict$Fare[is.na(to_predict$Fare)]<-mean_fare
summary(to_predict$Fare)
#install.packages("dplyr")
#library(dplyr)
#install.packages("magrittr")
#library(magrittr)

to_predict%>%
  group_by(Pclass)%>%
  summarise(mean_age=mean(Age, na.rm=TRUE))%>%
  View()
#填補
to_predict[filter_1, ]$Age <- 41
to_predict[filter_2, ]$Age <- 29
to_predict[filter_3, ]$Age <- 24
summary(to_predict$Age)
summary(to_predict$Fare)
# Summary after imputation
summary(to_predict)
str(train)
table(titanic$Embarked)

forest_fit <- randomForest(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, ntree = 100)
predicted <- predict(forest_fit,newdata = to_predict[, c("Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked")])
predicted

to_be_submitted <- data.frame(to_predict$PassengerId, Survived = predicted)
write.csv(to_be_submitted , file = "to_submit.csv", row.names = FALSE)
getwd()