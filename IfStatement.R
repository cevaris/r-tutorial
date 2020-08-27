# modify the value of "var" variable, to dictate what 
# is printed out via the "if/else" statement
var <- FALSE

if(var) {
  "var was TRUE"
} else {
  "var was FALSE"
}



# reset the value of "x" variable
rm(x) 
# choose a random number between 0 and 1, assign to x variable
x <- rnorm(1)

# use an if statement to choose which message to print out
if(x > 1) {
  paste(x, "x was GREATER than 1")
}  else if(x >= -1) {
  paste(x, "x was IN BETWEEN -1 and 1")
} else {
  paste(x, "x was LESS than -1")
}

