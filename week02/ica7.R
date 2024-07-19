library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

boxoffice <- read.csv("../data/boxoffice.csv")
head(boxoffice)
swAmt <- boxoffice[boxoffice$title == 'Star Wars: The Last Jedi', 'amount']
swAmt