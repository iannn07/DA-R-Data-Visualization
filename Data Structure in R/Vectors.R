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

# We can find the length all of element in vectors using
seq_txt <- c("Lucy", "John", "Smith", "Hinata", "Wunsch")
# This method resulting the length of a string inside of a sequence it's similar with nchar()
print(length(strsplit(seq_txt, "")[[4]]))
# By this method we can obtain the total elements inside a sequence
print(length(seq_txt))

cat("\n")

# We can sort it by ascending using sort function and we can sum it all using sum function
seq_num <- c(1, 4, 2, 6, 7, 1, 2, 9, 10, 11)
print(sum(seq_num))
cat(sort(seq_num))
cat("\n")
# Sort it by descending can be done using
cat(sort(seq_num, decreasing = TRUE))

cat("\n\n")
# But there's also something what we called seq()
num_seq <- seq(1, 10)
print(num_seq)
num_seq <- seq(0, 10, by = 2)
print(num_seq)

# Also, we can filter it like this and change specific value like this
print(num_seq [num_seq < 5])
num_seq[2] <- 20
print(num_seq)