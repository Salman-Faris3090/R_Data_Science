boxplot(hp ~ gear, data = mtcars,
        xlab = "Number of Gears", ylab = "Horsepower",
        main = "Box Plot of Horsepower by Number of Gears",
        col = c("lightblue", "lightgreen", "lightpink"),
        outpch = 8, outcol = "red")

points(jitter(as.numeric(factor(mtcars$gear)), amount = 0.2), 
       mtcars$hp, 
       pch = c(15, 20, 19)[factor(mtcars$gear)],
       col = "red",
       cex = 1.5)

legend("topright", legend = unique(mtcars$gear), 
       pch = c(16, 17, 18), title = "Gears")

outliers <- boxplot.stats(mtcars$hp)$out

text(rep(3.2, length(outliers)), outliers, 
     labels = rownames(mtcars)[mtcars$hp %in% outliers], 
     pos = 4, cex = 0.8)