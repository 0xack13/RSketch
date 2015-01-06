#https://github.com/0xack13/RSketch.git
install.packages("arulesViz")
library("arulesViz")
#inside arulesViz package
data("Groceries")
summary(Groceries)
rules <- apriori(Groceries, parameter=list(support=0.001, confidence=0.5))
# Number of the association rules
rules