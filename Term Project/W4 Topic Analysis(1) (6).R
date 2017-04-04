#Sai Akshay Singh Pratap -- Topic classification
#install the necessary packages
install.packages("readr")
install.packages("plyr")
install.packages("stringr")
install.packages("googleVis")
install.packages("stringi")
install.packages("magrittr")
install.packages("dplyr")


library(readr)
gear <- read_delim("Currents.RDS", ";", escape_double = FALSE, trim_ws = TRUE)
#tweets <- gear$tweettext

#********************************************
#         Topic Analysis
#********************************************
sports.words = scan('Sports_Word.txt', what='character', comment.char=';')

score.topic = function(sentences, dict, .progress='none')
{
  require(plyr)
  require(stringr)
  require(stringi)
  
  # we got a vector of sentences. plyr will handle a list
  # or a vector as an "l" for us
  # we want a simple array of scores back, so we use
  # "l" + "a" + "ply" = "laply":
  scores = laply(sentences, function(sentence, dict) {
    
    # clean up sentences with R's regex-driven global substitute, gsub():
    sentence = gsub('[[:punct:]]', '', sentence)
    sentence = gsub('[[:cntrl:]]', '', sentence)
    sentence = gsub('\\d+', '', sentence)
    # and convert to lower case:
    sentence = tolower(sentence)
    
    # split into words. str_split is in the stringr package
    word.list = str_split(sentence, '\\s+')
    # sometimes a list() is one level of hierarchy too much
    words = unlist(word.list)
    
    # compare our words to the dictionaries of positive & negative terms
    topic.matches = match(words, dict)
    
    # match() returns the position of the matched term or NA
    # we just want a TRUE/FALSE:
    topic.matches = !is.na(topic.matches)
    
    # and conveniently enough, TRUE/FALSE will be treated as 1/0 by sum():
    score = sum(topic.matches)
    
    return(score)
  }, dict, .progress=.progress )
  
  topicscores.df = data.frame(score=scores, text=sentences)
  return(topicscores.df)
}

topic.scores= score.topic(tweets, sports.words, .progress='text')
topic.mentioned = subset(topic.scores, score !=0)

N= nrow(topic.scores)
Nmentioned = nrow(topic.mentioned)

dftemp=data.frame(topic=c("Mentioned", "Not Mentioned"), 
                  number=c(Nmentioned,N-Nmentioned))


library("googleVis")

Pie <- gvisPieChart(dftemp)
plot(Pie)

