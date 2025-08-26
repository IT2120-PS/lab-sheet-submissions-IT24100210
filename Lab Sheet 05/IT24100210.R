getwd()
setwd("D:\\Venura\\OneDrive\\Desktop\\IT24100210")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep="\t")
hist(Delivery_Times$Delivery_Time_.minutes, breaks=seq(20, 70, length=10), main="Histogram for Delivery Times", right=FALSE)
# 3. Comment on the shape of the distribution
# The shape of the distribution can be observed from the histogram. Based on the data, it appears to be roughly symmetric with a slight right skew.
h_delivery <- hist(Delivery_Times$Delivery_Time_.minutes., breaks=seq(20, 70, length=10), plot=FALSE)
cum_freq_delivery <- cumsum(h_delivery$counts)
new_delivery <- c(0, cum_freq_delivery)
breaks_upper_delivery <- h_delivery$breaks
plot(breaks_upper_delivery, new_delivery, type="l", main="Cumulative Frequency Polygon for Delivery Times", xlab="Delivery Times", ylab="Cumulative Frequency", ylim=c(0, max(cum_freq_delivery)))