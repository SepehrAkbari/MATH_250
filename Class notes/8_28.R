library(tidyverse)
library(modeldata)
View(penguins)

## Getting a histogram (of the bill_lengths)
ggplot(
  penguins,
  aes(x = bill_length_mm)
) +
  geom_histogram()

## Adding bins (default bin number is 30)
ggplot(
  penguins,
  aes(x = bill_length_mm)
) +
  geom_histogram(binwidth = 150)

## Adding Color (Shades Actually)
ggplot(
  penguins,
  aes(x = bill_length_mm)
) +
  geom_histogram(color = "lightblue") # Color means border color

## Adding Color
ggplot(
  penguins,
  aes(x = bill_length_mm)
) +
  geom_histogram(fill = "lightblue")

## Mix & Match...
ggplot(
  penguins,
  aes(x = bill_length_mm)
) +
  geom_histogram(fill = "lightblue",
                 color = "darkblue")

## To see all color names in R:
colors() # Can also use HEX

## To visualize by species
ggplot(
  penguins,
  aes(x = bill_length_mm,
      fill = species)
) +
  geom_histogram()

## Better labels
ggplot(
  penguins,
  aes(x = bill_length_mm)
) +
  geom_histogram() +
  labs(x = "Bill Length (mm)",
       y = "Count",
       title = "Antarctic Penguins",
       caption = "Gorman KB, Williams TD, Fraser WR (2014)")

## All the component functions have help files, accessible through "?x()"
?labs()

## Lets add the species aesthetic
ggplot(
  penguins,
  aes(x = bill_length_mm,
      fill = species)
) +
  geom_histogram() +
  labs(
    x = "Bill Length (mm)",
    y = "Count",
    fill = "Species", # accessible by whatever it was called in the aesthetics
    title = "Antarctic Penguins",
    caption = "Gorman KB, Williams TD, Fraser WR (2014)"
  )
