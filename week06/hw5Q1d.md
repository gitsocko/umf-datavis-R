---
title: "HW5"
author: "Dowling"
date: "2024-08-07"
output:
  html_document:
    keep_md: true
---


``` r
setwd("./")
knitr::opts_chunk$set(echo = FALSE, warning = FALSE, message = FALSE,results='hide',fig.keep='all')

library(ggplot2)
library(tidyr)
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

``` r
library(lubridate)
```

```
## 
## Attaching package: 'lubridate'
```

```
## The following objects are masked from 'package:base':
## 
##     date, intersect, setdiff, union
```

``` r
load("../data/house_prices.rda")

# Q1a
ggplot(house_prices, aes(x = year(date), y = house_price_index)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(breaks = c(1980, 2000, 2020), labels = c("80", "00", "20")) +
  labs(title = "House Price by State",
       x = "Year",
       y = "Price")
```

![](hw5Q1d_files/figure-html/setup-1.png)<!-- -->

``` r
# image: ./hw5Q1a.png

# Q1b
hr <- house_prices %>%
  gather(key = measure, value = value, -c(date, state))

# Q1c
ggplot(hr, aes(x = year(date), y = value, color = measure)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(breaks = c(1980, 2000, 2020), labels = c("80", "00", "20")) +
  labs(title = "House Price vs Unemployment",
       x = "Year",
       y = "Value") +
  scale_color_manual(values = c("house_price_index" = "#8fe388", "unemploy_perc" = "#fe8d6d"))
```

![](hw5Q1d_files/figure-html/setup-2.png)<!-- -->

``` r
# image: ./hw5Q1c.png
# not informative, as the graphs indicate no clear correlation between house prices and unemployment
```
