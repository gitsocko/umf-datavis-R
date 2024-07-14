data(mtcars)
mtcars

cat("\n1. Use colnames and rownames functions to show the column and row names\n\n")
cat("sCol:", paste(colnames(mtcars), collapse = "; "), "\n")
cat("sRow:\n",paste(rownames(mtcars), collapse = "; "), "\n")

cat("\n2. Use mean and sd functions in R to calculate the average and standard deviation for mpg, and cyl columns\n\n")
cat("mpgAvg: ", mean(mtcars$mpg), "\n")
cat("mpgSdv: ", sd(mtcars$mpg), "\n")
cat("cylAvg: ", mean(mtcars$cyl), "\n")
cat("cylSdv: ", sd(mtcars$cyl), "\n")

cat("\n3. Use colMeans function on mtcars to see the average values for all columns\n\n")
cat("allAvg: ", colMeans(mtcars), "\n")

cat("\n4. Show the cyl value for Mazda RX4 by using row and column names in your data frame\n\n")
cat("cylRx4: ", mtcars["Mazda RX4", "cyl"], "\n")