paragraph = "Artificial Intelligence is transforming various industries by automating tasks, enhancing decision-making, and providing innovative solutions. From healthcare to finance, AI's applications are vast and growing. Machine learning algorithms analyze data, recognizing patterns and predicting outcomes. As AI evolves, ethical considerations and regulations become increasingly important to ensure responsible use."

# Counting the number of words
words <-unlist(strsplit(paragraph, "\\s+"))
cat("The total number of words = ", length(words))

#Calculating the Average word length
word_length <-nchar(words)
Average_Length <-mean(word_length)
cat("The Average Length of the wods are =", Average_Length)

#Finding the longest word from the paragraph
Longest_Word <-words[which.max(nchar(words))]
cat("The Longest word of the Paragraph is =",Longest_Word)

#Replacing Specific Words
old_word <-"to"
new_word <-"and"
modified_paragraph <-gsub(paste0("\\b",old_word,"\\b"),new_word, paragraph)
cat("Modified Paragraph is =",modified_paragraph)


new <-unlist(strsplit(modified_paragraph, "\\s+"))
cat("The total number of words = ", length(new))
