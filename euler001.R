#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3,5,6 and 9. 
#The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below N.

#Input Format
#First line contains 'T' that denotes the number of test cases. This is followed by  lines, each containing an integer, N.

#Constraints
# 1 <= T <= 10^5
# 1 <= N <= 10^9

#Output Format
#For each test case, print an integer that denotes the sum of all the multiples of 3 or 5 below N.

setwd('S://DATA Science//R//HackerRank/')
getwd()

rm(list=ls())

take_input <- function(){
  t <- as.integer(readline())
  n <- NA
  if(t < 1 | t > 10^5){
    cat('T between 1 and 10^5 is permitted \n')
  }else{
    for(i in 1:t){
      n[i] <- as.integer(readline())
    }
  }
  return(n)
}

check_input <- function(vals){
  for(i in 1:length(vals))
  if(vals[i]<1 | vals[i] > 10^9){
    cat('N between 1 and 10^9 is permitted \n')
    return(FALSE)
  }else{
    return(TRUE) 
  }
}

print_output <- function(num){
  result <- 0
  for(i in 1:num-1){
    if(i%%3 == 0 | i%%5 == 0){
      result <- result + i
    }
  }
  cat(result,'\n')
}


values <- take_input()
flag_val <- check_input(values)
if(flag_val){
  for(i in 1:length(values)){
    print_output(as.numeric(values[i]))  
  }
}



