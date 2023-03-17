# Fun Fact, we don't need to import car_details_data since it has been declared in other file
# Filtering Data
# Example, we want to find the car with less than 2.0 litres with the price is < 15000
x <- car_details_data[car_details_data$ENGINESIZE < 2.0 & car_details_data$PRICE < 15000, ]
print(x)

# Let's find the average of its tax!
x <- car_details_data[car_details_data$ENGINESIZE < 2.0 & car_details_data$PRICE < 15000, 'TAX', drop(FALSE)]
print(x)
# We can also add a new parameter such as drop in data frame for converting a col to a row

# Correlation Matrix
# First of all, we need to subset it first then we can calculate the correlation of the data
subset_data <- car_details_data[car_details_data$PRICE != 0 & car_details_data$TAX != 0, ]
correlation <- cor(subset_data[, c("PRICE", "TAX")])
print(round(correlation, 2))
cat("\n")

# Basic Statistic -> Re-learn about Linear Regression
# Training set for SD from Mean
x <- mean(mtcars$mpg)
y <- sd(mtcars$mpg)

low <- x - y
high <- x + y

range <- subset(mtcars, mtcars$mpg >= low & mtcars$mpg <= high, 'mpg')
print(length(range$mpg))
cat("\n")

# Grouping by()
# Below is the syntax for group that evey data with TAX x will have average price y
print(by(car_details_data$PRICE, car_details_data$TAX, mean))

# Grouping tapply()
print(tapply(car_details_data$PRICE, car_details_data$TAX, mean))
cat("\n")

# The main difference is that tapply returns a matrix, while by returns an object, which can be converted to a list
# by() is actually a wrapper on tapply()

# Here's an example of filtering data then grouping it
filtered <- car_details_data[car_details_data$TAX < 200, ]
print(tapply(filtered$PRICE, filtered$ENGINESIZE, mean))

# It's similar to this
mean_filtered <- mean(car_details_data$PRICE[car_details_data$ENGINESIZE == 1.4 & car_details_data$TAX < 200])
print(mean_filtered)