# this is my first code in github! its very exciting.
# here are input data on streams.

# costanza data on streams
WATER <- c(100,200,300,400,500)
WATER
#marta data on fishes genomes
fishes <- c(10,50,60,100,200) 
fishes

# plot the diversity of fishes (y) versus the amount of water (x)
plot(WATER, fishes)

# the data we developed can be stored in a table
# a table in R is called data frame

streams <- data.frame(WATER, fishes)

streams

# From now on, we are going to import and/export data!

# setwed Mac
# setwed ("/Users/komaliftikhar/Desktop/lab")

# lets export our table!
# https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/write.table
write.table (streams, file= "my_first_table.txt")

# some collegues did send us a table! how to import it in R? 
read.table ("my_first_table.txt")
# lets assign it to an object inside R
ducciotable <- read.table ("my_first_table.txt")

# the first statistics for lazy beautiful people!
summary (ducciotable)

# marta does not like WATER
# marta wants to get info only on fishes
summary (ducciotable$fishes)

# histogram
hist (ducciotable$fishes)
hist (ducciotable$WATER)








