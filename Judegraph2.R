Jude.800 <-c(2:09.3, 2:07.0,2:04,2:03.86)
# Create the data frame
data <- data.frame(
  Dates = c("2/22 #1", "2/22 #2", "3/22 #1", "3/22 #2"),
  Times = c(209.3, 207.0,204,203.86)
)
data$Dates <- factor(data$Dates, levels = (data$Dates))
# Creating a  scatter plot
plot(data$Dates,data$Times, 
        xlab = "800",
        ylab = "meet time",
        main = "Judes 800 times",
        col = "black", las = 2)


#abline(v = mean(data$Times), col = "red", lwd = 2, lty = 2)
abline(lm(data$Times ~ data$Dates, ),col = "blue")

data(mtcars)

plot(mtcars$wt, mtcars$mpg, xlab = "Weight (in 1000 pounds)", ylab = "Miles per gallon", main = "Scatter Plot of Weight vs. MPG")
abline(lm(mpg ~ wt, data = mtcars), col = "red") 