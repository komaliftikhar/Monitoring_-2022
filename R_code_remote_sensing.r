# Rcode for ecosystem monitoring by remote sensing
# First of all, we need to install additional packages
# raster package to manage image data
# https://cran.r-project.org/web/packages/raster/index.html

install.packages("raster")

library(raster)

# setwd("/Users/name/lab/") # mac

# we are going to import satellite data
l2011 <- brick("p224r63_2011_masked.grd")
#objects canot be numbers

l2011

20 + 500 + 15
#then enter and have the calculation

plot(l2011)

# B1 is the reflectance in the blue band
# B1 is the reflectance in the green band
# B1 is the reflectance in the red band
#we can change the colors of the figure by changing the code
# copy pasted the code from virtuale to see the different color

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011, col=cl)

plotRGB(p224r63_2011, r=3, g=2, b=1, stretch="Lin")
# stretch means how far we want our data to be stretched so use this function
plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")
#the image we got is called landscape image.
