# Load the mtcars dataset (it is built-in in R)
data("mtcars")

# View the structure of the dataset to confirm the variables
str(mtcars)

# Perform the Pearson correlation test between horsepower (hp) and miles per gallon (mpg)
cor_test_result <- cor.test(mtcars$hp, mtcars$mpg, method = "pearson")

# Display the results of the test
print(cor_test_result)
