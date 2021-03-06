# R code for estimating energy in ecosystems

library (raster)
setwd("/Users/komaliftikhar/Desktop/lab/") # mac

# importing the data
l1992 <- brick("defor1.jpeg") #image
l1992 
plotRGB(l1992, r=1, g=2, b=3, stretch="Lin")

#starting again to work 
library(raster)
library(rgdal)
setwd("/Users/komaliftikhar/Desktop/lab/") # mac

l1992 <- brick("defor1.") #image
l1992 

plotRGB(l1992, r=1, g=2, b=3, stretch="Lin")
# day 2
l2006 <- brick("defor2.jpg)
l2006

# plotting the reported image
plotRGB(l2006, r=1, g=2, b=3, stretch="Lin")
