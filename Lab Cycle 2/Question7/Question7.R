install.packages("ggplot2")
library(ggplot2)

covid_data <- read.csv(file.choose())

covid_data$Date <- as.Date(covid_data$Date, format = "%Y-%m-%d")

daily_cases <- aggregate(Confirmed ~ Date, data = covid_data, sum, na.rm = TRUE)

ggplot(daily_cases, aes(x = Date, y = Confirmed)) +
  geom_line(color = "blue") +
  labs(title = "Global COVID-19 Confirmed Cases Over Time", 
       x = "Date",
       y = "Number of Confirmed Cases") +
  theme_minimal()
