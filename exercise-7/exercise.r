# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv('data/huskies_2015.csv')

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- as.vector(husky.games.2015$opponent)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015$uw.score

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$rushing.yards
passing.yards <- husky.games.2015$passing.yards

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- passing.yards + rushing.yards

# What is the score of the game where the Huskies had the most combined yards?
score.with.most.yards <- husky.scores[combined.yards == max(combined.yards)]

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(games) {

  dates <- as.vector(games$date)
  scores <- games$uw.score
  opponents <- as.vector(games$opponent)

  rushing.yards <- games$rushing.yards
  passing.yards <- games$passing.yards
  combined.yards <- passing.yards + rushing.yards

  most.yards <- max(combined.yards)
  opponent <- opponents[combined.yards == most.yards]
  date <- dates[combined.yards == most.yards]
  highest.score <- scores[combined.yards == most.yards]

  return(paste("The game that the Huskies had the most yards was against", opponent, "on", date, "where they scored", highest.score, "points!"))
}

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv('data/huskies_2016.csv')
most.yards.2016 <- MostYardsScore(husky.games.2016)
