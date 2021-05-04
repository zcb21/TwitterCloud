# TwitterCloud
 Package allows user to search twitter for any given term and then creates a wordcloud of words commonly used with the search term.

Easy way for users to search terms and pull data on twitter and then turn it into a easy to digest wordcloud. 

# Package uses the following libs:

 library(tidyverse)

 library(tm)

 library(devtools)

 library(wordcloud)

 library(RColorbrewer)

 library(Rtweet)
 
 # Wordcloud current settings are as follows:
 
 Frequency of word required = 1
 
 Max words in wordcloud = 100 (lower frequency words will be dropped)
 
 Random Order = False (Organization is by frequency.)
 
# Paramaters are as follows:

X = The term you want to pull data from for twitter.

Y = the number of tweets you want to use. 

