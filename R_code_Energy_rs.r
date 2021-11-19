# R code for estimating energy in ecosystems

library (raster)
setwd("/Users/komaliftikhar/Desktop/lab/") # mac

# importing the data
l1992 <- brick("defor1.jpeg") #image
l1992 
plotRGB(l1992, r=1, g=2, b=3, stretch="Lin")

