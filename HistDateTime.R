#Sample data: 09/15/2014 20:43:01.66
x <- read.table(file = "clipboard", sep = "\n",)
View(x)
colnames(x) <- c("hit")
View(x$hit)
x$hDate <- as.Date(x$hit, "%m/%d/%Y")
x$hTime <- as.Date(x$hit, "%H:%M:%S")
x$pDateTime <- as.POSIXct(x$hit, format="%Y%m%d %H%M%S")
x$pTime = format(x$pDateTime, format="%H:%M:%S")
x$pDate = format(x$pDateTime, format="%M/%d/%Y")


ggplot(x, aes(x=pDateTime2)) + geom_histogram() + opts(axis.text.x = theme_text(angle=90))

