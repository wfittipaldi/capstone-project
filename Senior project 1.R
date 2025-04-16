 
x <- c(1,2,3)
# Find Mean.
result.mean <- mean(x)
print(result.mean)
print("test")

WillF.800 <- c(3.05.60,2:59.83,3:02.31,2:55.45)
WillH.800 <- c(2:03.84,2:07.2,2:07:54)
Andres.800<-(155.81, 1:57, 1:56.14,157.36,1:55.19)
Jude.800 <-c(2:09.3, 2:07.0,2:04,2:03.86,2:07.50)
Rio.800 <- c(2:04.13, 2.06.9,2:02.48,2:04.77)
Emilianio <- c(2:06.0,2:05.10,2:02.76)

Jack.200 <- c(29,27,27, 29, 30, 31, 29, 29, 30, 29, 30, 29, 28, 31, 26.9, 27, 29, 29, 29, 29, 29, 29, 29, 29, 25.9)
# Find Mean.
Jack.200.mean <- mean(Jack.200)
cat("Jack:", Jack.200.mean)

Andres.200 <- c(29, 30, 31, 29, 29, 30, 30, 30, 30, 29, 31, 28, 26, 27.6)
# Find Mean.
Andres.200.mean <- mean(Andres.200)
cat("Andres:", Andres.200.mean)

Rio.200 <- c(30,30, 30, 32, 33, 31, 34, 34, 34, 33, 33, 33, 34 ,33, 31 ,28 ,29
)
# Find Mean.
Rio.200.mean <- mean(Rio.200)
cat("Rio:", Rio.200.mean)

WillH.200 <- c(30,32, 33, 32, 32, 33, 32, 32, 33, 32, 29, 30, 30,30, 31, 33, 33, 33, 33, 31
)
# Find Mean.
WillH.200.mean <- mean(WillH.200)
cat("Will H:", WillH.200.mean)

WillF.200 <- c(37,38, 37, 40)
# Find Mean.
WillF.200.mean <- mean(WillF.200)
cat("Will F:", WillF.200.mean)

Jude.200 <- c(29,27,33,35,28, 29, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 28, 31, 31, 31, 29, 29, 29, 29, 31)
# Find Mean.
Jude.200.mean <- mean(Jude.200)
cat("Jude:",Jude.200.mean)

Emiliano.200 <- c(29,28,33,35,28, 30, 30, 33 ,33, 32, 33, 33, 35, 35, 34, 36, 33
)
# Find Mean.
Emiliano.200.mean <- mean(Emiliano.200)
cat("Emiliano:",Emiliano.200.mean)





28.792
# Create the data frame
data <- data.frame(
  Years_Exp = c("Jude", "Jack", "Rio", "WillH", "WillF", "Andres", "Emiliano"),
  Salary = c(Jude.200.mean, Jack.200.mean, Rio.200.mean, WillH.200.mean, WillF.200.mean,
             Andres.200.mean, Emiliano.200.mean)
)
data$Years_Exp <- factor(data$Years_Exp, levels = data$Years_Exp)
# Creating a  scatter plot
barplot(data$Salary,names.arg = data$Years_Exp, 
     xlab = "Avg 200 rep",
     ylab = "meet time",
     main = "Meet time vs Avg 200 rep",
     col = "black", las = 2)

install.packages('caTools')
library(caTools)
split = sample.split(data$Salary, SplitRatio = 0.7)
trainingset = subset(data, split == TRUE)
testset = subset(data, split == FALSE)

# Fitting Simple Linear Regression to the Training set
lm.r= lm(formula = Salary ~ Years_Exp,
         data = trainingset)
#Summary of the model
summary(lm.r)
