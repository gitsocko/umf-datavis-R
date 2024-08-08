library(ggplot2)
library(tidyr)
library(dplyr)
library(lubridate)

load("../data/house_prices.rda")

# Q1a
ggplot(house_prices, aes(x = year(date), y = house_price_index)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(breaks = c(1980-01-01, 2000-01-01, 2020-01-01), labels = c("80", "00", "20")) +
  labs(title = "House Price by State",
       x = "Year",
       y = "Price")
# image: ./hw5Q1a.png

# Q1b
hr <- house_prices %>%
  gather(key = measure, value = value, -c(date, state))

# Q1c
ggplot(hr, aes(x = year(date), y = value, color = measure)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(breaks = c(1980-01-01, 2000-01-01, 2020-01-01), labels = c("80", "00", "20")) +
  labs(title = "House Price vs Unemployment",
       x = "Year",
       y = "Value") +
  scale_color_manual(values = c("house_price_index" = "#8fe388", "unemploy_perc" = "#fe8d6d"))
# image: ./hw5Q1c.png
# not informative, as the graphs indicate no clear correlation between house prices and unemployment

# Q2
house_prices %>%
  gather(key = measure, value = value, -c(house_price_index, date, state)) -> hr

ggplot(hr, aes(x = year(date), y = value, color = measure)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(breaks = c(1980-01-01, 2000-01-01, 2020-01-01), labels = c("80", "00", "20")) +
  labs(title = "House Price Pct vs Unemployment",
       x = "Year",
       y = "Value") +
  scale_color_manual(values = c("house_price_perc" = "#8fe388", "unemploy_perc" = "#fe8d6d"))
# image: ./hw5Q2.png
# replaced house price with house price pct; unemployment movement now easier to see, but correlation is not meaningful as price pct appears flat