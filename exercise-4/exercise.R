# Load R's "USPersonalExpenditure" dataest using the "data()" function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you.  Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
us.exp <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(us.exp)

# Why are they so strange?

# What are the row names of your dataframe?
rownames(us.exp)

# Create a column "category" that is equal to your rownames
us.exp$category <- rownames(us.exp)

# How much money was spent on personal care in 1940?
care.1940 <- us.exp['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960
food.1960 <- us.exp['Food and Tobacco', 'X1960']

# What was the highest expenditure category in 1960?
highest.1960 <- us.exp$category[us.exp$X1960 == max(us.exp$X1960)]

# Write a function that takes in a year as a parameter, and
# returns the highest spending category of that year
DetectHighest <- function(year) {
  return(us.exp$category[us.exp[year] == max(us.exp[year])])
}

# Using your function, determine the highest spending category of each year
highest.1950 <- DetectHighest('X1950')

### Bonus ###
# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
highest <- list()
for(year in seq(1940, 1960, 5)) {
  year.index <- paste0('X', year)
  highest[year.index] <- DetectHighest(year.index)
}
