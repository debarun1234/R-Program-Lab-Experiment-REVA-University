#Lab 2 Debarun Ghosh
#Descriptive Statistics
# Part A
# Load necessary libraries
library(datasets)

# Load datasets
data(mtcars)
data(cars)

# Summary statistics using summary function
cat("Summary of mtcars dataset:\n")
summary(mtcars)
cat("\nSummary of cars dataset:\n")
summary(cars)

# Structure of the datasets using str function
cat("\nStructure of mtcars dataset:\n")
str(mtcars)
cat("\nStructure of cars dataset:\n")
str(cars)

# Quartiles using quantile function
cat("\nQuartiles of mtcars$mpg:\n")
print(quantile(mtcars$mpg, probs = c(0.25, 0.5, 0.75)))
cat("\nQuartiles of cars$speed:\n")
print(quantile(cars$speed, probs = c(0.25, 0.5, 0.75)))

# Part B
# Load the iris dataset
data(iris)

# Subsetting the dataset using subset function
setosa_subset <- subset(iris, Species == "setosa")
versicolor_subset <- subset(iris, Species == "versicolor")
virginica_subset <- subset(iris, Species == "virginica")

# Using the aggregate function to find mean Petal.Length for each Species
mean_petal_length <- aggregate(Petal.Length ~ Species, data = iris, FUN = mean)

cat("\nSubset of iris dataset - Setosa:\n")
print(setosa_subset)
cat("\nSubset of iris dataset - Versicolor:\n")
print(versicolor_subset)
cat("\nSubset of iris dataset - Virginica:\n")
print(virginica_subset)
cat("\nMean Petal.Length for each Species:\n")
print(mean_petal_length)
