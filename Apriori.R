#https://github.com/0xack13/RSketch.git
install.packages("arulesViz")
library("arulesViz")
#inside arulesViz package
data("Groceries")
summary(Groceries)
rules <- apriori(Groceries, parameter=list(support=0.001, confidence=0.5))
# Number of the association rules
rules
# Inspect 4 of'em only
inspect(head(sort(rules, by ="lift"),4pl))
plot(x, method = NULL, measure = "support", shading = "lift", interactive = FALSE, data = NULL, control = NULL) 
plot(rules)
plot(rules, shading="order", control=list(main = "Two-key plot"))