#Load Library
library(openintro)

#View Dataset
View(BloodPressure1)
#View first few lines of dataset
head(BloodPressure1)
#View key information of dataset
str(BloodPressure1)

#Mean
mub <- mean(BloodPressure1$Before)
mub

#Standard Deviation
sdb <- sd(BloodPressure1$Before)
sdb

#Mean
mua <- mean(BloodPressure1$After)
mua

#Standard Deviation
sda <- sd(BloodPressure1$After)
sda

#Calculate z parameters
mu <- mub # Specify the mean of Before
mu0 <- mua # Specify the mean of After
alpha <- 0.05 # Specify the significance level
sigma <- sda # population standard deviation
n <- nrow(BloodPressure1) # get the sample size
#Calculate z using the formula above
z<-(mu-mu0)/(sigma/sqrt(n))
z


#Calculate p-value
p <- 2*pnorm(abs(z),lower.tail=FALSE) 
p
