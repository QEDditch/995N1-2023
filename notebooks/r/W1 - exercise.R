##############################################
## Introductory Data Science for Innovation ##
##            Seminar 1                     ##
##        By David Eggleton                 ##
##############################################


#---------------------------
# 1. Do simple computations
#---------------------------
# Simple computation (replace the __ with any number. Try it in the Console too. Remember it's Ctrl + Enter to run a single line)
# addition
# subtraction
# multiplication
# division

#--------------------------------------------
# 2. Use variables (a) in cummulative steps
#--------------------------------------------
# Assign a result to a variable (replace the __)

# assign the value 1 to a. Key command for <- is 'Alt'/'Option' + '-'

# add 1 to a and assign it back to a

# subtract a from 10 and assign it back to a

# multiply a by 4 and assign it back to a

# divide a by 2 and reassign it back to a

# Create a new variable for the 'expected value of a' and set it equal to 16


# Check if value of a is right (if it returns true you are right, if false you are wrong). 


# Check the value of a


# Go back in code and assign a different value to a (such as 10 or 5)
# and rerun the code above

#-----------------------------------
# 3. Load and observe a data set
#-----------------------------------
rm(list=ls())     #clear all previous data from the environment
data(Titanic)     # load the Titanic data
Titanic <- as.data.frame(Titanic)   # Transform the Titanic data into a dataframe

hist(Titanic$Freq) # create an histogram of the number of death by categories
                    
# Exercise - using the code above
# 1. clear all the previous data from the environment
# 2. load the data called iris
# 3. look the at the size of the dataset and what are the variables in use
# 4. plot (using the 'plot' function) how many items there is in each species (using the column species)


#----------------------------------------
# 4. Work with packages
#----------------------------------------
# Install a library
install.packages("tidyverse")  # install a package -> use quotation marks
library(tidyverse)             # load a package -> without quotation

