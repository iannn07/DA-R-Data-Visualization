# We can combine every vectors inside of sequence by
list_vector <- list("Johnny", "Yes", "Papa", c(1, 2, 3, 4), 50)
print(list_vector)
print(paste("The length of list_vector is: ", length(list_vector)))

# Remember when we need to call a value from a variable in Vectors.R line 14 & 46?
# We need to call the value by using [[]] method or []

# Using list, we can use $ as alternative and it will be like
list_of_data <- list("Name" = "Johnny", "Who" = "Papa")
print(list_of_data$Who)

# It's same like
print(list_of_data[["Name"]])

cat("\n")
# However, we can add an element using [[]] method like this
list_of_data[["DoB"]] <- "United Kingdom"
size <- readline(prompt = "What's the size of the T-Shirt? ")
list_of_data[["Size"]] <- size

# And the output be like
print(list_of_data)

cat("\n")
# FYI, we can merge 2 lists using c() function
