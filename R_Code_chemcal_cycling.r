# R code for working chemical study
# time series of NO2 change in Europe during the lockdown
 

# Set the working directory
setwd("~/lab/en/") # Linux 
# setwd("C:/lab/en/")  # windows
# setwd("/Users/name/lab/en/") # mac
library(raster)
setwd("/Users/komaliftikhar/Desktop/lab/") # mac

EN01 <- raster("EN_0001.png")
EN01
cl <- colorRampPalette(c('red','orange','yellow'))(100) 

#PLOT NO2 values 

# day 2 importing all the data together.
library(raster)
setwd("/Users/komaliftikhar/Desktop/lab/EN")

rlist <- list.files(pattern="EN")
rlist

list_rast <- lapply(rlist, raster)
list_rast

# now applying the stack function to import all the images all together
EN_stack <- stack(list_rast)
EN_stack

cl <- colorRampPalette(c('red','orange','yellow'))(100)

#plot only single image now
plot(EN_stack$EN_0001, col=cl)

# difference
