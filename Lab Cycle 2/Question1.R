data(iris)
png("iris_scatter.png",width = 1920, height = 1080, res = 300)
plot(iris$Sepal.Length, iris$Petal.Length, xlab = "Sepal Length (cm)", ylab = "Petal Length (cm)",  main = "Scatterplot of Sepal Length vs Petal Length in Iris Dataset", pch = 19, col = "red")
dev.off()
  