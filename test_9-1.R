install.packages("magrittr")
library(magrittr)
sys_date_chr <- Sys.Date()
sys_date_yr_chr <- format(Sys.Date(), format = "%Y")
# sys_date_yr_chr <- substr(sys_date_chr, start = 1, stop = 4)
sys_date_yr_num <- as.numeric(sys_date_yr_chr)

#way to make it simple
sys_date_yr_num <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric() %>%
sys_date_yr_num 
#----------------------
sys_date_yr_num <- Sys.Date() %>%
  substr(start = 1, stop = 4) %>%
         as.numeric() %>%
         sys_date_yr_num 

#------------------------------
beyond_age <- Sys.Date() %>%
  substr(start =1, stop = 4) %>%
  as.numeric() %>%
  '-' (1983)
beyond_age
#-------------------------------
lm_cars <- cars %>%
  lm(dist~speed, data = .)
lm_cars
