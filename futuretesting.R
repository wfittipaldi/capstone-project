# Sample data
df <- data.frame(x = 1:10, y = c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20))

# Fit linear model
model <- lm(y ~ x, data = df)

# Create future values
future_x <- data.frame(x = 11:15)

# Predict future y values
future_y <- predict(model, newdata = future_x)

# Plot existing data
plot(df$x, df$y, type = "b", col = "blue", ylim = c(0, 30), xlim = c(1, 15))
points(future_x$x, future_y, col = "red", pch = 19) # Future points
lines(future_x$x, future_y, col = "red", lty = 2) # Future trend line
