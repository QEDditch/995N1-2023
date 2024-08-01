## Lecture 2 - 995N1  ##
## by Frédérique Bone ##

library(tidyverse)

# Print today's data
today <- Sys.Date()
print(today)

# Change the format of the day
format(today, format="%d of %B %Y")


# Create a vector
x <- c(1:4)
print(x)
class(x)


# Create a string vector
x <- c("1", "2", "3", "4")
x+x


# Change to numeric to avoid errors
x <- c("1", "2", "3", "4")
x <- as.numeric(x)
x+x



## IF statements ##
x <- c("white", "black")

if ("black" %in% x & "white" %in% x){
  print("x is grey")
} else {
  print("x is not grey")
}

ifelse(("black" %in% x & "white" %in% x), "x is grey", "x is not grey")

##### Loops statements #####
for (x in 1:5){
  print(x^2)
}

x <- -5
while (x < 5) {
  print(x^2)
  x<-x+1
}

