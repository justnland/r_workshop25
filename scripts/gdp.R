library(ggplot2)

gapminder <- read.csv("data/gapminder_data.csv")
calcGDP <- function(  gapminder_data, country = NULL){
  if( !is.null(country) ) {
  
  gapminder_data <- gapminder_data [ gapminder$country == country ]
  }
  gdp <- gapminder$pop * gapminder$gdpPercap
  return(gdp)
}



library(dplyr)
year_country_gdp <- select(gapminder, year, country, gdpPercap)
year_ghana_gdp <- filter(year_country_gdp, country == "Ghana")


year_country_gdp_pipe <- 
  gapminder %>%
  select(year, country, gdpPercap) %>%
  filter(country == "Ghana")


year_continent_gdp_pipe <- 
  gapminder %>%
  filter(continent == "Asia") %>%
  select(year, country, gdpPercap)

gdp_by_continent <- gapminder %>%
  group_by(country) %>%
  summarize(mean_gdpPercap = mean(gdpPercap)) %>% View()

lifeExp_bycountry <- gapminder %>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))
lifeExp_bycountry %>%
  filter(mean_lifeExp == min(mean_lifeExp) | mean_lifeExp == max(mean_lifeExp))

gapminder %>% # Magritte pipe
  filter(year == 2002) %>% count(continent, sort = TRUE)

gapminder |> # R Studio pipe, but it requires different options
  filter(year == 2002) |> count(continent, sort = TRUE)

gapminder %>%
  group_by (continent) %>%
  summarize(se_le = sd(lifeExp)/sqrt(n()))

gapminder_gdp <- gapminder %>%
  mutate(gdp = pop * gdpPercap)
