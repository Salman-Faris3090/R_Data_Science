install.packages("ggplot2")
library(ggplot2)

file_path <- file.choose() 
data <- read.csv(file_path)

str(data)
summary(data)

house_data <- data.frame(price = data$SalePrice, size = data$GrLivArea)

model <- lm(price ~ size, data = house_data)

intercept <- coef(model)[1]
slope <- coef(model)[2]
cat("Intercept:", intercept, "\nSlope:", slope, "\n")

ggplot(house_data, aes(x = size, y = price)) +
  geom_point(color = "blue", alpha = 0.6) +  
  geom_abline(intercept = intercept, slope = slope, color = "red", size = 1) +
  labs(title = "House Prices vs Size",
       x = "Size (Square Feet)",
       y = "Price (USD)") +
  theme_minimal()
