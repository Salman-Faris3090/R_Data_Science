generate <- function(length) {
 lower <- "abcdefghijklmnopqrstuvwxyz"
 upper <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 numbers <- "0123456789"
 spl_char <- "!@#$%^&*()_-+=[]{}:;,.<>?/~|"
 
 
 all_chars <- paste0(lower, upper, numbers, spl_char)

 
 password <- c(sample(strsplit(lower, NULL)[[1]],1),
               sample(strsplit(upper, NULL)[[1]],1),
               sample(strsplit(numbers, NULL)[[1]],1),
               sample(strsplit(spl_char, NULL)[[1]],1))
 
 
 
 remaining_Length <- length - 4
 if (remaining_Length >0){
   password <- c(password, sample(strsplit(all_chars, NULL)[[1]], remaining_Length, replace = TRUE))
 }
 
 password <- sample(password)
 
 return(paste0(password, collapse = ""))
}

main <- function(){
  length <- as.integer(readline(prompt = "Enter the Legth of the Password: "))
  if (!is.na(length) && length >=4) {
    password <- generate(length)
    cat("The Generated Password is: ",password,"\n")
  } else {
    cat("Invalid Length. Enter length greater than or equal to 4.\n")
  }
  
}

main()