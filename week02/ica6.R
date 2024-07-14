library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

cat("\n1. Use colnames and rownames functions to show the column and row names\n")
df <- read.csv("../data/titanic.csv")

cat("\n2. Use the summary function to get a statistical summary of your data frame\n")
summary(df)

cat("\n3. Assign the rows that don't have NA value for the Age column from df to df2\n")
df2 <- df[!is.na(df$Age),]
head(df2)

cat("\n4. Assign those rows which have Survived passengers under the age of 30 to another data frame called younger\n")
younger <- df2[df2$Survived == 1 & df2$Age < 30,]
head(younger)

cat("\n5. Assign those rows which have Survived passengers at the age of 30 and above to another data frame called older
\n")
older <- df2[df2$Survived == 1 & df2$Age >= 30,]
head(older)