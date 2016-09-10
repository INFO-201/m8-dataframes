# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
breakfast <- c('toast', 'eggs', 'tea')

# Create a vector of everything you ate for lunch
lunch <- c('soup', 'pb + j')

# Create a list "meals" that has contains your breakfast and lunch
meals <- list(breakfast=breakfast, lunch=lunch)

# Add a "dinner" index to your "meals" list that has what you plan to eat for dinner
meals$dinner <- c('curry', 'rice')

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- meals[['dinner']]

### Bonus ### 
# Create a list that has the number of items you ate for each meal
items <- lapply(meals, length)

# Write a function that adds pizza to every meal
AddPizza <- function(x) {
  x <- c(x, 'pizza')
}

# Add pizza to every meal!
better.meals <- lapply(meals, AddPizza)