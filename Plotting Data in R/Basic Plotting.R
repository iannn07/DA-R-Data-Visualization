# There are several conjectures in Plotting
# Make sure whenever you creating the plot, you are on the root workspace
# png() ->  used to make .png file
# plot() -> used to create the plot
# Remember in plot, the only variable that will be printed is the y value
# Kindly check every parameter function

# Here's an simple example
png(filename = "Basic_Plotting.png")
plot(1:10, main = "Basic Plotting", xlab = "X-Axis", ylab = "Y-Axis", pch = 16)
dev.off()

# You can also print it without any files like this
plot(
  1:10,
  main = "Plotting No File",
  xlab = "X-Axis", ylab = "Y-Axis", col = "blue"
)

# Here's a tricky riddles
a <- c(2, 4)
b <- c(5, 2)
plot(main = "Riddles", a, b, xlab = "X-Axis", ylab = "Y-Axis", col = "blue")

# Here's another resource to learn about plotting by using car_details_example file
car_details <- read.csv2(
  "Car_Details_Example.csv"
)
png(filename = "Car_Details.png")
plot(
  main = "Car Details", x = car_details$PRICE,
  y = car_details$TAX, xlab = "PRICE", ylab = "TAX",
  col = "blue", pch = 16
)
dev.off()

# Line graph
# Don't forget to subset it first if you want to limit the rows
# We also can draw multiple line using lines()
# png(filename = "Car_Details.png", width = 800, height = 400)

# # Plot the TAX column
# plot(
#   x = 1:nrow(car_details), y = car_details$TAX, type = "l", col = "blue",
#   xlab = "Index", ylab = "Tax", main = "Car Details"
# )

# # Add the PRICE line to the plot
# lines(x = 1:nrow(car_details), y = car_details$PRICE, type = "l", col = "red")
# dev.off()

png(filename = "Multiple.png", width = 800, height = 400)

y1 <- c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
y2 <- c(3, 6, 9, 12, 15, 18, 21, 24, 27, 30)
y3 <- c(1, 3, 5, 7, 9, 11, 13, 15, 17, 19)

# Create a new plot with the first line
plot(
  x = c(1:10), y1, type = "l", col = "blue",
  ylim = c(0, 30), main = "Multiple Line Graph", xlab = "X", ylab = "Y"
)

# Add the second and third lines to the plot
lines(x = c(1:10), y2, col = "red")
lines(x = c(1:10), y3, col = "green")

# Add a legend to the plot
legend("topright",
  legend = c("Line 1", "Line 2", "Line 3"),
  col = c("blue", "red", "green"), lty = 1
)
dev.off()

x1 <- c(1, 10)
y1 <- c(1, 10)
x2 <- c(1, 10)
y2 <- c(10, 1)
plot(x2, y2, type = "l")
# lines(x2, y2, type="l")
