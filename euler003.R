#The prime factors of 13195 are 5,7,13 and 29.
#What is the largest prime factor of a given number N?

#Input Format
#First line contains 'T' that denotes the number of test cases. This is followed by  lines, each containing an integer, N.

#Constraints
# 1 <= T <= 10
# 10 <= N <= 10^12

#Output Format
#For each test case, display the largest prime factor of N.

setwd('S://DATA Science//R//HackerRank/')
getwd()

rm(list=ls())

take_input <- function(){
  t <- as.integer(readline())
  n <- NA
  if(t < 1 | t > 10^5){
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
  if(vals[i]<10 | vals[i] > 10^12){
    cat('N between 10 and 10^12 is permitted \n')
    return(FALSE)
  }else{
    return(TRUE) 
  }
}

print_largest_prime_factor <- function(num){
  j <- 1
  factors <- NA
  for(i in 2:num-1){
    if(num%%i == 0){
      factors[j] <- i
      j <- j + 1
    } 
  }
  if(length(factors)==1){
    cat(num,'\n')
  }else{
     cat(max(factors),'\n') 
  }
}  

values <- take_input()
flag_val <- check_input(values)
if(flag_val){
  for(i in 1:length(values)){
    print_largest_prime_factor(as.numeric(values[i]))  
  }
}
  


