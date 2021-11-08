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


setwd("/Users/komaliftikhar/Desktop/lab/") # mac
#to again enter the setwd typr this code.
#plot is afunction and a function is always in paraenteses.

#lets plot the green band. you shoud put exactly the name. co R is case sensitive.
plot(l2011$B2_sre)

#so the plot we get is not good so we are changing the colors of the scheme. what we are seeing 

colorRampPalette
cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011$B2_sre, col=cl)
 
#change the colorRamPalette color with 

clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)

#do the same for other colors
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)

#plot both 

par(mfrow=c(1,2))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)

dev.off()

# day three. 
library(raster)
setwd("/Users/komaliftikhar/Desktop/lab/") # mac
> 
> l2011 <- brick("p224r63_2011.grd")
> l2011
# plot the blue band using a blue colorRampPalette
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)
# multiframe
par(mfrow=c(1,2)) # the first number is the number of rows in the multiframe, while the second one is the mnumber of columns
# plot the blue and the green besides, with different colorRampPalette
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)
clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)

par(mfrow=c(2,1))
# the first number is the number of rows in the multiframe, while the second one is the mnumber of columns
# plot the blue and the green besides, with different colorRampPalette
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)

clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)
