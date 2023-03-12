# We can do aritmethics in vector sequence by automatically using
num_list1 <- c(1, 4, 6, 2, 3)
num_list2 <- c(2, 5, 1, 6, 2)

print(num_list1 + num_list2)
print(num_list1 - num_list2)
print(num_list1 * num_list2)
x <- num_list1 / num_list2
print(format(round(x, 2), nsmall = 2))
cat("\n")

# There's also median & mean fucntion for statistical use
cat("Here's the mean of num_list 1: ", mean(num_list1))
cat("\n")
cat("Here's the median of num_list 1: ", median(num_list1))
cat("\n")
cat("Here's the mean of num_list 2: ", mean(num_list2))
cat("\n")
cat("Here's the median of num_list 2: ", median(num_list2), "\n\n")

# We can use median and mean from the calculation above such as
sum_num <- num_list1 + num_list2
print(mean(sum_num))
print(median(sum_num))
