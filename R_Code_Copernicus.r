# R code for uploading and visualizing coprinicus data in R

# install.packages(ncdf4)

# setwd("/Users/komaliftikhar/Desktop/lab/") # Mac

setwd("/Users/komaliftikhar/Desktop/lab/Copernicus/") #mac

snow20211214 <- raster("c_gls_SCE_202112140000_NHEMI_VIIRS_V1.0.1.nc")


snow20211214

plot(snow20211214)


cl <- colorRampPalette(c('yellow','orange','red'))(100) #

cl <- colorRampPalette(c("dark blue","blue","light blue"))(100)

plot(snow20211214, col=cl)

#install.packages("viridis")


library(ggplot2)


library(RStoolbox)

ggplot() +
geom_raster(snow20211214, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent))


ggplot() +
geom_raster(snow20211214, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent)) +
scale_fill_viridis()
#you can put what you want to ssee in brackets


ggplot() +
geom_raster(snow20211214, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent)) +
scale_fill_viridis(option="cividis") + ggtitle("cividis palette")

Day 2

ibrary(ncdf4)
library(raster)
library(RStoolbox)
library(viridis)
library(ggplot2)

setwd("/Users/komaliftikhar/Desktop/lab/Copernicus/") #mac

rlist <- list.files(pattern="SCE")
rlist


list_rast <- lapply(rlist, raster)
list_rast


snowstack <- stack(list_rast)
snowstack

snowstack <- stack(list_rast)
snowstack

ssummer <- snowstack$Snow.Cover.Extent.1
ssummer
swinter <- snowstack$Snow.Cover.Extent.2
swinter

#lets patchwork them together
p1 <- ggplot() + 
geom_raster(ssummer, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent.1)) +
scale_fill_viridis(option="viridis") +
ggtitle("Snow cover during my birthday!")
 


p2 <- ggplot() + 

geom_raster(swinter, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent.2)) +

scale_fill_viridis(option="viridis") +

ggtitle("Snow cover during freezing winter!") 

p1 / p2


# you can crop your image on a certain area

# crop the stack to the extent of Sicily
ext <- c(0, 20, 30, 50)
ssummer_cropped <- crop(ssummer, ext)
swinter_cropped <- crop(swinter, ext)

