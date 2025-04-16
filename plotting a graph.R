#define data
x <- c(1, 2, 3, 4, 5, 6, 7, 8)
y <- c(2, 5, 6, 7, 9, 12, 16, 19)

#create scatter plot of x vs. y
plot(x, y)

#add line of best fit to scatter plot
abline(lm(y ~ x))