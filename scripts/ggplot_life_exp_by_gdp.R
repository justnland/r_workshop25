library(ggplot2)

gapminder <- read.csv("data/gapminder_data.csv")

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()
