#A palindromic number reads the same both ways. The smallest 6 digit palindrome made from the product of 
#two 3-digit numbers is 101101 = 143 * 707. 
#Find the largest palindrome made from the product of two 3-digit numbers which is less than N.


#Input Format
#First line contains 'T' that denotes the number of test cases. This is followed by  lines, each containing an integer, N.

#Constraints
# 1 <= T <= 100
# 101101 < N < 1000000

#Output Format
#For each test case, display the required answer in each line.

setwd('S://DATA Science//R//HackerRank/')
getwd()

rm(list=ls())

take_input <- function(){
  t <- as.integer(readline())
  n <- NA
  if(t < 1 | t > 100){
    cat('T between 1 and 100 is permitted \n')
  }else{
    for(i in 1:t){
      n[i] <- as.integer(readline())
    }
  }
  return(n)
}

check_input <- function(vals){
  for(i in 1:length(vals))
  if(vals[i]<101101 | vals[i] > 10^6){
    cat('N between 1001101 and 10^6 is permitted \n')
    return(FALSE)
  }else{
    return(TRUE) 
  }
}

is_pal <- function(num_char){
  pal <- FALSE
  fwd <- unlist(strsplit(num_char,split=''))
  reverse <- rev(fwd)
  if(all(fwd == reverse)){
    pal <- TRUE
  }
  return(pal)
}  

print_smallest_6dig_pal <- function(num){
  max <- 0
  for(i in 100:999){
    for(j in 100:999){
      if(is_pal(as.character(i*j)) & i*j > max & i*j < num){
        max <- i*j
      }
    }
  }
  print(max)
}

values <- take_input()
flag_val <- check_input(values)
if(flag_val){
  for(i in 1:length(values)){
    print_smallest_6dig_pal(as.numeric(values[i]))  
  }
}
  


