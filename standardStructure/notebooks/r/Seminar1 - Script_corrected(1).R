##############################################
## Introductory Data Science for Innovation ##
##            Seminar 1                     ##
##        By Frédérique Bone                ##
##############################################


#---------------------------
# 1. Do simple computations
#---------------------------
# Simple computation (replace the __ with any number)
5+3         # addition
7-11         # substraction
3*10         # multiplication
150/3         # division

#--------------------------------------------
# 2. Use variables (a) in cummulative steps
#--------------------------------------------
# Assign a result to a variable (replace the __)
a <- 10           # assign the value 1 to a
a = 1 + a          # add 1 to a and assign it back to a
a <- 10 - a        # substract a from 10 and assign it back to a
a <- a * 4        # multiply a by 4 and assign it back to a
a <- a / 2         # divide a by 2 and reassign it back to a

# Expected value of a
expected_value_a <- 16

# Check if value of a is right (if it returns true you are right, if false you are wrong)
a == expected_value_a

# Check the value of a
print(a)

# Go back in code and assign a different value to a (such as 10 or 5)
# and rerun the code above

#-----------------------------------
# 3. Load and observe a data set
#-----------------------------------
rm(list=ls())     #clear all previous data from the environment
data(Titanic)     # load the Titanic data
Titanic <- as.data.frame(Titanic)   # Transform the Titanic data into a dataframe

hist(Titanic$Freq) # create an histogram of the number of death by categories


#-----------------------------------
# 3.1 Load and observe a data set
#-----------------------------------
# Exercice - using the code above
# 1. clear all the previous data from the environment
# 2. load the data called iris
# 3. look at the size of the dataset and what are the variables in use
# 4. plot (using the 'plot' function) how many items there is in each species (using the column species)
rm(list=ls())     #clear all previous data from the environment
data(iris)     # load the Titanic data
iris <- as.data.frame(iris)   # Transform the Titanic data into a dataframe

plot(iris$Species) # create an histogram of the number of death by categories

#----------------------------------------
# 4. Work with packages
#----------------------------------------
# Install a library
install.packages("tidytext")  # install a package -> use quotation marks
library(tidytext)             # load a package -> without quotation

