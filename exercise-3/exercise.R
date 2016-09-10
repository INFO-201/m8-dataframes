# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employees <- paste('Employee', 1:100)

# Create a vector of 2014 salaries using the runif function
salaries.2014 <- runif(100, 40000, 50000)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires, but not always
salaries.2015 <- salaries.2014 + runif(100, -5000, 10000)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(employees, salaries.2014, salaries.2015)

# In "salaries", change the name of Employee 1 to your name. Did you get an error?
salaries$employees[1] <- 'Mike'


# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- (salaries.2015 - salaries.2014) > 0

# How many employees got a raise?
length(salaries$got.raise[salaries$got.raise == TRUE])

# What was the average salary increase?
avg.increase <- mean(salaries$salaries.2015 - salaries.2014)

# Write a .csv file of your salaries to your working directory
write.csv(salaries, 'salaries.csv')

### Bonus ###

# For people who did not get a raise, how much money did they lose?
salaries$diff <- salaries$salaries.2015 - salaries.2014
avg.loss <- mean(salaries$diff[salaries$got.raise == FALSE])
# Is that what you expected them to lose?

### Double Bonus ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
