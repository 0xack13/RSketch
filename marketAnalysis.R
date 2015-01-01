#install.packages("arules")
library(arules)
audioscrobbler <- read.transactions(
  file="D:\\profiledata_06-May-2005\\user_artist_data.txt",
  format="single",
  sep=",",
  cols=c(1,2))