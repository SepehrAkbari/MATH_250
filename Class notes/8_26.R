# This is a comment 
# Use command + enter to execute

data()

library(tidyverse)
library(modeldata)

glimpse(penguins) #overview
? penguins #help file

# Q: How are penguin flipper and bill lengths related?
# A: We make a scatter plot

# To make a scatter plot we need to specify:
# 1) the data set 
# 2) the variables & their locations(where the labels will go)
#     (x-axis,y-axis,size,color,shape,etc.)
# 3) the sort of plot (the geometry to use)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm,
                y = bill_length_mm)
  ) + 
  geom_point()

# add a smoother
ggplot(
  penguins,
  aes(x = flipper_length_mm,
                y = bill_length_mm)
  ) + 
  geom_point() + 
  geom_smooth()

# add a color
ggplot(
  penguins,
  aes(x = flipper_length_mm,
      y = bill_length_mm,
      color = species)
  ) + 
  geom_point() +
  geom_smooth()
  
