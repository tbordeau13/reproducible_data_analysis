######
# Input the vectors that are going to be classified
######

boolean_vector <- c(TRUE, FALSE, FALSE)
numeric_vector <- c(7, 8, 9)
numeric_vector2 <- c(7.5, 8.2, 9.4)
character_vector <- c("x", "y", "z")

######
# Initiate the class commands that are stated in the assignment 
######

class(boolean_vector)
class(numeric_vector)
class(numeric_vector2)
class(character_vector)

# When this code is ran it shows that boolean_vector, numeric_vector, numeric_vector2
# and character_vector are logical, numeric, numeric, and character classes. 

boolean_numeric_vector <- c(TRUE, 8, FALSE)
numeric_character_vector <- c(7, "x", 9)
class(boolean_numeric_vector)
class(numeric_character_vector)

# This result comes back as a numeric class for the boolean_numeric_vector and 
# a character class for the numeric_character_vector. This makes logical sense 
# considering that the boolean vector contains a number outside of 0 or 1 so 
# everything must be classified as a numeric class, and the numeric_character 
# is classified as a character class due to the variable that was inserted. 

######
# Load the tidyverse package 
######

library(tidyverse)

######
# Read in the .csv file and assign it to an object called med_enz
######

read.csv("med_enz.csv")
med_enz

######
# determine what class med_enz belongs to
######

class(med_enz)


######
# determine the structure of med_enz
######

str(med_enz)


######
# determine number of rows in med_enz
######

nrow(med_enz)


######
# get a "glimpse" of med_enz (first have dplyr package installed)
######

library(dplyr)
glimpse(med_enz)

######
# use the printed code to create a histogram of the data 
######

p <- ggplot(data = med_enz, aes(x = activity.nM.hr)) + 
  geom_histogram()
print(p)
ggsave(filename = "hw_03_plot.png", plot = p, height = 3, width = 4, units = "in", dpi = 300)

