# Now we dealing with files, we can read csv using read.csv()
# Note that I preferely use read.csv2 since its designed to read ";" which are suits for my format region
# Other note of importing data is you need to specify the full path of it

car_details_data <- read.csv2("Car_Details_Example.csv")
print(car_details_data)
cat(("/n/n"))
print(summary(car_details_data))
cat("/n")

# Basic statistical use in R var as variance and sd as Standard Deviation
print(var(car_details_data$TAX))
print(sd(car_details_data$TAX))

# Basic operations in files
print(sum(car_details_data$TAX))

mean_details <- mean(car_details_data$TAX)
print(car_details_data[car_details_data$TAX < mean_details, ])
cat("/n")

# We can use this syntax to take a column and multiple column
print(car_details_data[car_details_data$TAX < mean_details, 'ENGINESIZE', drop(FALSE)])
cat("/n")
print(car_details_data[car_details_data$TAX < mean_details, c('MODEL', 'ENGINESIZE'), drop(FALSE)])
cat("/n")

# We can also manipulate it by 2 column at one time like this
# Find the type of engine size with the tax < mean_details (88)
print(factor(car_details_data[car_details_data$TAX < mean_details, ]$ENGINESIZE))