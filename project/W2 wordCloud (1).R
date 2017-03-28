# Install necessary packages
install.packages('tm')
install.packages('RColorBrewer')
install.packages('wordcloud')

library('tm')
library('RColorBrewer')
library('wordcloud')

Tablet <- readRDS("Tablet.RDS")
tweets  <- Tablet$MESSAGE_BODY

Clean.text = function(x)

#********************************************
#         Word Cloud
#********************************************
corpus = Corpus(VectorSource(Tablet))
corpus = Corpus(VectorSource(Tablet))
# create term-document matrix
tdm = TermDocumentMatrix(
  corpus,
  control = list(
    wordLengths=c(3,20),
    removePunctuation = TRUE,
    stopwords = c("the", "a", stopwords("english")),
    removeNumbers = TRUE, tolower = TRUE) )

# convert as matrix
tdm = as.matrix(tdm)

# get word counts in decreasing order
word_freqs = sort(rowSums(tdm), decreasing=TRUE) 

#check top 50 most mentioned words
head(word_freqs, 50)

#remove the top words which don’t generate insights such as "the", "a", "and", etc.
word_freqs = word_freqs[-(1)]  #Here “1” is 1st word in the list we want to remove 

# create a data frame with words and their frequencies
dm = data.frame(word=names(word_freqs), freq=word_freqs)

#Plot corpus in a clored graph; need RColorBrewer package
wordcloud(head(dm$word, 50), head(dm$freq, 50), random.order=FALSE, colors=brewer.pal(8, "Dark2"))



