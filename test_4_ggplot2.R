#OP package
> install.packages("ggplot2")
Installing package into ‘C:/Users/user/Documents/R/win-library/3.2’
(as ‘lib’ is unspecified)
also installing the dependencies ‘stringi’, ‘magrittr’, ‘colorspace’, ‘Rcpp’, ‘stringr’, ‘RColorBrewer’, ‘dichromat’, ‘munsell’, ‘labeling’, ‘assertthat’, ‘digest’, ‘gtable’, ‘plyr’, ‘reshape2’, ‘scales’, ‘tibble’, ‘lazyeval’

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/stringi_1.1.2.zip'
Content type 'application/zip' length 14235103 bytes (13.6 MB)
downloaded 13.6 MB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/magrittr_1.5.zip'
Content type 'application/zip' length 149963 bytes (146 KB)
downloaded 146 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/colorspace_1.3-2.zip'
Content type 'application/zip' length 439603 bytes (429 KB)
downloaded 429 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/Rcpp_0.12.9.zip'
Content type 'application/zip' length 3192698 bytes (3.0 MB)
downloaded 3.0 MB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/stringr_1.1.0.zip'
Content type 'application/zip' length 119734 bytes (116 KB)
downloaded 116 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/RColorBrewer_1.1-2.zip'
Content type 'application/zip' length 26728 bytes (26 KB)
downloaded 26 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/dichromat_2.0-0.zip'
Content type 'application/zip' length 147776 bytes (144 KB)
downloaded 144 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/munsell_0.4.3.zip'
Content type 'application/zip' length 133961 bytes (130 KB)
downloaded 130 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/labeling_0.3.zip'
Content type 'application/zip' length 40848 bytes (39 KB)
downloaded 39 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/assertthat_0.1.zip'
Content type 'application/zip' length 44966 bytes (43 KB)
downloaded 43 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/digest_0.6.11.zip'
Content type 'application/zip' length 170804 bytes (166 KB)
downloaded 166 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/gtable_0.2.0.zip'
Content type 'application/zip' length 57785 bytes (56 KB)
downloaded 56 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/plyr_1.8.4.zip'
Content type 'application/zip' length 1120842 bytes (1.1 MB)
downloaded 1.1 MB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/reshape2_1.4.2.zip'
Content type 'application/zip' length 506789 bytes (494 KB)
downloaded 494 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/scales_0.4.1.zip'
Content type 'application/zip' length 609825 bytes (595 KB)
downloaded 595 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/tibble_1.2.zip'
Content type 'application/zip' length 560105 bytes (546 KB)
downloaded 546 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/lazyeval_0.2.0.zip'
Content type 'application/zip' length 138317 bytes (135 KB)
downloaded 135 KB

trying URL 'http://cran.rstudio.com/bin/windows/contrib/3.2/ggplot2_2.2.1.zip'
Content type 'application/zip' length 2760774 bytes (2.6 MB)
downloaded 2.6 MB

package ‘stringi’ successfully unpacked and MD5 sums checked
package ‘magrittr’ successfully unpacked and MD5 sums checked
package ‘colorspace’ successfully unpacked and MD5 sums checked
package ‘Rcpp’ successfully unpacked and MD5 sums checked
package ‘stringr’ successfully unpacked and MD5 sums checked
package ‘RColorBrewer’ successfully unpacked and MD5 sums checked
package ‘dichromat’ successfully unpacked and MD5 sums checked
package ‘munsell’ successfully unpacked and MD5 sums checked
package ‘labeling’ successfully unpacked and MD5 sums checked
package ‘assertthat’ successfully unpacked and MD5 sums checked
package ‘digest’ successfully unpacked and MD5 sums checked
package ‘gtable’ successfully unpacked and MD5 sums checked
package ‘plyr’ successfully unpacked and MD5 sums checked
package ‘reshape2’ successfully unpacked and MD5 sums checked
package ‘scales’ successfully unpacked and MD5 sums checked
package ‘tibble’ successfully unpacked and MD5 sums checked
package ‘lazyeval’ successfully unpacked and MD5 sums checked
package ‘ggplot2’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\user\AppData\Local\Temp\RtmpQLpJQL\downloaded_packages
> library(ggplot2)
Warning message:
  package ‘ggplot2’ was built under R version 3.2.5 
> data()
#寫法1
> ggplot(cars, aes(x = speed, y = dist)) + #寫畫布
  +     geom_point()
> 
#寫法2
  ggplot(cars, aes(x = speed, y = dist)) +
  geom_point() +
  ggtitle("Car speed vs. braking distance") +
  xlab("Speed") + 
  ylab("Dist")


ggplot(cars, aes(x = speed, y = dist)) +
  +     geom_point() +
  +     ggtitle("Car speed vs. braking distance") +
  +     xlab("Speed") + 
  +     ylab("Dist")+
  +     geom_smooth()
`geom_smooth()` using method = 'loess'
> 
  ggplot(cars, aes(x = speed, y = dist)) +
  geom_point() +
  ggtitle("Car speed vs. braking distance") +
  xlab("Speed") +
  ylab("Dist") +
  geom_smooth(method = "lm")


#取消陰影
ggplot(cars, aes(x = speed, y = dist)) +
  +     geom_point() +
  +     ggtitle("Car speed vs. braking distance") +
  +     xlab("Speed") +
  +     ylab("Dist") +
  +     geom_smooth(method = "lm", se = FALSE)
#只畫line
ggplot(cars, aes(x = speed, y = dist)) +
  +     geom_line()
#條顏色
ggplot(cars, aes(x = speed, y = dist)) +
       geom_line(color="red")

#ggplot() + geom_line() 繪製線圖
ggplot(cars, aes(x = speed, y = dist)) + 
  geom_point() +
  geom_line()

ggplot(economics, aes(x = date, y = unemploy)) + 
        geom_line()+
        geom_point()

#ggplot() + geom_histogram() 繪製直方圖
ggplot(cars, aes(x = speed)) +
     geom_histogram(binwidth = 0.6)


#透過 facet_wrap() 納入類別變數的展開
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram() +
  facet_wrap(~ Species)


#ggplot() + geom_boxplot() 繪製盒鬚圖
ggplot(iris, aes(x = 1, y = Sepal.Length)) +
  geom_boxplot()

#aes() 指定 x = 納入類別變數的展開
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot()

##X不可為空!

#ggplot() + geom_bar() 繪製長條圖
ggplot(mtcars, aes(gear)) + 
  geom_bar()

#state 需要設數值
ggplot(mtcars, aes(x = row.names(mtcars), y = hp)) +
  geom_bar(stat = "identity") + coord_flip()#翻轉

#geom_bar(aes(fill = drv)) 納入類別變數的顏色(drv--隨意圖色)
str(mpg)
ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv))


The downloaded binary packages are in
C:\Users\user\AppData\Local\Temp\RtmpQLpJQL\downloaded_packages
> library(plotly)

Attaching package: ‘plotly’

The following object is masked from ‘package:ggplot2’:
  
  last_plot

The following object is masked from ‘package:stats’:
  
  filter

The following object is masked from ‘package:graphics’:
  
  layout

Warning message:
  package ‘plotly’ was built under R version 3.2.5 
> static_gg <- ggplot(mpg, aes(x = class)) +
  +     geom_bar(aes(fill = drv))
> ggplotly(static_gg)
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> library(plotly)
> static_gg <- ggplot(mpg, aes(x = class)) +
  +     geom_bar(aes(fill = drv))
> ggplotly(static_gg)
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> ggplot(mpg, aes(x = class)) +
  +     geom_bar(aes(fill = drv), position = "fill") +
  +     ylab("Percentage")
> str(mpg)
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	234 obs. of  11 variables:
  $ manufacturer: chr  "audi" "audi" "audi" "audi" ...
$ model       : chr  "a4" "a4" "a4" "a4" ...
$ displ       : num  1.8 1.8 2 2 2.8 2.8 3.1 1.8 1.8 2 ...
$ year        : int  1999 1999 2008 2008 1999 1999 2008 1999 1999 2008 ...
$ cyl         : int  4 4 4 4 6 6 6 4 4 4 ...
$ trans       : chr  "auto(l5)" "manual(m5)" "manual(m6)" "auto(av)" ...
$ drv         : chr  "f" "f" "f" "f" ...
$ cty         : int  18 21 20 21 16 18 18 18 16 20 ...
$ hwy         : int  29 29 31 30 26 26 27 26 25 28 ...
$ fl          : chr  "p" "p" "p" "p" ...
$ class       : chr  "compact" "compact" "compact" "compact" ...
> ggplot(mpg, aes(x = class)) +
  +     geom_bar(aes(fill = drv))
> str(mpg)
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	234 obs. of  11 variables:
  $ manufacturer: chr  "audi" "audi" "audi" "audi" ...
$ model       : chr  "a4" "a4" "a4" "a4" ...
$ displ       : num  1.8 1.8 2 2 2.8 2.8 3.1 1.8 1.8 2 ...
$ year        : int  1999 1999 2008 2008 1999 1999 2008 1999 1999 2008 ...
$ cyl         : int  4 4 4 4 6 6 6 4 4 4 ...
$ trans       : chr  "auto(l5)" "manual(m5)" "manual(m6)" "auto(av)" ...
$ drv         : chr  "f" "f" "f" "f" ...
$ cty         : int  18 21 20 21 16 18 18 18 16 20 ...
$ hwy         : int  29 29 31 30 26 26 27 26 25 28 ...
$ fl          : chr  "p" "p" "p" "p" ...
$ class       : chr  "compact" "compact" "compact" "compact" ...
> ggplot(mpg, aes(x = class)) +
  +     geom_bar()
> str(mpg)
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	234 obs. of  11 variables:
  $ manufacturer: chr  "audi" "audi" "audi" "audi" ...
$ model       : chr  "a4" "a4" "a4" "a4" ...
$ displ       : num  1.8 1.8 2 2 2.8 2.8 3.1 1.8 1.8 2 ...
$ year        : int  1999 1999 2008 2008 1999 1999 2008 1999 1999 2008 ...
$ cyl         : int  4 4 4 4 6 6 6 4 4 4 ...
$ trans       : chr  "auto(l5)" "manual(m5)" "manual(m6)" "auto(av)" ...
$ drv         : chr  "f" "f" "f" "f" ...
$ cty         : int  18 21 20 21 16 18 18 18 16 20 ...
$ hwy         : int  29 29 31 30 26 26 27 26 25 28 ...
$ fl          : chr  "p" "p" "p" "p" ...
$ class       : chr  "compact" "compact" "compact" "compact" ...
> ggplot(mpg, aes(x = class)) +
  +     geom_bar(aes(fill = drv))
> ggplot(mtcars, aes(x = row.names(mtcars), y = hp)) +
  +     geom_bar(stat = "identity") + coord_flip()
> library(plotly)
> static_gg <- ggplot(mpg, aes(x = class)) +
  +     geom_bar(aes(fill = drv))
> ggplotly(static_gg)
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'
> library(plotly)
> ggplotly(static_gg)
Error in as.character(tools:::httpdPort) : 
  cannot coerce type 'closure' to vector of type 'character'