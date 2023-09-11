library(readr)
library(caret)

# Load dataset
data <- read_csv("baseball_stats.csv")

# Split data into training and test set
set.seed(42)
trainIndex <- createDataPartition(data$batting_avg_next_season, p = 0.8, 
                                  list = FALSE)
data_train <- data[trainIndex,]
data_test <- data[-trainIndex,]

# Train a linear regression model
model <- lm(batting_avg_next_season ~ runs_current_season, data = data_train)

# Predict on the test set
predictions <- predict(model, data_test)

# Calculate and print the Mean Squared Error
mse <- mean((predictions - data_test$batting_avg_next_season)^2)
print(paste("Mean Squared Error:", mse))
