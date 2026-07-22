library(wordcloud)
library(tm)

text <- c("Great service and fast delivery", "Excellent product quality", "Average support response", "Very satisfied with service", "Great experience overall")
corpus <- Corpus(VectorSource(text))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)

wordcloud(corpus, max.words = 50, random.order = FALSE, colors = brewer.pal(8, "Dark2"))