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
