library(ggplot2)
head(diamonds)

str(diamonds)

#get summary of price
summary(diamonds$price)

#plot price data 
qplot(price, data=diamonds)
mean(diamonds$price)

##############################
######Answer to P3
# The shape of the price is long tailed and skewed on one side.
# The number of diamonds are  decreasing with increasing in price. 
# The mean diamond price is 3933$ and the median price is 2401$  
##############################

##############################
######Answer to Q4
#Diamonds less than $500
nrow(subset(diamonds,price<500))

#Diamonds less than $250
nrow(subset(diamonds,price<250))

#Diamonds less than $15000
nrow(subset(diamonds,price>=15000))
##############################

#Explore the peak price point
plot <- ggplot(data = diamonds, aes(x=price, color="price")) +
  geom_histogram(binwidth=5) +
  scale_x_continuous(limits = c(500,750), breaks =c(500,600,700,750))
ggsave(plot,filename = 'PS3.png')
