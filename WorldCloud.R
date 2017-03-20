


###UN Social Media###


#load the csv.file
tweets.text<-read.csv("tweets.csv")

#extract the text column
tweets.text<-tweets.text$text

#convert all text to lower case
tweets.text <- tolower(tweets.text)

# Replace blank space ("rt")
tweets.text <- gsub("rt", "", tweets.text)

# Replace @UserName
tweets.text <- gsub("@\\w+", "", tweets.text)

# Remove punctuation
tweets.text <- gsub("[[:punct:]]", "", tweets.text)

# Remove links
tweets.text <- gsub("http\\w+", "", tweets.text)

# Remove tabs
tweets.text <- gsub("[ |\t]{2,}", "", tweets.text)

# Remove blank spaces at the beginning
tweets.text <- gsub("^ ", "", tweets.text)


# Remove blank spaces at the end
tweets.text <- gsub(" $", "", tweets.text)


#remove the unrelated words 
gsub("edu00a0u00bdedu00b2u0089edu00a0u00bcedu00bdu0087","",tweets.text)

#install tm 
install.packages("tm")
library("tm")

#create corpus
tweets.text.corpus <- Corpus(VectorSource(tweets.text))

#clean up by removing stop words
tweets.text.corpus <- tm_map(tweets.text.corpus, function(x)removeWords(x,stopwords()))

tweets.text.corpus<-tm_map(tweets.text.corpus, removeWords,c("edu00a0u00bdeu00b2u0089edu00a0u00bcedu00bdu0087","diabetesdiabeticsuppliestype2diabetestyle1diabetes"))

install.packages("wordcloud")
library("wordcloud")

#generate wordcloud
wordcloud(tweets.text.corpus,min.freq = 2, scale=c(7,0.5),colors=brewer.pal(8, "Dark2"),  random.color= TRUE, random.order = FALSE, max.words = 150)




