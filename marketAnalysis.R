#install.packages("arules")
library(arules)
audioscrobbler <- read.transactions(
  file="C:\\Downloads\\profiledata_06-May-2005\\profiledata_06-May-2005\\user_artist_data.txt",
  format="single",
  sep=",",
  cols=c(1,2))

#install.packages("nutshell")
library(nutshell)