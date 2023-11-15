
#### adding sentiment analysis

library(tidytext)
library(tidyr)
library(textdata)
library(janeaustenr)


### Basic Pre-processing

bbnj <- bbnj %>%
  mutate(                           
    comment_obs   = str_to_lower(comment_obs),                
    # turn all letters to lowercase
    comment_obs   = str_replace_all(comment_obs, "\n", " "),  
    # replace '/n' carriage return symbols
    comment_obs   = str_remove_all(comment_obs, "[:punct:]"), 
    # remove all punctuation
    # man    = str_count(comment_obs, "\\Wman "),       
    # by     = str_count(comment_obs, "\\Wby "),         # same
    # upon   = str_count(comment_obs, "\\Wupon ")        # same
  ) %>%
  rowwise() %>% # make future functions work rowwise
  mutate(
    length = length(str_split(comment_obs, " ")[[1]])  
    # calculate the length of the text (in words)
  )

## clean from special, non utf-8 characters and numbers
bbnj$comment_obs <- gsub("[^[:alnum:][:blank:]?&/\\-]", "", bbnj$comment_obs)
bbnj$comment_obs <- gsub("U00..", "", bbnj$comment_obs)
bbnj$comment_obs <- sub('[^ -~]', '', bbnj$comment_obs)
#bbnj$comment_obs <- gsub('[[:digit:]]+', '', bbnj$comment_obs)

## make sure encoding is fine 
bbnj$comment_obs <- iconv(bbnj$comment_obs, to = 'ASCII//TRANSLIT')


bbnj_sent <- bbnj


## also delete country names
find.string <- paste(unlist(Country), collapse = "|")
bbnj_sent$comment_obs <- gsub(find.string, replacement = "", x = bbnj_sent$comment_obs)


#### afinn vocabulary

text <- bbnj %>%
  select(observation, comment_obs, id_combined) %>% 
  group_by(id_combined) %>%
  mutate(all_text = paste(observation, comment_obs, collapse = " | "))

tidy_books <- text %>%
  group_by(id_combined) %>%
  mutate(
    id_combined = id_combined) %>%
  ungroup() %>%
  unnest_tokens(word, all_text)




sentiments <- tidy_books %>%
  inner_join(get_sentiments("afinn"))

sentiments <- sentiments %>% group_by(id_combined) %>%  
  mutate(avg_sent = (mean(value)))




sentiments_single <- sentiments[ !duplicated(sentiments$id_combined), ]



bbnj$sentiment_afinn <- sentiments_single$avg_sent[match(bbnj$id_combined, sentiments_single$id_combined)]
###



# delete NAs
bbnj_sent <- bbnj_sent %>% drop_na(comment_obs)

# delete observations with less than 10 characters
bbnj_sent$No_of_Chars<-nchar(gsub("[^a-z]","",bbnj_sent$comment_obs))

small <- bbnj_sent %>% filter(No_of_Chars <= 10)
large <- bbnj_sent %>% filter(No_of_Chars  > 10)
bbnj_sent <- bbnj_sent %>% filter(No_of_Chars  > 10)

## or less than 3 words
bbnj_sent <- bbnj_sent %>% filter(length  > 3)

## delete certain actors - if wished
bbnj_sent <- bbnj_sent %>% filter(actor != "president" & actor != "facilitator" 
                                  & actor != "secretariat")



## and only verbal observations
bbnj_sent <- filter(bbnj_sent, type_obs < 5)


## save variables in vector to later merge with word count & sentiment 
actor <- bbnj_sent$actor
dates <- bbnj_sent$date
author <- bbnj_sent$author
id_combined <- bbnj_sent$id_combined
actor_type <- bbnj_sent$actor_type
igc <- bbnj_sent$IGC
actor <- bbnj_sent$actor
package <- bbnj_sent$package_label

## extract text variable
obs <- bbnj_sent$comment_obs

require(quanteda)
require(LSX)

## tokenize text corpus and remove various features
# corp_sent <- corpus_reshape(corp_news, to =  "sentences")
# toks_sent <- corp_sent %>% 
#     tokens(remove_punct = TRUE, remove_symbols = TRUE, 
#            remove_numbers = TRUE, remove_url = TRUE) %>% 
#     tokens_remove(stopwords("en", source = "marimo")) %>%
#     tokens_remove(c("*-time", "*-timeUpdated", "GMT", "BST", "*.com"))  



## we already have a tokenized corpus from observations = obs 

toks_sent <- obs %>% 
  tokens(remove_punct = TRUE, remove_symbols = TRUE, 
         remove_numbers = TRUE, remove_url = TRUE) %>% 
  tokens_remove(stopwords("en")) %>%
  tokens_remove(c("*-time", "*-timeUpdated", "GMT", "BST", "*.com"))  


## create a document feature matrix from the tokens object
dfmat_sent <- toks_sent %>% 
  dfm() %>% 
  dfm_remove(pattern = "") %>% 
  dfm_trim(min_termfreq = 5)

topfeatures(dfmat_sent, 20)


## create seed words
## pre defined package version
seed <- as.seedwords(data_dictionary_sentiment)
print(seed)


## for negotiations it may make sense to determine two sets of keywords: 1 constructive engagement, 2 positive atmosphere

## own version
dictionary <- dictionary(list(constructive = c("flexib*", "open", "agree", "support*", "compromise", "constructive", "accept"),
                              destructive = c("violat*", "reject", "not flexible", "undermin*", "difficulties", "interfere", "disagree")))





## really not sure what these upper and lower parameters mean / influence here...

seed <- as.seedwords(dictionary, upper = 1, lower = 2)


## run LSS model

## with context words LSS model terms consist of words that are relevant to 
# the target dimension When the corpus contains documents about a specific 
# subject, model terms can be all the words in the corpus,
# excluding grammatical words and low-frequency words. 

## hence in my model I go without context word as all text is context specific
# and leave this chunk commented out

#pol <- textstat_context(toks_sent, "politi*")
#tmod_lss <- textmodel_lss(dfmat_sent, seeds = seed,
#                          terms = pol, k = 1000, cache = FALSE)


### Model 1
## negotiation specific = how helpful/constructive
# lets estimate model
tmod_lss1 <- textmodel_lss(dfmat_sent, seeds = seed,
                           terms = NULL, k = 300, cache = FALSE,
                           auto_weight = TRUE)


# which are the most constructive words?
head(coef(tmod_lss1), 20)
# which are the most destructive words?
tail(coef(tmod_lss1), 20)


# lets plot the polarity of the words in the corpus 
#textplot_terms(tmod_lss1, dictionary,max_words = 500)




# We reconstruct original articles from their sentences
# using dfm_group() before predicting polarity of documents.

dfmat_doc <- dfm_group(dfmat_sent)
dat <- docvars(dfmat_doc)

## add variables from original data for analysis 
dat$date <- dates
dat$date <- as.Date(dat$date)
dat$author <- author
dat$id_combined <- id_combined
dat$actor_type <- actor_type
#dat$sent <- sentiment
dat$igc <- igc
dat$actor <- actor
dat$package <- package

## add the sentiment form the LSX model for both 
# dictionaries (constructive & positive) as fit1 & fit2
dat$fit1 <- predict(tmod_lss1, newdata = dfmat_doc)


## make data as numeric
#dat$sent <- as.numeric(dat$sent)
dat$fit1 <- as.numeric(dat$fit1)
#dat$fit2 <- as.numeric(dat$fit2)
dat$igc <- as.numeric(dat$igc)



bbnj$sentiment_constr <- dat$fit1[match(bbnj$id_combined, dat$id_combined)]

