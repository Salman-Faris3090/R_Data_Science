sum_series <- function(n){
  sum <- 0
  sign <- 1
  
  for (i in 1:n) {
    term <- sign * (i/(2*i-1))
    sum <- sum + term
    sign <- sign * -1
  }
  
  return(sum)
}

num_terms <- as.integer(readline(prompt = "Enter the number of terms: "))


series_sum <- sum_series(num_terms)


cat("The sum of series upto ",num_terms, " terms is: ", series_sum, "\n")