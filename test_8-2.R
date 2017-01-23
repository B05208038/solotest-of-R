#槽狀迴圈
#Nested for_loop

#一般寫法
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:6
my_mat <- matrix(my_vector, nrow = 2)
my_mat
#--------------------------------
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:4
my_mat <- matrix(my_vector, nrow = 2, ncol = 3)
my_mat

#槽撞回圈
#1.建立結構
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:4
#想想要填的位置
for (i in 1:ncol(my_mat)){
  for(j in 1: nrow(my_mat)){
    my_mat[j,i] <-my_vector[1]
    my_vector <- my_vector [-1]
  }
}
my_mat
