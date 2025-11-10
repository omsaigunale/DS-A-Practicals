# Load required libraries
library(ggplot2)

# Load built-in datasets
data(mtcars)
data(iris)
data(airquality)

#1.Create a histogram of mpg from mtcars
hist(mtcars$mpg,
     main = "Histogram of MPG (mtcars)",
     xlab = "Miles per Gallon (mpg)",
     col = "skyblue",
     border = "white")

#2.Generate a scatterplot of hp vs wt from mtcars
plot(mtcars$wt, mtcars$hp,
     main = "Scatterplot of HP vs Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Horsepower",
     pch = 19, col = "darkorange")

#3.Draw a boxplot of Ozone values from airquality
boxplot(airquality$Ozone,
        main = "Boxplot of Ozone (airquality)",
        ylab = "Ozone (ppb)",
        col = "lightgreen")

#4.Find the correlation between Sepal.Length and Sepal.Width in iris
correlation <- cor(iris$Sepal.Length, iris$Sepal.Width)
print(paste("Correlation between Sepal.Length and Sepal.Width:", round(correlation, 3)))

#5.Create a pair plot of the first four columns of mtcars
pairs(mtcars[, 1:4],
      main = "Pair Plot of First Four Columns (mtcars)",
      pch = 19, col = "dodgerblue")
