<<<<<<< HEAD
#槽狀迴圈
#Nested for_loop

#一般寫法
=======
#�Ѫ��j��
#Nested for_loop

#�@��g�k
>>>>>>> b5968b8eec5faf925edd53dc7b50cc2c1fcb615c
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:6
my_mat <- matrix(my_vector, nrow = 2)
my_mat
#--------------------------------
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:4
my_mat <- matrix(my_vector, nrow = 2, ncol = 3)
my_mat

<<<<<<< HEAD
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
=======
#�Ѽ��^��
#1.�إߵ��c
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:4
#�Q�Q�n�񪺦�m
for (i in 1:nrow(my_mat)){
  for(j in 1: ncol(my_mat)){
    my_mat[i,j] <-my_vector[1]
    my_vector <- my_vector [-1]
  }
}
my_mat
>>>>>>> b5968b8eec5faf925edd53dc7b50cc2c1fcb615c
