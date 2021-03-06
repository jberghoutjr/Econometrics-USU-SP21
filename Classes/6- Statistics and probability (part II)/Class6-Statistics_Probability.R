
# Statistics and probability review
# Pedram Jahangiry 



library(wooldridge)
library(dplyr)




####################################################################

## Descriptive statistics

####################################################################


help(ceosal1)

head(ceosal1)

# sample average:
mean(ceosal1$salary, na.rm = TRUE)
# sample median:
median(ceosal1$salary, na.rm = TRUE)
#standard deviation:
sd(ceosal1$salary, na.rm = TRUE)
# summary information:
summary(ceosal1$salary)

# correlation with ROE:
cor(ceosal1$salary, ceosal1$roe)



####################################################################

## Statistical distributions

####################################################################

# remember our example: random variable= number of Tails when flipping a coin twice! 
# outcome    : HH, HT, TH, TT
# random var :  0   ,  1  ,  2
# PMF/PDF    :  0.25, 0.5 , 0.25
# CDF        :  0.25, 0.75, 1



dbinom(1,2,0.5) # probability of observing 1 tail (PDF)
dbinom(0,2,0.5) # probability of observing 0 tails (PDF)
pbinom(2,2,0.5) # probability of observing at most 2 tails (CDF)

# you can give a whole vector to dbinom. 
n <- 100 # n= number of draws
rv <- seq(0,n)  #  x= number of tails observed
fx<- dbinom(rv,n,0.5) # PDF
Fx<- pbinom(rv,n,0.5) # CDF



# CDF for continuous random variable
pnorm(0)
pnorm(1)
pnorm(1000000)



# finding P(|X|<2) when X is normally distributed. 
pnorm(2) - pnorm(-2) # remember! rules of thumbs! 


## Quantile functions: these are important for calculating critical values of test statistics
qnorm(0.5)  
qnorm(0.95)  # critical value for one tailed test when alpha=0.05
qnorm(0.975) # critival value for two tailed test when alpha=0.05



