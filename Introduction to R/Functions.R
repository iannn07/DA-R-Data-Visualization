# Basic Function in R use function_name <- function(*Parameter*)
stars <- function(x) {
    i <- 1
    for (i in i:x) {
        print("*")
    }
}
x <- readline(prompt = "Insert how many stars do you want to print: ")
x <- as.integer(x[1])
stars(x)

cat("\n")
# Here's how to print a triangle shape using function
pattern <- function(y) {
    for (i in 1:y) {
        for (j in 1:i) {
            cat("* ")
        }
        cat("\n")
    }
}

y <- readline(prompt = "Insert how many stars do you want to print in triangle shape: ")
pattern(y)

cat("\n")
exponent <- function(a, b){
    if(a %% 2 == 0){
        return(a ** b)
    } else{
        return(a^b)
    }
}

a <- as.integer(readline(prompt = "Insert the first number: "))
b <- as.integer(readline(prompt = "Insert the power of the first number: "))
print(exponent(a, b))
