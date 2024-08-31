reverse_string <- function(input_string) {
  split_string <- strsplit(input_string, NULL)[[1]]
  reversed_string <- rev(split_string)
  output_string <- paste(reversed_string, collapse = "")
  
  print(paste("Input string:", input_string))
  print(paste("Reversed string:", output_string))
  
  if (input_string == output_string) {
    cat("The given string", input_string, "is a Palindrome\n")
  } else {
    cat("The given string", input_string, "is not a Palindrome\n")
  }
}


reverse_string("malayalam")
