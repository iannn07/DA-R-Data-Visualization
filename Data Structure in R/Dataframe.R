# Summarize
# Vectors store elements of the same type using one dimension.
# Matrices are like vectors and have 2 dimensions: rows and columns.
# Lists are similar to vectors and allow you to store different types of elements

# The most important thing in Data Structure using R is DataFrame
# DataFrame is a two dimension but using different type of data but in table
# Here's an example of DataFrame

data_frame <- data.frame("Name" = c("Hinata", "Naruto", "John", "Smith", "Lucy"), "Age" = c(28, 25, 50, 10, 20))
print(data_frame)

cat("\n")
# We can access DataFrame like Lists using $
print(data_frame$Name)
print(sum(data_frame$Age))

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