library(ggplot2)

gapminder <- read.csv("data/gapminder_data.csv")

# make subset
americas <- gapminder[gapminder$continent == "Americas",]
# panel_plot <- 
ggplot(americas, mapping = aes(x = year, y = lifeExp, color = continent)) + 
  geom_line() + 
  facet_wrap( ~ country) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Life Expectancy by Year", x = "Year",
       y = "Life Expectancy", color = "Continent")

ggsave("results/panelplot.pdf", plot = panel_plot)
