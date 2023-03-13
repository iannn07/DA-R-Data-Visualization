# Summarize
# Vectors store elements of the same type using one dimension.
# Matrices are like vectors and have 2 dimensions: rows and columns.
# Lists are similar to vectors and allow you to store different types of elements

# The most important thing in Data Structure using R is DataFrame
# DataFrame is a two dimension but using different type of data but in table

# Here's the basic formula of accessing DataFrame:

# data_frame[row_number, col_number]
# Remember that matrix in R is started from it's Row then it's Col like this
# 1 3 5
# 2 4 6

# Here's an example of DataFrame

data_frame <- data.frame(Name = c("Hinata", "Naruto", "John", "Smith", "Lucy"),
                         Age = c(28, 25, 50, 10, 20))
print(data_frame)

cat("\n")
# We can access DataFrame column like Lists using $
print(data_frame$Name)
print(sum(data_frame$Age))

# Basic Formula on the line 11
print(data_frame[c(2, 3), c(1, 2)])
cat("\n")

# Remember that DataFrame is based on Table?
# There's a tips for adding a new row and new column

# Adding new value in data_frame sets
data_frame$DoB <- c("US", "Canada", "Japan", "UK", "HKK")

# Adding new row
new_data_frame <- data.frame(Name = c("Yanto", "Waterfall", "Ghost"),
                             Age = c(29, 30, 41), DoB = c("BKK", "DPS", "SBY"))
# rbind() as the function
data_frame <- rbind(data_frame, new_data_frame)
print(data_frame)

# Here's a sample program that create a nickname
index <- as.integer(readline(prompt = "Please insert the index of your nickname: "))

dataset_1 <- data.frame("name" = c("James", "Amy", "David", "Bob", "John"),
                        "year" = c("1988", "2001", "1996", "2004", "1999"))

# Remember when we want to use $ operator instead of [[]] we use this syntax
# x[index,]$name || x[index,]$year

print(paste0(dataset_1[index,]$name, dataset_1[index,]$year))
print(paste0(dataset_1[[index, 1]], dataset_1[[index, 2]]))
cat("\n")

# Additionally, we can search it by the index like this
index_year <- readline(prompt = "Input the year: ")
print(dataset_1[dataset_1$year == index_year,])
cat("\n")

index_name <- readline(prompt = "Input the name: ")
print(dataset_1[dataset_1$name == index_name,])
cat("\n")

# DataFrame Operations
# Remember in Vectors.R we can filter a sequence? DF can did it too!
print("Year > 2000")
print(dataset_1[dataset_1$year < 2000, ])
cat("\n")
print("Year < 2000")
print(subset(dataset_1, year > 2000))
cat(("\n"))

# Mean in DF can be done by
print(mean(as.integer(dataset_1$year)))
cat("\n")

# Every class or the information of the DF can be define by
print(summary(data_frame))
print(summary(dataset_1))
cat("\n")

# Factors in DF is used to create categorical variables
# The value inside of factors are called levels
gender <- factor(c("Male", "Female", "Male", "Male", "Male"))
test_gender <- levels(gender)
print(test_gender)

cat("\n")
print(table(gender))

cat("\n")
dataset_1$gender <- gender
print(dataset_1)