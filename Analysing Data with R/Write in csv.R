# We can write the data that we've filtered using write.csv()

# Here's an example of filtered data by taking syntax in Filtering Data.R

car_details_data <- read.csv2("Car_Details_Example.csv")
x <- car_details_data[
    car_details_data$ENGINESIZE < 2.0 & car_details_data$PRICE < 15000,
]

# Kindly reminder that subset can be contained multiple condition
# Each condition must be correlated each other rather than opposite
y <- subset(
    car_details_data, car_details_data$TAX == max(car_details_data$TAX) &
    car_details_data$PRICE > 15000
)
print(x)
print(y)
cat("\n")

engine_below_2 <- write.csv2(x, "Engine_Details_Below_2.csv")
car_max_tax <- write.csv2(y, "Maximum_Details_Tax.csv")

read_eb2 <- read.csv2("Engine_Details_Below_2.csv")
read_cmt <- read.csv2("Maximum_Details_Tax.csv")

print(read_eb2)
print(read_cmt)