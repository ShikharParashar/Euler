#By listing the first six prime numbers: 2,3,5,7,11 and 13, we can see that the 6th prime is 13. 
#What is the Nth prime number?

#Input Format
#First line contains 'T' that denotes the number of test cases. This is followed by  lines, each containing an integer, N.

#Constraints
# 1 <= T <= 10^3
# 1 <= N <= 10^4

#Output Format
#For each test case, display the required answer in each line.

setwd('S://DATA Science//R//HackerRank/')
getwd()


packages <- c('primes')
purrr::walk(packages, library, character.only = TRUE, warn.conflicts = FALSE)

rm(list=ls())

take_input <- function(){
  t <- as.integer(readline())
  n <- NA
  if(t < 1 | t > 10^3){
    cat('T between 1 and 10^3 is permitted \n')
  }else{
    for(i in 1:t){
      n[i] <- as.integer(readline())
    }
  }
  return(n)
}

check_input <- function(vals){
  for(i in 1:length(vals))
  if(vals[i]<1 | vals[i] > 10^4){
    cat('N between 1 and 10^4 is permitted \n')
    return(FALSE)
  }else{
    return(TRUE) 
  }
}

print_Nth_Prime_number <- function(x){
  prime_list <- generate_primes(max=x^2)
  print(prime_list[x])
}

values <- take_input()
flag_val <- check_input(values)
if(flag_val){
  for(i in 1:length(values)){
    print_Nth_Prime_number(as.numeric(values[i]))
  }
}

