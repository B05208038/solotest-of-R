> # Create the vector of 1:100
  > my_vector <- 1:100
>   
  > # Write your for loop here
  > for (i in my_vector) {
    if (i %% 6 == 0) {
      next
    }
    print(i)}
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 7
[1] 8
[1] 9
[1] 10
[1] 11
[1] 13
[1] 14
[1] 15
[1] 16
[1] 17
[1] 19
[1] 20
[1] 21
[1] 22
[1] 23
[1] 25
[1] 26
[1] 27
[1] 28
[1] 29
[1] 31
[1] 32
[1] 33
[1] 34
[1] 35
[1] 37
[1] 38
[1] 39
[1] 40
[1] 41
[1] 43
[1] 44
[1] 45
[1] 46
[1] 47
[1] 49
[1] 50
[1] 51
[1] 52
[1] 53
[1] 55
[1] 56
[1] 57
[1] 58
[1] 59
[1] 61
[1] 62
[1] 63
[1] 64
[1] 65
[1] 67
[1] 68
[1] 69
[1] 70
[1] 71
[1] 73
[1] 74
[1] 75
[1] 76
[1] 77
[1] 79
[1] 80
[1] 81
[1] 82
[1] 83
[1] 85
[1] 86
[1] 87
[1] 88
[1] 89
[1] 91
[1] 92
[1] 93
[1] 94
[1] 95
[1] 97
[1] 98
[1] 99
[1] 100
> 
#------------------------------------------------
> # Print built-in vector month.name
  > month.name
[1] "January"   "February"  "March"     "April"     "May"       "June"     
[7] "July"      "August"    "September" "October"   "November"  "December" 
> 
  > # Write a for loop with break statement to print out the first 9 months
  > for (i in month.name) {
    if (i == "October") {
      break
    }
    print(i)}
[1] "January"
[1] "February"
[1] "March"
[1] "April"
[1] "May"
[1] "June"
[1] "July"
[1] "August"
[1] "September"
> 