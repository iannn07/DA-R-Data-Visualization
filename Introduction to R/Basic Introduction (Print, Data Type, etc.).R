# Here are several ways to print a value in R Language
print("Hello World!")

text <- "Hello World!"
print(text)

# 'cat()' function is another way to print in R language. Mostly w/o [1...n] or we can say valid arguments
x <- 2 + 2
cat("2 + 2 = ", x)

cat("\n\n")

# We can use paste() function if we want to print a value combined with a string
print(paste("2 + 2 = ", x))

# Or we can use sprintf() if we want to print like c++
y <- 5 + x
print(sprintf("5 + x = %d", y))

# Printing an array
num <- c(1, 2, 3, 4, 5)
print(num)

cat("\n")

arr <- array(1:9, dim = c(3, 3))
print(arr)

cat("\n")

arr_string <- array(c("Index 1", "Index 2", "Index 3"), dim = c(3, 3))
print(arr_string)

cat("\n")

# Print Specific Array indexes
print(num[1])
