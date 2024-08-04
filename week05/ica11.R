library(rstudioapi)
library(ggplot2)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

df <- read.csv("../data/flights.csv")

ggplot(df, aes(x = year, y = passengers, color = factor(month))) +
  geom_line() +
  labs(x = "Year", y = "Passengers", color = "Month") +
  theme_minimal() +
  ggtitle("Annual Passengers by Month, 1949-1960")

# resulting chart: ./ica11.png