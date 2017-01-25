#流程控制
x <- 10 # 修改 x 看看結果有何不同？
# 兩個分支的流程控制
if (x %% 2 == 0) {
  print("x 是一個偶數！")
} else {
  print("x 是一個奇數！")
}



#流程控制
x <- 66666 # 修改 x 看看結果有何不同？
# 兩個分支的流程控制
if (x %% 3 == 0) {
  print (paste(x, "可以被3整除"))
} else if(x %% 3 == 1){
  print(paste(x, "被3除餘1"))
} else {print(paste(x, "被3除餘2"))}

