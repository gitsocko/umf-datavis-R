df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)

library(dplyr)
df1
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))