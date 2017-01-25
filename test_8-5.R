#Break und next
mtcars_col_names <- names(mtcars)
for (i in mtcars_col_names) {
  if (i == "wt") {
    break
  }
  print(i)
}
i # 看看 i

for (i in mtcars_col_names) {
  if (i == "wt") {
    next
  }
  print(i)
}
i # 看看 i