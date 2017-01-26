#抽樣，因為replace=FALSE
sample(n)

#使結果一樣
set.seed(87)
head(sample(n))

set.seed(87)
shuffled_titanic <- titanic[sample(n),]
head(shuffled_titanic)
