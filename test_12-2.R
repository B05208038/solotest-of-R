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
predicted <- predict(forest_fit )
predicted

to_be_submitted <- data.frame(to_predict$PassengerId, Survived = predicted)