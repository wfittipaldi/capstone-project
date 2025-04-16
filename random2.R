# Create a sample dataset
set.seed(123)
x <- 1:10
y <- 2 * x + rnorm(10, mean = 0, sd = 2)
data <- data.frame(x, y)

# Fit a linear model
model <- lm(y ~ x, data = data)

# Create new data for future predictions
future_x <- seq(max(data$x) + 1, max(data$x) + 5)
future_y <- predict(model, newdata = data.frame(x = future_x))

# Plot original data
plot(data$x, data$y, pch = 16, col = "black",
     xlim = c(min(data$x), max(future_x)),
     ylim = range(c(data$y, future_y)),
     main = "Line of Best Fit and Future Predictions",
     xlab = "Independent Variable (x)",
     ylab = "Dependent Variable (y)")

# Add the regression line for observed data
abline(model, col = "blue", lwd = 2)

# Add predicted future values
lines(future_x, future_y, col = "red", lwd = 2, lty = 2)

# Add points for the predicted values
points(future_x, future_y, col = "red", pch = 17)