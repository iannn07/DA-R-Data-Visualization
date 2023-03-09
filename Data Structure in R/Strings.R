# We can separate or combine an array using paste() and sep function
text <- c("We", "can", "separate", "like", "this")
cat(paste(text, collapse = ","), "\n")

# REMEMBER: The paste function uses a space as the separator and can take any number of parameters.
string <- array(c("Hi", "There", "I'm", "Lucy"))
print(paste(string, collapse = " "))

# Output: "Here we use gsub function to remove the separator like this"
text_limiter <- ("Here-we-use-gsub-function-to-remove-the-separator-like-this")
print(gsub("-", " ", paste(text_limiter)))
