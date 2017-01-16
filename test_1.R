# 在命令列依序輸入
num <- 2
int <- 2L
compl <- 2 + 3i
char <- "Hello" # 用引號告訴 R 語言這是一組字串
logi_t <- TRUE
logi_f <- FALSE
# 把這些變數輸出在命令列
num
int
compl
char
logi_t
logi_f


num <- 2
int <- 2L
compl <- 2 + 3i
char <- "Hello" # 用引號告訴 R 語言這是一組字串
logi_t <- TRUE
logi_f <- FALSE
# 運算
num + int
num + compl
int + logi_t
logi_t * 5

class(int)
class (char)
ls()#回傳所有值

rm(name)#移除某一個值
----------------------------test------------------------------
  > # 在命令列依序輸入
  > num <- 2
> int <- 2L
> compl <- 2 + 3i
> char <- "Hello" # 用引號告訴 R 語言這是一組字串
> logi_t <- TRUE
> logi_f <- FALSE
> # 把這些變數輸出在命令列
  > num
[1] 2
> int
[1] 2
> compl
[1] 2+3i
> char
[1] "Hello"
> logi_t
[1] TRUE
> logi_f
[1] FALSE
> num
[1] 2
> int
[1] 2
> num = it
Error: object 'it' not found
> num = int
> # 在命令列依序輸入
  > num <- 2
> int <- 2L
> compl <- 2 + 3i
> char <- "Hello" # 用引號告訴 R 語言這是一組字串
> logi_t <- TRUE
> logi_f <- FALSE
> # 把這些變數輸出在命令列
  > num
[1] 2
> int
[1] 2
> compl
[1] 2+3i
> char
[1] "Hello"
> logi_t
[1] TRUE
> logi_f
[1] FALSE
> logi_True
Error: object 'logi_True' not found
> logi=True
Error: object 'True' not found
> logi<-True
Error: object 'True' not found
> num <- 2
> int <- 2L
> compl <- 2 + 3i
> char <- "Hello" # 用引號告訴 R 語言這是一組字串
> logi_t <- TRUE
> logi_f <- FALSE
> # 運算
  > num + int
[1] 4
> num + compl
[1] 4+3i
> int + logi_t
[1] 3
> logi_t * 5
[1] 5
> TRUE==1
[1] TRUE
> FALSE==1
[1] FALSE
> FALSE==2
[1] FALSE
> FALSE==0
[1] TRUE
> "hello"
[1] "hello"
> char*5
Error in char * 5 : non-numeric argument to binary operator
> 
  > class "char"
Error: unexpected string constant in "class "char""
> 
  > class "char"
Error: unexpected string constant in "class "char""
> class "char"
Error: unexpected string constant in "class "char""
> class (char)
[1] "character"
> class(int)
[1] "integer"
> class(compl)
[1] "complex"
> ls()
[1] "char"   "compl"  "int"    "logi_f" "logi_t" "num"   
> rm(a)
Warning message:
  In rm(a) : object 'a' not found
> ls()
[1] "char"   "compl"  "int"    "logi_f" "logi_t" "num"   
> rm(a)
Warning message:
  In rm(a) : object 'a' not found
> rm(char)
> ls
function (name, pos = -1L, envir = as.environment(pos), all.names = FALSE, 
          pattern, sorted = TRUE) 
{
  if (!missing(name)) {
    pos <- tryCatch(name, error = function(e) e)
    if (inherits(pos, "error")) {
      name <- substitute(name)
      if (!is.character(name)) 
        name <- deparse(name)
      warning(gettextf("%s converted to character string", 
                       sQuote(name)), domain = NA)
      pos <- name
    }
  }
  all.names <- .Internal(ls(envir, all.names, sorted))
  if (!missing(pattern)) {
    if ((ll <- length(grep("[", pattern, fixed = TRUE))) && 
          ll != length(grep("]", pattern, fixed = TRUE))) {
      if (pattern == "[") {
        pattern <- "\\["
        warning("replaced regular expression pattern '[' by  '\\\\['")
      }
      else if (length(grep("[^\\\\]\\[<-", pattern))) {
        pattern <- sub("\\[<-", "\\\\\\[<-", pattern)
        warning("replaced '[<-' by '\\\\[<-' in regular expression pattern")
      }
    }
    grep(pattern, all.names, value = TRUE)
  }
  else all.names
}
<bytecode: 0x000000000bad9170>
  <environment: namespace:base>
  > ls
function (name, pos = -1L, envir = as.environment(pos), all.names = FALSE, 
          pattern, sorted = TRUE) 
{
  if (!missing(name)) {
    pos <- tryCatch(name, error = function(e) e)
    if (inherits(pos, "error")) {
      name <- substitute(name)
      if (!is.character(name)) 
        name <- deparse(name)
      warning(gettextf("%s converted to character string", 
                       sQuote(name)), domain = NA)
      pos <- name
    }
  }
  all.names <- .Internal(ls(envir, all.names, sorted))
  if (!missing(pattern)) {
    if ((ll <- length(grep("[", pattern, fixed = TRUE))) && 
          ll != length(grep("]", pattern, fixed = TRUE))) {
      if (pattern == "[") {
        pattern <- "\\["
        warning("replaced regular expression pattern '[' by  '\\\\['")
      }
      else if (length(grep("[^\\\\]\\[<-", pattern))) {
        pattern <- sub("\\[<-", "\\\\\\[<-", pattern)
        warning("replaced '[<-' by '\\\\[<-' in regular expression pattern")
      }
    }
    grep(pattern, all.names, value = TRUE)
  }
  else all.names
}
<bytecode: 0x000000000bad9170>
  <environment: namespace:base>
  > ls()
[1] "compl"  "int"    "logi_f" "logi_t" "num"   
> setwd("~/a_new_folder")
Error in setwd("~/a_new_folder") : cannot change working directory
> setwd("~/a_new_folder")
Error in setwd("~/a_new_folder") : cannot change working directory
> setwd("~/a_new_folder")
Error in setwd("~/a_new_folder") : cannot change working directory
> Sys.Date()
[1] "2017-01-16"
> setwd("~/user/a_new_folder")
Error in setwd("~/user/a_new_folder") : cannot change working directory
> setwd("~/Users/user/a_new_folder")
Error in setwd("~/Users/user/a_new_folder") : 
  cannot change working directory
> help(rm)
starting httpd help server ... done
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> help(help)
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> ?rm
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> ?rm
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> rm(list = c("logi_f","logi_t"))
> lst()
Error: could not find function "lst"
> list()
list()
> ls()
[1] "compl" "int"   "num"  
> rm(list = ls())
> 
--------------------------------------------------------------------------------