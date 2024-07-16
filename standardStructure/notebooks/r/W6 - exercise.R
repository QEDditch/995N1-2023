##############################################
## Introductory Data Science for Innovation ##
##              Workshop 6:                  ##
##     Working with publication data        ##
##           By Frederique Bone             ##
##############################################

#---------------------------
# Aim of the seminar
#---------------------------
# The seminar aims at working with Web of Science data and explore the library bibliometrix
# The data used today is collected using 'deep learning' looking at topics, keeping only
# articles and book chapters (excluding reviews, conference proceedings etc.) looking at
# years from 2013 to 2016.
# The data was exported in a plain text file
#---------------------------

############################
##  Bibliometrix Package  ##
############################

# 0. Make sure all the relevant libraries are istalled
#------------------------------------------------------
library(bibliometrix)     # to understand how function are used see the manual at https://cran.r-project.org/web/packages/bibliometrix/bibliometrix.pdf
library(tidyverse)
# If any of these packages are missing, use install packages (e.g. install.packages("bibliometrix"))


# 1. Load the dataset
#------------------------------------------------------

# Instructions #
# After downloading the dataset put it in a speific directory
# copy the directory in the code below 
# then use the full file name to read the file....

setwd("__")           # Find the directory of your dataset
isi_original_file <- "__"        # put in the name of the file you would like to read, don't forget to put the full extention name (e.g. '.txt')
isi_file <- convert2df(isi_original_file, dbsource="__", format="__")    # Convert the directory of the dataset, use either the manual above or the help function (e.g. ?convert2df) to find the possible 

# Inspect the isi_file to see the variables and number of observations

# 2. Descriptive bibliometrics analysis
#------------------------------------------------------
isi_results <- biblioAnalysis(__, sep="__")      # Do the bibliometric analysis on the converted file, using ';' as a separator
isi_summary <- summary(object=__, k=__, pause=FALSE)   # use summary on the results file for the first 20 (using k=20) of each type of analysis

## Inspect the information printed in the console ##
# Can you check how many documents we have for each year?
# How many authors are in the publications overall?
# Who was involved in the most articles? Why is this different for the Articles Fractionalized?
# What are the top 3 cited articles?
# What position is the UK in terms of of volume of articles it hosts a corresponding author from. 

# Plots
plot(x = __, k = __, pause = FALSE)      # Use isi_results to create plots using the top 20 elements again

## Inspect the information in the different plots - using the previous arrow ##
# Which year get's the most citations?
# Is that the year which has most publications?
# Which country does not seem to collaborate much with others?


# 3. Understanding direct links between publications
#------------------------------------------------------
# 3.1 Looking at the evolution of publication over time
top_author <- authorProdOverTime(__, k=__, graph=__)     # use isi_file to look at authors production over time on the top 20 authors, setting graph to TRUE

# In the top 4 authors who published in most years observed?
# in the top 4 authors who had the most concentrated publications within a single year? and who was it?

# 3.2 Looking at the network of collaboration between these authors
NetMatrix_collab <- biblioNetwork(__, analysis = "__", network = "__", sep = ";")         # Build the collaboration network from isi file, find the right arguments for the type of analysis using the helpfile, it should show the network of authors. 
net_collab =networkPlot(__,  normalize = NULL, weighted=NULL, n = 375, Title = "__",         # Build the network plot on about 1/4 of the total number of authors, and use an appropriate title for the graph
                        type = "kamada", size=5,size.cex=T,remove.multiple=TRUE,labelsize=0.5,label.n=50,label.cex=T)

# 3.3 Look at higher level country collaboration
isi_file_country <- metaTagExtraction(__, Field = "AU_CO", sep = ";")    # extract the country name from the original file (e.g. isi_file)
NetMatrix_country <- biblioNetwork(__, analysis = "__", network = "__", sep = ";")  # use the appropriate file to do the analysis on, the appropriate analyssis and the netowrk argument. 
net_country <- networkPlot(__, n = dim(__)[1], Title = "__", type = "__",      # Build the netowrk using the appropriate file, define a descriptive title and the layout type should be circle
                           size=TRUE, remove.multiple=FALSE,labelsize=0.7,cluster="none")

# 4. Working with citations
#------------------------------------------------------

# 4.1. Check the top cited articles
isi_citation_article <- citations(__, field="__", sep=";")   # Using isi_file, use the correct field, by looking at the helpfile
cbind(isi_citation_article$Cited[__:__])     # Show the top 30 cited articles

# Notice that the articles with most citations are among the Turing award 2019 apart from one, which one?
# Check the article full author list using the doi : www.doi.org/10.XXXX/XXXXXX

# 4.2. Check the top cited authors
__        # Use the above code to produce to check the top authors in the cited
__

## Question ##
# Do you think that the software helps you disambiguate authors (can you see similar author names)?




