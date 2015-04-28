library(twitteR)
setup_twitter_oauth('','')
tl <- userTimeline('milisdad', n=1000, includeRts = TRUE)
tl.df <- twListToDF(tl)
tl.df$text <- iconv(tl.df$text, to='utf-8-mac')
write.csv(tl.df,'~/Documents/R/milisdad.csv')
