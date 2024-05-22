bbnj_complete <- bbnj
write.csv(bbnj_complete, file = "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_complete.csv", row.names = F)
write_xlsx(bbnj_complete, "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_complete.xlsx")


bbnj <- temp

bbnj$double[is.na(bbnj$double)] <- 0 
  
  
################################### anonymization

source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/names.r")

### anonymize names in observations

names <- str_to_lower(names)  
bbnj$actor <- str_to_lower(bbnj$actor)

bbnj$observation <- gsub(paste(names, collapse='|'), ' [removed for anonymity] ', bbnj$observation)
bbnj$comment_obs_original <- gsub(paste(names, collapse='|'), ' [removed for anonymity] ', bbnj$comment_obs_original)
bbnj$comment_obs_gpt4_corrected <- gsub(paste(names, collapse='|'), ' [removed for anonymity] ', bbnj$comment_obs_gpt4_corrected)

# bbnj$comment_obs <- gsub(paste(names, collapse=' | '), ' [removed for anonymity] ', bbnj$comment_obs)
# bbnj$comment_obs <- gsub(paste(names, collapse='| '), ' [removed for anonymity] ', bbnj$comment_obs)

cmts <- str_to_lower(cmts)  
all <- str_to_lower(all)  


bbnj$actor <- ifelse(bbnj$actor %in% names, "[removed for anonymity]", bbnj$actor)
bbnj$obo <- ifelse(bbnj$obo %in% names, "[removed for anonymity]", bbnj$obo)

bbnj$actor[bbnj$actor=="dire"] <- "[removed for anonymity]"
bbnj$actor[bbnj$actor=="gina"] <- "[removed for anonymity]"
bbnj$actor[bbnj$actor=="eden"] <- "[removed for anonymity]"

bbnj$actor <- ifelse(bbnj$actor %in% cmts, "facilitator", bbnj$actor)
bbnj$actor <- ifelse(bbnj$actor %in% all, "all", bbnj$actor)


# check
# 
# table(grepl(paste(names, collapse='|'), bbnj$observation))
# filter(bbnj,grepl(paste(names, collapse='|'), bbnj$observation))
# 
# table(grepl(paste(names, collapse='|'), bbnj$comment_obs))
# filter(bbnj,grepl(paste(names, collapse='|'), bbnj$comment_obs))


#### anonymize actors in informals , dialogues and 

# bbnj$actor <- ifelse(bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
#                                                     "informal informals"), "[removed for anonymity]", bbnj$actor)


### from country list
# translate_st <- c()
# for (i in seq (1:length(Country))) {
#   a <- print(paste("anonymized_state", i, sep="_"))
#   trans <- as.data.frame(cbind(Country[i], a))
#   translate_st <- rbind(translate_st, trans)
# }
# 


translate_st <- data.frame(Country = Country)

for (i in seq_along(Country)) {
  a <- paste("anonymized_state", sample(1:length(Country), 1), sep="_")  # Randomly allocate i-number
  translate_st$a[i] <- a
  translate_st$V1[i] <- i
}


for (i in Country) {
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                       "informal informals")) &
                         bbnj$actor == print(i),  print(translate_st[translate_st$Country == i,]$a),
                       bbnj$actor)
  
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                     "informal informals")) &
                       bbnj$obo == print(i),  print(translate_st[translate_st$Country == i,]$a),
                     bbnj$obo)
  
  bbnj$alliance <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                     "informal informals")) &
                       bbnj$alliance == print(i),  print(translate_st[translate_st$Country == i,]$a),
                     bbnj$alliance)
}




### from alliance list
translate_all <- c()
for (i in seq (1:length(unalliance))) {
  a <- print(paste("anonymized_alliance", i, sep="_"))
  trans <- as.data.frame(cbind(unalliance[i], a))
  translate_all <- rbind(translate_all, trans)
}

for (i in unalliance) {
  bbnj$alliance <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                          "informal informals")) &
                            bbnj$alliance == print(i),  print(translate_all[translate_all$V1 == i,]$a),
                          bbnj$alliance)
						  
						  
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                          "informal informals")) &
                            bbnj$obo == print(i),  print(translate_all[translate_all$V1 == i,]$a),
                          bbnj$obo)						  
  
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                       "informal informals")) &
                         bbnj$actor == print(i),  print(translate_st[translate_all$V1 == i,]$a),
                       bbnj$actor)
						  }


### from IGO list
translate_igo <- c()
for (i in seq (1:length(IGO))) {
  a <- print(paste("anonymized_igo", i, sep="_"))
  trans <- as.data.frame(cbind(IGO[i], a))
  translate_igo <- rbind(translate_igo, trans)
}

for (i in IGO) {
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                       "informal informals")) &
                         bbnj$actor == print(i),  print(translate_igo[translate_igo$V1 == i,]$a),
                       bbnj$actor)
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                     "informal informals")) &
                       bbnj$obo == print(i),  print(translate_igo[translate_igo$V1 == i,]$a),
                     bbnj$obo)			
}


### for UN bodies


translate_un <- c()
for (i in seq (1:length(unbodies))) {
  a <- print(paste("anonymized_igo", i, sep="_"))
  trans <- as.data.frame(cbind(unbodies[i], a))
  translate_un <- rbind(translate_un, trans)
}

for (i in unbodies) {
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                       "informal informals")) &
                         bbnj$actor == print(i),  print(translate_un[translate_un$V1 == i,]$a),
                       bbnj$actor)
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                       "informal informals")) &
                         bbnj$obo == print(i),  print(translate_un[translate_un$V1 == i,]$a),
                       bbnj$obo)
}

## replacing the word after "on behalf of"...

bbnj <- bbnj %>%
  mutate(observation = ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                       "informal informals")),
                       gsub("on behalf of \\w+", "on behalf of anonymous", observation),
                       observation))


