# exam practice
# here are the input data 

#data of streams
water <- c(100, 200, 300, 400, 500)

# Marta dat aon fishes geneome
fishes <- c(10, 50, 60, 100, 200)

fishes

water

# to see the no of fishes or water no 

#  now plot the diversity of fishes (y) versus the amount of water (x)

plot(water, fishes)

# after adding this function a graph is created.
# save the file by clicking commit changes.


streams <- data.frame(water, fishes)
streams

# now set working directory by adding this function

setwd("/users/komaliftikhar/desktop/Labb")

# lets export our table!

write.table(streams, file="my_first_table.txt")


# some collegues send us a file how can i import that table into r

# google the function
#go to the lab folder check the name of folder. copy the name go to r and paste. you will have your tabl. 


read.table("my_first_table.txt")


# lets assign it to an object inside R
komaltable <- read.table("my_first_table.txt")

komaltable
# you have the table 

# the first stats for lazy people. we are gonna do function for summary.
#google it


summary(komaltable)
# so you have the summary


#to calculate mean 
mean(c(22,23,25,26,27))

# if we want to change the mean with the other no like  with 47 just for an example
mean(c(22,23,25,26,47))
# we observe the increase in the mean but the median remains same.


# so if i want to see something. wantto get info only of fishes.how cani do it.
summary(komaltable$fishes)

# if we want to make histograms now
# histogram
hist(komaltable$fishes)
hist(komaltable$water)









