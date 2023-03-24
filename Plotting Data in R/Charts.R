# Bar Chart
# Basically it's same with plotting in Basic Plotting.R

car_details <- read.csv2('Car_Details_Example.csv')

png(filename = "Basic_Bar_CD_Tax.png", width = 800, height = 400)
barplot(car_details$TAX, main = "TAX", xlab = "Index",
names.arg = car_details$MODEL)
dev.off()

# We can transpose the bar to be horizontal view like this
png(filename = "Basic_Bar_CD_Tax_Horiz.png", width = 800, height = 800)
barplot(car_details$TAX, main = "TAX", xlab = "Index",
names.arg = car_details$MODEL, horiz = TRUE)
dev.off()

# Pie Chart
png(filename = "Basic_Pie_CD_Tax.png")
cd_limit <- car_details[1:10, ]
pie(cd_limit$TAX, labels = cd_limit$MODEL, main = "Pie Chart")
dev.off()

# We can group the data using tapply and combine it with pie chart
# Here I want to group the data to be a pie chart by group it's tax
group1 <- tapply(car_details$PRICE, car_details$TAX, mean)
name <- names(group1)
png(filename = "Pie_Chart_Tapply.png")
pie(group1, labels = name, main = "Pie Chart Tapply")
dev.off()

# Boxplot
