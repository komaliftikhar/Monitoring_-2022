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
