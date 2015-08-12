library(ggplot2)
head(diamonds)

str(diamonds)

#get summary of price
summary(diamonds$price)

#plot price data 
qplot(price, data=diamonds)


##############################
######Answer to P3
# The shape of the price is long tailed and skewed on one side.
# The number of diamonds are  decreasing with increasing in price. 
# The mean diamond price is 3933$ and the median price is 2401$  
##############################