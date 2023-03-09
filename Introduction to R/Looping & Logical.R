# There's a difference between length() and nchar() function in R. 'length()' function will calculate how many objects or strings that are assigned in a variable. Meanwhile 'nchar()' will calculate the length of character strings. Example
# Remember that i in R started from 1 not 0
# Initialize i value or it will resulting an error if you don't assign any value in i that you will assigned in for()

i <- x <- sum <- 0
print("For Loops")
cat("SUM(1:25)\n")
for(x in x:25){
    sum <- sum + x
}
print(sum)

# Don't forget to reset the variable value
x <- sum <- 0
cat("\nIF(x%2 != 0, SUM(x), x)\n")
for(x in x:10){
    if(x %% 2 != 0){
        sum <- sum + x
    }
}
print(sum)

cat("\n")
print("Calculate the length of smth using length() & nchar()")
text <- "Lucy"
print(length(strsplit(text, "")[[1]]))
print(nchar(text))

cat("\n")
print("While Loops Next & Break")
i <- 0
while(i < 10){
    i <- i + 1
    if(i == 5){
        next
    } 
    if(i == 7){
        break
    }
    print(i)
}

# Switch Case
input <- readline(prompt = "Please insert you equation method: ")
x <- as.integer(readline(prompt = "Insert your first number: "))
y <- as.integer(readline(prompt = "Insert the second number: "))
calculator <- switch(
    input,
    "+" = x + y,
    "-" = x - y,
    "%" = x %% y,
    "/" = x / y,
    "*" = x * y,
    "^" = x ^ y
)
print(calculator)
