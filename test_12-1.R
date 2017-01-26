url = "https://storage.googleapis.com/2017_ithome_ironman/data/kaggle_titanic_train.csv"
titanic <- read.csv(url)
titanic <- titanic[complete.cases(titanic), ]
titanic$Survived <- factor(titanic$Survived)

# Split
n <- nrow(titanic)
set.seed(87)
shuffled_titanic <- titanic[sample(n), ]
train_indices <- 1:round(0.7 * n)
train <- shuffled_titanic[train_indices, ]
test_indices <- (round(0.7 * n) + 1):n
test <- shuffled_titanic[test_indices, ]
nrow(test)
nrow(train)
forest_fit <- randomForest(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, ntree=100)
forest_fit
prediction <- predict(forest_fit, newdata = test[, c("Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked")], type = 'class')
prediction
conf_mat <- table(prediction, test$Survived)
conf_mat
acc <- sum(diag(conf_mat))/sum(conf_mat)
acc