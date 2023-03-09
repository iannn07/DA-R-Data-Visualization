# Vectors are using c() as their function
# Here's how we declare it
example <- c("1", "2", "3")
print(example)
print(example[2])

# We can also skipped an index or specify it like
print(example[-1])
print(example[1:2])
cat("\n")

# We can define the indicator like
ages <- c("James" = 18, "Amy" = 14, "John" = 64)
print(paste("Indicator using vector:", ages[["Amy"]]))

# Here's another example of indicator using user-input
colors <- c("Red", "Green", "Blue", "Purple", "Black", "Yellow", "Orange", "Pink", "Brown", "White")
x <- as.integer(readline(prompt = "Input the color index: "))
print(colors[[x]])
