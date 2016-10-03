# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employees <- paste('Employee', 1:100)

# Create a vector of 2014 salaries using the runif function
salaries.2014 <- runif(100, 40000, 50000)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
salaries.2015 <- salaries.2014 + runif(100, -5000, 10000)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(employees, salaries.2014, salaries.2015)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise <- salaries.2015 - salaries.2014

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- salaries$raise > 0

# Retrieve values from your data frame to answer the following questions:

# What was the 2015 salary of employee 57
salary.57 <- salaries[salaries$employees == "Employee 57",'salaries.2015']

# How many employees got a raise?
nrow(salaries[salaries$got.raise == TRUE,])

# What was the value of the highest raise?
highest.raise <- max(salaries$raise)

# What was the name of the employee who recieved the highest raise?
got.biggest.raise <- salaries[salaries$raise == highest.raise,'employees']

# What was the largest decrease in salaries between the two years?
biggest.paycut <- min(salaries$raise)

# What was the name of the employee who recieved largest decrease in salary?
got.biggest.paycut <- salaries[salaries$raise == biggest.paycut,'employees']


# What was the average salary increase?
avg.increase <- mean(salaries$raise)

### Bonus ###

# Write a .csv file of your salaries to your working directory
write.csv(salaries, 'salaries.csv')

# For people who did not get a raise, how much money did they lose?
avg.loss <- mean(salaries$raise[salaries$got.raise == FALSE])

# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
