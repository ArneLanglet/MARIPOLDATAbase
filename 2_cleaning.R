### BBNJ data 2 - data cleaning and manipulation
### Arne Langlet, 11.10.2023

# file 2 
# this file cleans the data, fills in empty data, replaces spelling mistakes etc.

# Load necessary libraries
library(tidyverse)
library(readxl)
library(data.table)
library(openxlsx)
library(lubridate)
library(stringr)
library(writexl)

# Clean the environment
rm(list = ls())
gc()

# Load the data from a saved RData file
load("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj.RData")

# Remove the first column from the loaded data
bbnj <- bbnj[, -1]

# Data Cleaning and Manipulation

# Convert text columns to lowercase
columns_to_lowercase <- c("actor", "observation", "comment_obs", "issue_detail", "option_detail", "negotiation_format", "IGC", "section_title")
bbnj <- bbnj %>%
  mutate_at(vars(columns_to_lowercase), tolower)

# Capitalize the 'actor' column (title case)
bbnj$actor <- str_to_title(bbnj$actor)


################# observation ID
bbnj$id_num <- as.numeric(bbnj$id_num)
bbnj <- mutate(bbnj,id_combined = paste(author, id_num, sep ='_'))

bbnj <- bbnj[order(bbnj$author, bbnj$id_num),] 


################# delete nonsensical observations / private notes or interviews
bbnj <- filter(bbnj, side_main != "interview" | is.na(side_main))
bbnj <- filter(bbnj, id_combined != "AL_2398")
bbnj <- filter(bbnj, id_combined != "AL_199")
bbnj <- filter(bbnj, id_combined != "AL_1101")
bbnj <- filter(bbnj, type_obs != "GAP" | is.na(type_obs))

# delete interviews & informal talks
bbnj <- filter(bbnj, type_obs != 9 | is.na(type_obs))
bbnj <- filter(bbnj, type_obs != 8 | is.na(type_obs))

# delete chat entries
bbnj <- bbnj %>% filter(!grepl("an alle:", comment_obs))
bbnj <- bbnj %>% filter(!grepl("chat entry", observation))




## mainstream values


#################### all text cleaning

temp <- bbnj
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/text.r")
bbnj <- temp

#################### packages
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/packages.r")

#################### actors
temp <- bbnj
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/actors.r")


#################### date & time

source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/datetime.r")

#################### speaking time (diff) variable and double 
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/double.r")

source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/diff_time.r")


#################### type of observation + label
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/type_obs.r")



#################### actor_type
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/actor_type.r")



#################### alliance
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/alliances.r")


#################### on behalf of...
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/obo.r")


#################### negotiation format
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/negformat.r")



#################### article title
temp <- bbnj
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/arttitle.r")
bbnj <- temp


#################### section title
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/sectiontitle.r")


#################### pro/contra variable

source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/procontra.r")


#################### mood

source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/mood.r")


#################### issue scientific?
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/scientific.r")


#################### sentiment analysis variables 
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/sentiment.r")


#################### webcast, enb reports draft links
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/links.r")



#################### anonymization
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/bbnj_database/anonymization.r")










## delete id & author
bbnj <- bbnj %>% select(-c("author", "id_num", "folder", "name"))


### delete 4 variables: bbnj$department, bbnj$function_pers, bbnj$person_scientific, length, "link"

bbnj <- bbnj %>% select(-c("department", "function_pers", "person_scientific", "length"))



### order dataframe columns

# reorder columns by name
colnames(bbnj)
col_order <- c("type_obs",
               "type_label",
               "actor",
               "actor_type",
               "actor_type2", 
               "alliance",
               "obo",
               "un_group", 
               "observation"
               ,"comment_obs"
               , "package" 
               , "package_label"
               , "section_title"
               , "art_title"
               , "subsection"               
               , "issue_detail"                
               , "option_detail"                
               , "pro_contra" 
               , "draft"
               , "IGC"
               , "date"
               , "time"
               , "statement_link"
               , "enb"
               , "webcast"
               ,"unique_time"
               , "side_main"
               , "negotiation_format"                    
               , "negotiation_site"  
               , "language"
               , "double"
               , "time_difference"
               , "routine_mood_formality"
               , "statement_scientific_binary" 
               , "statement_scientific_qual"
               , "sentiment_afinn"
               , "sentiment_constr"
               ,"id_combined"                

)

colnames(bbnj)
bbnj <- bbnj[, col_order]







bbnj_full <- bbnj

### save total workspace0
save.image(file = "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_clean.RData")


