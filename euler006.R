#The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 +...+ 10^2 = 385. 
#The square of the sum of the first ten natural numbers is, (1 + 2 +...+ 10)^2 = 3025. 
#Hence the absolute difference between the sum of the squares of the first ten natural numbers and 
#the square of the sum is 3025 - 385 = 2640.
#Find the absolute difference between the sum of the squares of the first  natural numbers and the square of the sum.

#Input Format
#First line contains 'T' that denotes the number of test cases. This is followed by  lines, each containing an integer, N.

#Constraints
# 1 <= T <= 10^4
# 1 <= N <= 10^4

#Output Format
#For each test case, display the required answer in each line.

setwd('S://DATA Science//R//HackerRank/')
getwd()

rm(list=ls())

take_input <- function(){
  t <- as.integer(readline())
  n <- NA
  if(t < 1 | t > 10){
    cat('T between 1 and 10 is permitted \n')
  }else{
    for(i in 1:t){
      n[i] <- as.integer(readline())
    }
  }
  return(n)
}

check_input <- function(vals){
  for(i in 1:length(vals))
  if(vals[i]<1 | vals[i] > 40){
    cat('N between 1 and 40 is permitted \n')
    return(FALSE)
  }else{
    return(TRUE) 
  }
}

print_SumofSqr_SqrofSums <- function(num) {
  print(sum(1:num)^2-sum((1:num)^2))
}

values <- take_input()
flag_val <- check_input(values)
if(flag_val){
  for(i in 1:length(values)){
    print_SumofSqr_SqrofSums(as.numeric(values[i]))
  }
}

