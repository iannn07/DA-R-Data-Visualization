# There are several conjectures in Plotting
# Make sure whenever you creating the plot, you are on the root workspace
# png() ->  used to make .png file
# plot() -> used to create the plot
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

# Here's another resource to learn about plotting by using mtcars package
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
