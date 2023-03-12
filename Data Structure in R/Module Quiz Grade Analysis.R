input <- as.integer(readline(prompt = "Insert Your Value: "))

data <- data.frame(
    "id" = c(1:10),
    "grade" = c(75, 26, 54, 90, 86, 93, 48, 71, 66, 99)
)

print(data[data$grade > input,])

# If we use the same method in Dataframe.R line 32:38 we can obtain 2. Why?
# Because the total of the column of data frame above is 2, id and grade
print(length(data[data$grade > input,]))

# But if we changed it to , "grade" it will specifically put the grade data
print(length(data[data$grade > input, "grade"]))
# There's a logical vector in the first (data$grade > input)
# Make sure to quote the object you want to respect

# Here are several answer from community
print(length(t(subset(data, grade > input)["grade"])))
print(length(data$grade[data$grade > input]))
