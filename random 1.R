# Yields for varieties A and B
A <- c(72.6, 72.6, 47.8, 76.9, 42.5, 49.6, 62.8)
B <- c(65.2, 60.7, 42.8, 73.0, 41.7, 56.6, 57.3)

t.test(A, B, paired = TRUE, alternative = "greater")
A <- c(72.6, 72.6, 47.8, 76.9, 42.5, 49.6, 62.8)
B <- c(65.2, 60.7, 42.8, 73.0, 41.7, 56.6, 57.3)

t.test(A, B, paired = TRUE, alternative = "greater")


# Create the scatter plot (without regression line)


#plot(data$Date_Index, data$Times,
#    xaxt = "n",  # Remove default x-axis labels
#   xlab = "Meet Date",
#  ylab = "Hammer Throw (meters)",
# main = "David Oyebade Hammer Times",
#col = "black", pch = 16, las = 2)  

# Add custom x-axis labels
#axis(1, at = data$Date_Index, labels = data$Dates, las = 2)

# Perform linear regression


# Add a fitted regression line
#lines(data$Date_Index, predict(model), col = "blue", lwd = 2)