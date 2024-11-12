# Load the mtcars dataset (it is built-in in R)
data("mtcars")

# Convert the 'gear' column to a factor as it represents categorical data
mtcars$gear <- as.factor(mtcars$gear)

# Perform a one-way ANOVA test to compare the mean displacement (disp) across different gear types
anova_result <- aov(disp ~ gear, data = mtcars)

# Display the summary of the ANOVA test
summary(anova_result)
