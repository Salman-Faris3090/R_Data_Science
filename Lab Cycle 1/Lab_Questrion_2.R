ceaser_cipher <- function() {
  sentence <- readline(prompt = "Enter a sentence: ")
  shift <- as.integer(readline(prompt = "Enter the shift key for encryption: "))



characters <- " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

encrypted <- ""


chars <- unlist(strsplit(sentence, NULL))

for (char in chars) {
  if (char %in% strsplit(characters,NULL)[[1]]) {
    pos <- which(strsplit(characters,NULL)[[1]] == char)
    new_pos <- (pos + shift -1) %% nchar(characters) +1
    encrypted <- paste0(encrypted, substring(characters,new_pos,new_pos))
  }
  else{
    encrypted <- paste0(encrypted,char)
  }
}


cat("The Encrypted Sentence is: ",encrypted,"\n")

}

ceaser_cipher()