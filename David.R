
# Create the data frame
data <- data.frame(
  Dates = c("2/22 ", "3/8", "3/22" ,"4/4","4/12"),
  Times = c(42.81, 50.29, 51.87,48.59,52.56)
)

# Convert Dates to a factor (ensuring order is preserved)
data$Dates <- factor(data$Dates, levels = data$Dates)

# Create a numeric index for regression
data$Date_Index <- as.numeric(data$Dates)

# Create the scatter plot (without regression line)
plot(data$Date_Index, data$Times,
     xaxt = "n",  # Remove default x-axis labels
     xlab = "Meet Date",
     ylab = "Hammer Throw (meters)",
     main = "David Oyebade meters",
     col = "black", pch = 16, las = 2)  

# Add custom x-axis labels
axis(1, at = data$Date_Index, labels = data$Dates, las = 2)

# Perform linear regression
model <- lm(Times ~ Date_Index, data = data)

# Add a fitted regression line
lines(data$Date_Index, predict(model), col = "blue", lwd = 2)
# Add custom x-axis labels
axis(1, at = data$Date_Index, labels = data$Dates, las = 2)

