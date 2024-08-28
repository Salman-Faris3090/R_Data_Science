data(mtcars)
cylinder <- table(mtcars$cyl, mtcars$am)
colors <- c("red","green")
barplot(cylinder, beside = TRUE, col = colors,
main = "Number of Cars by Cylinder count and Transmission Type",
xlab = "Number of Cylinders",
ylab = "Frequency",
legend = c("Automatic", "Manual"),
args.legend = list(title = "Transmission", x = "topright"))
grid()