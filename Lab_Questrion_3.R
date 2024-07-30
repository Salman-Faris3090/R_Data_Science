student <- function() {
  students <- list()
  num_students <- as.integer(readline(prompt = "Enter the number of students: "))

for (i in 1:num_students) {
  cat("Enter the details of the student",i,"\n")
  
  name <- readline(prompt = "Name: ")
  
  
  repeat{
    age <- as.integer(readline(prompt = "Age: "))
    if (!is.na(age) && age > 0) break
    cat("Invalid Age. Enter a positive Age.")
  }
  repeat{
    grade <- toupper(readline(prompt = "Grade (A, B, C, D, F): "))
    if (grade %in% c("A", "B", "C", "D", "F")) break
    cat("Invalid Grade. Enter a valid one")
  }
  
  students[[i]] <- list(name = name, age = age, grade = grade)
  
}
  return(students)
}


calculate_average <- function(students) {
  valid_age <- sapply(students, function(student) student$age)
  average_age <- mean(valid_age)
  return(average_age)
}

# Main Function

main <- function(){
  students <- student()
  
  
  if (length(students) > 0) {
    average_age <- calculate_average(students)
    cat("The average age of students is: ", average_age,"\n")
  } else{
    cat("No valid recoed to calculate Age")
  }
}

main()