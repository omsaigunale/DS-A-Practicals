# Load datasets
data(iris)
data(mtcars)

#1.Perform binning on Sepal.Length into categories: Short, Medium, Long
iris$Sepal_Length_Category <- cut(
  iris$Sepal.Length,
  breaks = c(-Inf, 5.5, 6.5, Inf),
  labels = c("Short", "Medium", "Long")
)
head(iris[, c("Sepal.Length", "Sepal_Length_Category")])

#2.Convert Species column into dummy variables (One-Hot Encoding)
iris_dummies <- cbind(iris, model.matrix(~ Species - 1, data = iris))
head(iris_dummies)

#3.Normalize the mpg column in mtcars dataset (Min-Max normalization)
mtcars$mpg_normalized <- (mtcars$mpg - min(mtcars$mpg)) / 
  (max(mtcars$mpg) - min(mtcars$mpg))
head(mtcars[, c("mpg", "mpg_normalized")])

#4.Standardize the Sepal.Width column in iris
iris$Sepal_Width_Standardized <- scale(iris$Sepal.Width)
head(iris[, c("Sepal.Width", "Sepal_Width_Standardized")])

#5.Create a new feature in mtcars: efficiency = mpg / hp
mtcars$efficiency <- mtcars$mpg / mtcars$hp
head(mtcars[, c("mpg", "hp", "efficiency")])
