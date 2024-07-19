#1
df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)

library(dplyr)
df1
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))

#2
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wc <- read.csv("../data/WorldCupMatches.csv")
head(wc)

#2a
nrow(wc)
ncol(wc)

#2b
summary(wc)

#2c
length(unique(wc$City))

#2d
mean(wc$Attendance, na.rm = TRUE)

#2e
goal <- aggregate(wc$Home.Team.Goals, by=list(wc$Home.Team.Name), FUN=sum)
colnames(goal) <- c("HomeTeam", "TotalGoals")
print(head(goal))

#2f
attend <- aggregate(wc$Attendance, by=list(wc$Year), FUN=mean, na.rm = TRUE)
colnames(attend) <- c("Year", "AverageAttendance")
print(head(attend))

#3
mb <- read.csv("../data/metabolite.csv")
head(mb)

#3a
sum(mb$Label == "Alzheimer")

#3b
head(colSums(is.na(mb)))

#3c
head(mb1 <- mb[!is.na(mb$Dopamine),])

#3d
mb2 <- median(mb1$c4.OH.Pro, na.rm = TRUE)
mb1$c4.OH.Pro[is.na(mb1$c4.OH.Pro)] <- mb2
head(mb1)

#3e
mb3 <- colSums(is.na(mb1)) <= 0.25 * nrow(mb1)
head(mb1 <- mb1[, mb3])