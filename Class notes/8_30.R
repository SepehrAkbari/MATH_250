library(tidyverse)
library(modeldata)

## bill length vs species
ggplot(
  penguins,
  aes(
    x = species,
    y = bill_length_mm
  )
) +
  geom_boxplot() +
  geom_point() # over-plotting is a problem

## lets try again
ggplot(
  penguins,
  aes(
    x = species,
    y = bill_length_mm
  )
) +
  geom_boxplot(outliers = FALSE) +
  geom_jitter(alpha = 0.3)

## adding color
ggplot(
  penguins,
  aes(
    x = species,
    y = bill_length_mm,
    color = species
  )
) +
  geom_boxplot(outliers = FALSE) +
  geom_jitter(alpha = 0.3) +
  scale_color_brewer(palette = 'Dark2')

## the bg is too much
ggplot(
  penguins,
  aes(
    x = species,
    y = bill_length_mm,
    color = species
  )
) +
  geom_boxplot(outliers = FALSE) +
  geom_jitter(alpha = 0.3) +
  scale_color_brewer(palette = 'Dark2') +
  theme_minimal()

## how about a bar chart for species
ggplot(
  penguins,
  aes(x = species)
) +
  geom_bar()

