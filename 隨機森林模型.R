#隨機森林模型
#建議Y轉為factor
install.packages("randomForest")
library(randomForest)
titanic$Survived <- factor(titanic$Survived)
set.seed(87)
forest_fit <- randomForest(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, ntree = 200)