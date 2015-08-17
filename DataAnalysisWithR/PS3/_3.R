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

#break the histogram by cut
#so I have to use facet here 

plot <- ggplot(data = diamonds, aes(x=price)) +
  geom_histogram(binwidth=100, fill="blue" , colour="darkgreen") +
  facet_wrap(~ cut) + ggtitle('Histogram of diamond prices by cut')
ggsave(plot,filename='_4.png')
plot


# explore the price of diamons using boxplots, 
# numerical summaries, and one of the following categorical
# variables: cut, clarity, or color.

plot <- ggplot(data= diamonds , aes(x=color, y = price) ) + 
  geom_boxplot() +  
  scale_y_continuous(breaks = seq(0,10000,500))+
  coord_cartesian(ylim=c(0,8500))  +
  ggtitle("Summary of diamonds price by color")
ggsave(filename="colorByPrice.jpg",plot)

by(diamonds$price,diamonds$color,summary)

# Investigate the price per carat of diamonds across
# the different colors of diamonds using boxplots.

# Go to the discussions to
# share your thoughts and to discover
# what other people found.

# You can save images by using the ggsave() command.
# ggsave() will save the last plot created.
# For example...
#                  qplot(x = price, data = diamonds)
#                  ggsave('priceHistogram.png')

# ggsave currently recognises the extensions eps/ps, tex (pictex),
# pdf, jpeg, tiff, png, bmp, svg and wmf (windows only).

# Copy and paste all of the code that you used for
# your investigation, and submit it when you are ready.

# SUBMIT YOUR CODE BELOW THIS LINE
# ===================================================================


plot <- ggplot(data= diamonds , aes(x=color, y = price/carat) ) + 
  geom_boxplot() +  
  scale_y_continuous(breaks = seq(0,10000,500))+
  coord_cartesian(ylim=c(0,8500))  +
  ggtitle("Summary of diamonds price Per Carat by color")
ggsave(filename="colorByPricePerCarat.jpg",plot)

diamonds$pricePerCarat <- diamonds$price/diamonds$carat

by(diamonds$pricePerCarat,diamonds$color,summary)

#Investigate the weight of diamonds using a freqpolygon
#what carat size has a count > 2000
summary(diamonds$carat)
ggplot(data = diamonds, aes(x=carat), colour="blue" ) +
  geom_freqpoly(binwidth=0.01) + 
  scale_x_continuous(breaks=seq(1,1.10,0.01), limits=c(1,1.1))+
  scale_y_continuous(breaks=seq(0,6000,500))

 nrow(subset(diamonds,carat==0.1))

 nrow(subset(diamonds,carat==0.3))

 nrow(subset(diamonds,carat==0.8))

 nrow(subset(diamonds,carat==1.01))

 nrow(subset(diamonds,carat==1.6))

 nrow(subset(diamonds,carat==2.0))

 nrow(subset(diamonds,carat==3.0))

 nrow(subset(diamonds,carat==5.0))



# The Gapminder website contains over 500 data sets with information about
# the world's population. Your task is to download a data set of your choice
# and create 2-5 plots that make use of the techniques from Lesson 3.

# You might use a simple histogram, a boxplot split over a categorical variable,
# or a frequency polygon. The choice is yours!

# You can find a link to the Gapminder website in the Instructor Notes.

# Once you've completed your investigation, create a post in the discussions that includes:
#       1. any questions you answered, your observations, and summary statistics
#       2. snippets of code that created the plots
#       3. links to the images of your plots

# You can save images by using the ggsave() command.
# ggsave() will save the last plot created.
# For example...
#                  qplot(x = price, data = diamonds)
#                  ggsave('priceHistogram.png')

# ggsave currently recognises the extensions eps/ps, tex (pictex),
# pdf, jpeg, tiff, png, bmp, svg and wmf (windows only).

# Copy and paste all of the code that you used for
# your investigation, and submit it when you are ready.
# ====================================================================================