getwd()
setwd("D:\\Venura\\OneDrive\\Desktop\\IT24100210")
##1. 
## x is a binomial distribution with n = 50 and p = 0.85

#probability that at least 47 students passed 
1 - pbinom(46, 50, 0.85)

#part2

# X is the number of customers calls per one hour

# x is poisson distribution with, lamda = 12

dpois(15, 12)

