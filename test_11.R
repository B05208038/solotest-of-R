install.packages("ggplot2")
library(ggplot2)
#---------------------------------------------------------------------------------
temperature <- c(29, 28, 34, 31, 25, 29, 32, 31, 24, 33, 25, 31, 26, 30)
iced_tea_sales <- c(77, 62, 93, 84, 59, 64, 80, 75, 58, 91, 51, 73, 65, 84)
iced_tea_df <- data.frame(temperature, iced_tea_sales)
ggplot(iced_tea_df, aes(x = temperature, y = iced_tea_sales)) +
  geom_point()

temperature <- c(29, 28, 34, 31, 25, 29, 32, 31, 24, 33, 25, 31, 26, 30)
iced_tea_sales <- c(77, 62, 93, 84, 59, 64, 80, 75, 58, 91, 51, 73, 65, 84)
iced_tea_df <- data.frame(temperature, iced_tea_sales)

# Modeling
lm_fit <- lm(formula = iced_tea_sales ~ temperature, data = iced_tea_df)
summary(lm_fit)

# Predict
to_be_predicted <- data.frame(temperature = 30)
predicted <- predict(lm_fit, newdata = to_be_predicted)
to_be_predicted <- cbind(to_be_predicted, iced_tea_sales = predicted)

# Plotting
ggplot(iced_tea_df, aes(x = temperature, y = iced_tea_sales)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) + 
  geom_point(data = to_be_predicted, colour = "red", shape = 17, size = 3)
#----------------------------------------------------------------------------------
  
store_area <- c(10, 8, 8, 5, 7, 8, 7, 9, 6, 9)
dist_to_station <- c(80, 0, 200, 200, 300, 230, 40, 0, 330, 180)
monthly_sales <- c(469, 366, 371, 208, 246, 297, 363, 436, 198, 364)
bakery_df <- data.frame(store_area, dist_to_station, monthly_sales)

# Modeling
lm_fit <- lm(monthly_sales ~ ., data = bakery_df)

# Performance
y_hat <- predict(lm_fit, newdata = bakery_df[ , c("store_area", "dist_to_station")])

#calculate  RMSE
res <- bakery_df$monthly_sales - y_hat
rmse <- sqrt(sum(res^2) / nrow(bakery_df))
rmse

# Adjusted R-squared
summary_lm_fit <- summary(lm_fit)
summary_lm_fit$adj.r.squared
#------------------------------------------------------------------------------
iris_km <- iris[, -5]
set.seed(87)
km_fit <- kmeans(iris_km, nstart = 10, centers = 3)

# Plotting
par(mfrow = c(1, 2))
plot(x = iris$Sepal.Length, y = iris$Sepal.Width, col = iris$Species, main = "Labeled")
plot(x = iris$Sepal.Length, y = iris$Sepal.Width, col = km_fit$cluster, main = "K-Means", ylab = "")
