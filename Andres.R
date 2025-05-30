 
# Create the data frame
data <- data.frame(
  Dates = c("2/7 ","3/1","3/22" ,"3/28","4/12"),
  Times = c(155.81, 157, 156.14,157.36,155.19)
)



# Convert Dates to a factor (ensuring order is preserved)
data$Dates <- factor(data$Dates, levels = data$Dates)

# Create a numeric index for regression
data$Date_Index <- as.numeric(data$Dates)
model <- lm(Times ~ Date_Index, data = data)


# Create new data for predictions
future_data <- data.frame(Date_Index = seq(min(data$Date_Index) + 1, max(data$Date_Index) + 2))

# Make predictions
predictions <- predict(model, newdata = future_data)

# Create a data frame for the predictions
future_data <- data.frame(Date_Index = future_data$Date_Index, predicted_y = predictions)

# Plot the results
ggplot(data, aes(x = Dates, y =Times )) +
  geom_point() +
  geom_line(data = data, aes(x = Date_Index, y = Times), color = "blue") +
  geom_line(data = future_data, aes(x = Date_Index, y = predicted_y), color = "red") +
  theme(plot.background = element_rect(color = "black", # Border color
                                       size = 1),
        plot.title = element_text(hjust = 0.5) ) +       # Border width 
  labs(title = "Andres: 800 Meters",
       x = "Meet Date ",
       y = "800 (meters)")
