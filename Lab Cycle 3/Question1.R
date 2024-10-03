# Load necessary libraries
library(ggplot2)

# Load the dataset (assuming it has been downloaded)
data <- read.csv("C:/Users/acer/Downloads/train.csv")

# View the first few rows of the dataset
head(data)

# Fit a simple linear regression model
model <- lm(SalePrice ~ GrLivArea, data = data)

# Display the model summary to get the regression coefficients (slope and intercept)
summary(model)

# Extract coefficients
coefficients <- coef(model)
slope <- coefficients[2]
intercept <- coefficients[1]

# Print the slope and intercept
cat("Slope:", slope, "\n")
cat("Intercept:", intercept, "\n")

ggplot(data, aes(x = GrLivArea, y = SalePrice)) +
  geom_point(color = "blue") +  # Scatter plot
  geom_smooth(method = "lm", color = "red") +  # Regression line
  labs(title = "House Prices vs Living Area",
       x = "Living Area (GrLivArea) in Square Feet",
       y = "Sale Price") +
  theme_minimal()


colnames(data)