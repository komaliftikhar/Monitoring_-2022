# R code for uploading and visualizing coprinicus data in R

# install.packages(ncdf4)

# setwd("/Users/name/Desktop/lab/") # Mac

setwd("/Users/komaliftikhar/Desktop/lab/Copernicus/") #mac

snow20211214 <- raster("c_gls_SCE_202112140000_NHEMI_VIIRS_V1.0.1.nc")

snow20211214
