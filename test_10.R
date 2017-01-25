install.packages("magrittr")
library(magrittr)
#install.packages("dplyr")
library(dplyr)
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

heights_and_weights %>%
  mutate(heights_in_meter = heights / 100,
         bmi = weights / ((heights / 100)^2)
  ) %>%
  View()

heights_and_weights %>%
  mutate(heights_in_meter = heights / 100,
         bmi = weights / ((heights / 100)^2)
  ) %>%
  arrange(bmi) %>%
  View()

summarise(heights_and_weights,
          mean_heights = mean(heights),
          sd_heights  = sd(heights))

summarise(iris, mean_sepal_len = mean(Sepal.Length),
          sd_sepal_len = sd(Sepal.Length))

iris %>%
  group_by(Species) %>%
  summarise(mean_sepal_len = mean(Sepal.Length),
            sd_sepal_len = sd(Sepal.Length)
  ) %>%
  View()
