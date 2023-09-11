# Predicting a Baseball Player's Future Batting Average

In baseball, a player's **batting average** is one of the key statistics to measure their offensive performance. The batting average is calculated as the number of hits divided by the number of at-bats. Teams and analysts may be interested in predicting a player's future batting average based on their past performance, such as the number of runs they've scored in a season. Can we predict a player's batting average in the next season based on the number of runs they scored in the current season?

## Why Simple Linear Regression is the Solution:

Simple linear regression attempts to model the relationship between two variables by fitting a linear equation to observed data. In this case, we're trying to determine if there's a linear relationship between a player's runs in the current season (`X` - independent variable) and their batting average in the next season (`Y` - dependent variable). If there is a strong linear correlation between these two variables, simple linear regression can be a good tool to predict future batting average.

## The Dataset: simple_linear_regression_baseball_batting_average.csv

## Dataset description:

- **player_name:** Name of the baseball player.
- **season_year:** The year of the baseball season.
- **runs_current_season:** The number of runs scored by the player in the given season.
- **batting_avg_next_season:** The batting average of the player in the following season.

## Solution with Python (using scikit-learn):

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# Load dataset
data = pd.read_csv('baseball_stats.csv')

# Define X (independent variable) and Y (dependent variable)
X = data[['runs_current_season']]
Y = data['batting_avg_next_season']

# Split data into training and test set
X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.2, random_state=42)

# Create and train the linear regression model
model = LinearRegression()
model.fit(X_train, Y_train)

# Predict on the test set
Y_pred = model.predict(X_test)

# Calculate and print the Mean Squared Error
mse = mean_squared_error(Y_test, Y_pred)
print(f"Mean Squared Error: {mse}")

## Solution with R:

library(readr)
library(caret)

# Load dataset
data <- read_csv("baseball_stats.csv")

# Split data into training and test set
set.seed(42)
trainIndex <- createDataPartition(data$batting_avg_next_season, p = 0.8, list = FALSE)
data_train <- data[trainIndex,]
data_test <- data[-trainIndex,]

# Train a linear regression model
model <- lm(batting_avg_next_season ~ runs_current_season, data = data_train)

# Predict on the test set
predictions <- predict(model, data_test)

# Calculate and print the Mean Squared Error
mse <- mean((predictions - data_test$batting_avg_next_season)^2)
print(paste("Mean Squared Error:", mse))

