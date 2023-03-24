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
png(filename = "Car_Details.png", width = 800, height = 400)

# Plot the TAX column
plot(
  car_details$TAX, main = "Car Details", type = "l",
  ylab = "Tax", col = "blue", xlim = c(1, 10)
)

# Add the PRICE line to the plot
lines(
  car_details$PRICE, type = "l", col = "red"
)
dev.off()

# I couldn't figured it out why PRICE and TAX can't be combined
png(filename = "Car_Details_Debug.png")
# Plot the TAX column
plot(
  car_details$TAX, main = "Car Details", type = "l",
  ylab = "Tax", col = "blue", xlim = c(1, 10)
)
lines(
  car_details$ENGINE, type = "l", col = "red"
)
dev.off()

x1 <- c(1, 10)
y1 <- c(1, 10)
x2 <- c(1, 10)
y2 <- c(10, 1)
plot(x2, y2, type = "l")
# lines(x2, y2, type="l")