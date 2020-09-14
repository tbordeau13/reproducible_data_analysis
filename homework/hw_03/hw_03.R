######
# Load the tidyverse package 
######

install.packages("tidyverse")
library(tidyverse)

######
# Read in the .csv file and assign it to an object called med_enz
######

read.csv("med_enz.csv")
med_enz <- read.csv("med_enz.csv")

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

