#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. 
#What is the smallest positive number that is evenly divisible(divisible with no remainder) by all of the numbers from 1 to N?

#Input Format
#First line contains 'T' that denotes the number of test cases. This is followed by  lines, each containing an integer, N.

#Constraints
# 1 <= T <= 10
# 1 <= N <= 40

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

print_smallest_num_div_all <- function(num) {
  smallest_num <- 1
  for (i in 1:num) {
    remainder <- (smallest_num %% i)
    if (remainder != 0) {
      if (i %% remainder == 0) {
        smallest_num <- smallest_num * i / remainder
      }
      else {
        smallest_num <- smallest_num * i
      }
    }
  }
  print(smallest_num)
}

values <- take_input()
flag_val <- check_input(values)
if(flag_val){
  for(i in 1:length(values)){
    print_smallest_num_div_all(as.numeric(values[i]))  
  }
}
  


