x <- car_details_data[car_details_data$TAX >= 150, ]
print(sum(x$TAX))
print(tapply(x$PRICE, x$TAX, mean))
