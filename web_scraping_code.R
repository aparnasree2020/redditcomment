library(tidyverse)
library(RedditExtractoR)


# content<-reddit_content("https://www.reddit.com/r/worldnews/")
content = get_reddit(search_terms = "virus",wait_time = 2)
typeof(content)
write.csv(content,file="worldnews_virus.csv",row.names = FALSE)

content = get_reddit(search_terms = "news",wait_time = 2)
typeof(content)
write.csv(content,file="worldnews_sports.csv",row.names = FALSE)

#Both these csvs are combined to get worldnews_test3.csv