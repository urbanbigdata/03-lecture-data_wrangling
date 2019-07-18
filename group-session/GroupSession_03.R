###############################################
#
# VSP Urban Big Data Lecture 3 Group Session
# 
# Written by Andy Hong
# Date: July 14, 2019
# 
###############################################


## Implementation of Exploratory visualtion using R Codes


###############################################
# Plug in the R script from Exploratory
###############################################


# Install and load ggplot package
install.packages("ggplot2")
library(ggplot2)

# Inspect data frame
head(df)

# Create a summary table grouped by year and crime type
# Function n() counts the total observations
# And draw an area plot

df %>% 
  group_by(YEAR, TYPE) %>%
  summarise(total=n()) %>%
  ggplot(aes(x = YEAR, y = total, fill = TYPE)) + geom_area()


# Create a summary table grouped by year and time of day
# And draw an area plot

df %>% 
  group_by(YEAR, time_of_day) %>%
  summarise(total=n()) %>%
  ggplot(aes(x = YEAR, y = total, fill = time_of_day)) + geom_area()

