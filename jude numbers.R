# Create the data frame
data <- data.frame(
  Dates = c("2/22 #1", "2/22 #2", "3/22 #1", "3/22 #2"),
  Times = c(209.3, 207.0, 204, 203.86)
)

# Convert Dates to a factor (ensuring order is preserved)
data$Dates <- factor(data$Dates, levels = data$Dates)

# Creating a scatter plot
plot( data$Dates,data$Times,
     xlab = "800 Time (seconds)",
     ylab = "Meet Date",
     main = "Jude's 800 Times",
     col = "black", pch = 16)  # pch = 16 gives solid dots

# Add a horizontal line for the mean time
abline(v = mean(data$Times), col = "red", lwd = 2, lty = 2)  # Dashed mean line