######
# Homework 4: Trystan A. Bordeau
######

######
# First we must install the tidyverse
# package
######

library("tidyverse")

######
# Convert the file chris_names_wide.csv
# into an object
######

chris_names_wide <- read.csv("data/chris_names_wide.csv")

#####
# Convert our wide "wide" data into "long" data
# by using the "gather()" function on R
######

chris_names_long <- gather(chris_names_wide, Sex, Baby_Numbers, male:female)

######
# Now that the data is in "long" format, we can plot 
# this data using ggplot. We will use a basic line graph with 
# different colored lines representing different genders
######

ggplot(chris_names_long, aes (x=year, y=Baby_Numbers)) + geom_line(aes(colour=Sex))

######
# Now we will make the same line graph but with a different 
# textured line using geom_smooth
######

ggplot(chris_names_long, aes(x = year, y = Baby_Numbers)) + geom_smooth()

######
# Now we will use the chris_names_long data to make a simple 
# boxplot between the two genders 
######

ggplot(chris_names_long, aes(x=Sex, y=Baby_Numbers))+geom_boxplot()
