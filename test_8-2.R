<<<<<<< HEAD
#æ§½ç‹€è¿´åœˆ
#Nested for_loop

#ä¸€èˆ¬å¯«æ³•
=======
#¼Ñª¬°j°é
#Nested for_loop

#¤@¯ë¼gªk
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
#æ§½æ’žå›žåœˆ
#1.å»ºç«‹çµæ§‹
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:4
#æƒ³æƒ³è¦å¡«çš„ä½ç½®
for (i in 1:ncol(my_mat)){
  for(j in 1: nrow(my_mat)){
    my_mat[j,i] <-my_vector[1]
    my_vector <- my_vector [-1]
  }
}
my_mat
=======
#¼Ñ¼²¦^°é
#1.«Ø¥ßµ²ºc
my_mat <- matrix(nrow = 2, ncol = 3)
my_vector<- 1:4
#·Q·Q­n¶ñªº¦ì¸m
for (i in 1:nrow(my_mat)){
  for(j in 1: ncol(my_mat)){
    my_mat[i,j] <-my_vector[1]
    my_vector <- my_vector [-1]
  }
}
my_mat
>>>>>>> b5968b8eec5faf925edd53dc7b50cc2c1fcb615c
