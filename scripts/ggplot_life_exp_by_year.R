library(ggplot2)

gapminder <- read.csv("data/gapminder_data.csv")

ggplot(data = gapminder,
       mapping = aes(x = year, 
                     y = lifeExp, 
                     group = country)) +
  geom_line(mapping = aes(color = continent)) + 
  geom_point()

my_plot <- ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color=continent)) +
  geom_point(alpha = 0.5, shape = "triangle") +
  scale_x_log10() +
  geom_smooth(method = "lm")

ggsave("results/my_plot.png", plot = my_plot,
       width = 12,
       height = 10,
       units = "cm",
       dpi = 300)
