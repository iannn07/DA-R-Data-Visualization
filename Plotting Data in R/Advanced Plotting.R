# Testing if there are any bugs in multiple line graph
a <- c(3, 2, 8, 9)
b <- c(7, 5)
c <- c(4, 8, 2, 10)
plot(a, type = "l", col = "red")
lines(b, type = "l", col = "blue")
lines(c, type = "l", col = "green")

# Boxplot
car_details <- read.csv2("Car_Details_Example.csv")
png(filename = "Boxplot of Price.png")

boxplot(car_details$PRICE)

dev.off()

# Histogram
png(filename = "Simple Histogram of Tax.png")

hist(car_details$TAX)

dev.off()

# Now we focused on statistical analysis using R
# Despite of the bug we got, you can debug it later