library(twitteR)
setup_twitter_oauth('7nMVOHZ1KjcBDWJV2PJgtw','dhmIVLaoY4jL3jLGEU3uPH9TkE7Xsnv7JC0jyeY54')
tl <- userTimeline('milisdad', n=1000, includeRts = TRUE)
tl.df <- twListToDF(tl)
tl.df$text <- iconv(tl.df$text, to='utf-8-mac')
write.csv(tl.df,'~/Documents/R/milisdad.csv')