# Copy the original dataset 'bbnj' to 'bbnj_complete'
bbnj_complete <- bbnj

# Export the 'bbnj_complete' dataset to CSV and Excel formats
write.csv(bbnj_complete, file = "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_complete.csv", row.names = FALSE)
write_xlsx(bbnj_complete, "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_complete.xlsx")

# Re-assign the 'temp' dataset to 'bbnj'
bbnj <- temp

# Replace NA values in the 'double' column with 0
bbnj$double[is.na(bbnj$double)] <- 0 
################################### Anonymization Process

# Load the names list for anonymization
source("//share.univie.ac.at/maripoldata/5_Research/WP1/collected data/3_working data/names.r")

# Convert names and actors to lowercase for case-insensitive matching
names <- str_to_lower(names)  
bbnj$actor <- str_to_lower(bbnj$actor)

# Anonymize names in 'observation', 'comment_obs_original', and 'comment_obs_gpt4_corrected'
bbnj$observation_subbed <- gsub(paste(names, collapse = '|'), ' [removed for anonymity] ', bbnj$observation)
bbnj$comment_obs_original_subbed <- gsub(paste(names, collapse = '|'), ' [removed for anonymity] ', bbnj$comment_obs_original)
bbnj$comment_obs_gpt4_subbed <- gsub(paste(names, collapse = '|'), ' [removed for anonymity] ', bbnj$comment_obs_gpt4_corrected)

# Optionally: Anonymize any other comments (uncomment if needed)
# bbnj$comment_obs_subbed <- gsub(paste(names, collapse=' | '), ' [removed for anonymity] ', bbnj$comment_obs)

# Convert 'cmts' and 'all' to lowercase for matching
cmts <- str_to_lower(cmts)  
all <- str_to_lower(all)

# Anonymize actors and 'obo' field based on the names list
bbnj$actor <- ifelse(bbnj$actor %in% names, "[removed for anonymity]", bbnj$actor)
bbnj$obo <- ifelse(bbnj$obo %in% names, "[removed for anonymity]", bbnj$obo)

# Further anonymization for specific actor names
bbnj$actor[bbnj$actor == "dire"] <- "[removed for anonymity]"
bbnj$actor[bbnj$actor == "gina"] <- "[removed for anonymity]"
bbnj$actor[bbnj$actor == "eden"] <- "[removed for anonymity]"

# Anonymize 'actor' field based on 'cmts' and 'all'
bbnj$actor <- ifelse(bbnj$actor %in% cmts, "facilitator", bbnj$actor)
bbnj$actor <- ifelse(bbnj$actor %in% all, "all", bbnj$actor)

################################### Replace Original Columns with Anonymized Data

# Replace original columns with anonymized versions
bbnj$observation <- bbnj$observation_subbed
bbnj$comment_obs_original <- bbnj$comment_obs_original_subbed
bbnj$comment_obs_gpt4_corrected <- bbnj$comment_obs_gpt4_subbed

# Optionally: remove the intermediate columns if no longer needed
bbnj <- bbnj %>%
  select(-observation_subbed, -comment_obs_original_subbed, -comment_obs_gpt4_subbed)



################################### create anonymized list of country names

# Create a data frame 'translate_st' that will hold the anonymized state names
translate_st <- data.frame(Country = Country)

# Generate a shuffled sequence of unique numbers, one for each country
# 'sample()' is used to generate a unique, non-repeating sequence of numbers
# from 1 to the length of the 'Country' list.
random_numbers <- sample(1:length(Country), length(Country), replace = FALSE)

# Loop through each country in the 'Country' list to assign a unique anonymized state name
for (i in seq_along(Country)) {
  # Create a unique anonymized state name using the pre-generated 'random_numbers'
  # 'random_numbers[i]' ensures that each country is assigned a unique number
  a <- paste("anonymized_state", random_numbers[i], sep = "_")
  
  # Assign the anonymized name to the 'a' column in 'translate_st'
  translate_st$a[i] <- a
  
  # Record the index of the country in column 'V1' for future reference
  translate_st$V1[i] <- i
}



### Anonymizing Actor, OBO, and Alliance Fields in the Dataset (bbnj) Based on Countries, Alliances, IGOs, and UN Bodies

# The purpose of this code is to anonymize specific columns (`actor`, `obo`, `alliance`) in the `bbnj` dataset
# for certain negotiation formats. It uses translation tables to replace actual country, alliance, IGO, and UN body
# names with anonymized identifiers.

################################### Anonymizing Based on Country List

# Loop through each country in the 'Country' list
for (i in Country) {
  # Anonymize the 'actor' field for relevant negotiation formats
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                         bbnj$actor == print(i),  
                         print(translate_st[translate_st$Country == i, ]$a),  # Replace with the anonymized state name from 'translate_st'
                         bbnj$actor)
  
  # Anonymize the 'obo' field (on behalf of) for relevant negotiation formats
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                       bbnj$obo == print(i),  
                       print(translate_st[translate_st$Country == i, ]$a),  # Replace with the anonymized state name
                       bbnj$obo)
  
  # Anonymize the 'alliance' field for relevant negotiation formats
  bbnj$alliance <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                            bbnj$alliance == print(i),  
                            print(translate_st[translate_st$Country == i, ]$a),  # Replace with the anonymized state name
                            bbnj$alliance)
}

################################### Anonymizing Based on Alliance List

# Create a translation table for alliances
translate_all <- c()
for (i in seq(1:length(unalliance))) {
  # Generate anonymized names for alliances, e.g., "anonymized_alliance_1", "anonymized_alliance_2", etc.
  a <- print(paste("anonymized_alliance", i, sep = "_"))
  trans <- as.data.frame(cbind(unalliance[i], a))
  translate_all <- rbind(translate_all, trans)
}

# Loop through each alliance in the 'unalliance' list
for (i in unalliance) {
  # Anonymize the 'alliance' field for relevant negotiation formats
  bbnj$alliance <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                            bbnj$alliance == print(i),  
                            print(translate_all[translate_all$V1 == i, ]$a),  # Replace with anonymized alliance name
                            bbnj$alliance)
  
  # Anonymize the 'obo' field (on behalf of) for relevant negotiation formats
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                       bbnj$obo == print(i),  
                       print(translate_all[translate_all$V1 == i, ]$a),  # Replace with anonymized alliance name
                       bbnj$obo)
  
  # Anonymize the 'actor' field for relevant negotiation formats
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                         bbnj$actor == print(i),  
                         print(translate_all[translate_all$V1 == i, ]$a),  # Replace with anonymized alliance name
                         bbnj$actor)
}

################################### Anonymizing Based on IGO (Intergovernmental Organizations) List

# Create a translation table for IGOs
translate_igo <- c()
for (i in seq(1:length(IGO))) {
  # Generate anonymized names for IGOs, e.g., "anonymized_igo_1", "anonymized_igo_2", etc.
  a <- print(paste("anonymized_igo", i, sep = "_"))
  trans <- as.data.frame(cbind(IGO[i], a))
  translate_igo <- rbind(translate_igo, trans)
}

# Loop through each IGO in the 'IGO' list
for (i in IGO) {
  # Anonymize the 'actor' field for relevant negotiation formats
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                         bbnj$actor == print(i),  
                         print(translate_igo[translate_igo$V1 == i, ]$a),  # Replace with anonymized IGO name
                         bbnj$actor)
  
  # Anonymize the 'obo' field (on behalf of) for relevant negotiation formats
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                       bbnj$obo == print(i),  
                       print(translate_igo[translate_igo$V1 == i, ]$a),  # Replace with anonymized IGO name
                       bbnj$obo)
}

################################### Anonymizing Based on UN Bodies

# Create a translation table for UN bodies
translate_un <- c()
for (i in seq(1:length(unbodies))) {
  # Generate anonymized names for UN bodies, e.g., "anonymized_igo_1", "anonymized_igo_2", etc.
  a <- print(paste("anonymized_igo", i, sep = "_"))
  trans <- as.data.frame(cbind(unbodies[i], a))
  translate_un <- rbind(translate_un, trans)
}

# Loop through each UN body in the 'unbodies' list
for (i in unbodies) {
  # Anonymize the 'actor' field for relevant negotiation formats
  bbnj$actor <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                         bbnj$actor == print(i),  
                         print(translate_un[translate_un$V1 == i, ]$a),  # Replace with anonymized UN body name
                         bbnj$actor)
  
  # Anonymize the 'obo' field (on behalf of) for relevant negotiation formats
  bbnj$obo <- ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals")) &
                       bbnj$obo == print(i),  
                       print(translate_un[translate_un$V1 == i, ]$a),  # Replace with anonymized UN body name
                       bbnj$obo)
}

## replacing the word after "on behalf of"...

bbnj <- bbnj %>%
  mutate(observation = ifelse((bbnj$negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", 
                                                       "informal informals")),
                       gsub("on behalf of \\w+", "on behalf of anonymous", observation),
                       observation))




################################## anonymize state names in text columns ("observation", "comment_obs" & "comment_obs_gpt4_corrected"




# Load the translation table, which contains a mapping of 'actor_full' (full actor names) to 'actor_new' (anonymized actor names).
translation_table <- read_excel("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/4_final data/Aussda database publications/translation_table.xlsx")
translation_table_simple <- translation_table %>% distinct(actor_new, .keep_all = TRUE)

# Filter the 'bbnj' dataset to only include rows with 'negotiation_format' being either "informal dialogues" or "informal informals".
bbnj_filtered <- bbnj %>% filter(negotiation_format %in% c("dialogue/webinar/briefing", "informal dialogues", "informal informals"))

# Initialize a new column 'observation_subbed' to store the updated (anonymized) version of 'observation'.
bbnj_filtered$observation_subbed <- bbnj_filtered$observation


translation_table_simple$actor_full <- str_to_lower(translation_table_simple$actor_full)


# Loop through each row of the 'translation_table_simple', replacing occurrences of full actor names ('actor_full')
# in the 'observation' column with the corresponding anonymized name ('actor_new').
for (i in seq_along(translation_table_simple$actor_full)) {
  full_actor <- translation_table_simple$actor_full[i]
  short_actor <- translation_table_simple$actor_new[i]
  
  # Replace the full actor name with the anonymized name, ensuring that only whole words are matched.
  bbnj_filtered$observation_subbed <- gsub(
    pattern = paste0("\\b", full_actor),  # Ensures we match the whole word (surrounded by word boundaries)
    replacement = paste0(" ", short_actor, " "), # Replace the full actor name with the anonymized version, adding spaces around it
    x = bbnj_filtered$observation_subbed,
    ignore.case = FALSE  # Case-sensitive replacement (since some names may be case-dependent)
  )
}

# Similar process for the 'comment_obs_original' column, initializing the new column 'comment_obs_original_subbed'
bbnj_filtered$comment_obs_original_subbed <- bbnj_filtered$comment_obs_original

# Replace the full actor names in 'comment_obs_original' with the anonymized names from 'translation_table_simple'.
for (i in seq_along(translation_table_simple$actor_full)) {
  full_actor <- translation_table_simple$actor_full[i]
  short_actor <- translation_table_simple$actor_new[i]
  
  # Replace the full actor name with the anonymized name, ensuring whole words are matched.
  bbnj_filtered$comment_obs_original_subbed <- gsub(
    pattern = paste0("\\b", full_actor),
    replacement = paste0(" ", short_actor, " "),
    x = bbnj_filtered$comment_obs_original_subbed,
    ignore.case = FALSE
  )
}

# adjust the lower-upper cases for the chat gpt corrected colummn
translation_table_simple$actor_full <- str_to_title(translation_table_simple$actor_full)
translation_table_simple$actor_full[translation_table_simple$actor_full=="Eu"] <- "EU"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Usa"] <- "USA"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Us"] <- "US"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Clam"] <- "CLAM"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Psids"] <- "PSIDS"
translation_table_simple$actor_full[translation_table_simple$actor_full=="G77+china"] <- "G77+China"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Caricom"] <- "CARICOM"

translation_table_simple$actor_full[translation_table_simple$actor_full=="Uk"] <- "UK"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Trinidad And Tobago"] <- "Trinidad and Tobago"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Antigua And Barbuda"] <- "Antigua and Barbuda"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Republic Of Korea"] <- "Republic of Korea"
translation_table_simple$actor_full[translation_table_simple$actor_full=="Federated States Of Micronesia"] <- "Federated States of Micronesia"


bbnj_filtered$comment_obs_chatgpt4_subbed <- bbnj_filtered$comment_obs_gpt4_corrected


# Replace full actor names in 'comment_obs_chatgpt4_subbed' with the anonymized names.
for (i in seq_along(translation_table_simple$actor_full)) {
  full_actor <- translation_table_simple$actor_full[i]
  short_actor <- translation_table_simple$actor_new[i]
  
  # Replace full actor name with the anonymized name, ensuring whole words are matched.
  bbnj_filtered$comment_obs_chatgpt4_subbed <- gsub(
    pattern = paste0("\\b", full_actor),
    replacement = paste0(" ", short_actor, " "),
    x = bbnj_filtered$comment_obs_chatgpt4_subbed,
    ignore.case = FALSE
  )
}

# Merge the original 'bbnj' dataset with the filtered and anonymized 'bbnj_filtered' dataset.
# This adds the new columns ('observation_subbed', 'comment_obs_original_subbed', etc.) back into 'bbnj'.
bbnj_new_complete <- merge(
  bbnj, 
  bbnj_filtered[, c("running_id", "observation_subbed2", "comment_obs_original_subbed2", "comment_obs_chatgpt4_subbed2")], 
  by = "running_id", 
  all = TRUE
)

# Handle missing values in the 'observation_subbed' column. If 'observation_subbed' is NA, use the original 'observation' value.
bbnj_new_complete$observation_subbed <- ifelse(
  is.na(bbnj_new_complete$observation_subbed),
  bbnj_new_complete$observation, 
  bbnj_new_complete$observation_subbed
)

# Similarly, handle missing values for 'comment_obs_original_subbed.y'. If it's NA, use the original 'comment_obs_original'.
bbnj_new_complete$comment_obs_original_subbed <- ifelse(
  is.na(bbnj_new_complete$comment_obs_original_subbed),
  bbnj_new_complete$comment_obs_original, 
  bbnj_new_complete$comment_obs_original_subbed
)

# Handle missing values for 'comment_obs_chatgpt4_subbed'. If it's NA, use 'comment_obs_gpt4_corrected'.
bbnj_new_complete$comment_obs_chatgpt4_subbed <- ifelse(
  is.na(bbnj_new_complete$comment_obs_chatgpt4_subbed),
  bbnj_new_complete$comment_obs_gpt4_corrected, 
  bbnj_new_complete$comment_obs_chatgpt4_subbed
)

# Handle missing values for the 'alliance' column. If 'alliance.y' is NA, use 'alliance.x'.
bbnj_new_complete$alliance.y <- ifelse(
  is.na(bbnj_new_complete$alliance.y),
  bbnj_new_complete$alliance.x, 
  bbnj_new_complete$alliance.y
)

# Handle missing values for the 'obo' column. If 'obo.y' is NA, use 'obo.x'.
bbnj_new_complete$obo.y <- ifelse(
  is.na(bbnj_new_complete$obo.y),
  bbnj_new_complete$obo.x, 
  bbnj_new_complete$obo.y
)

# Replace the original columns with the anonymized versions
bbnj_new_complete$observation <- bbnj_new_complete$observation_subbed
bbnj_new_complete$comment_obs_original <- bbnj_new_complete$comment_obs_original_subbed.y
bbnj_new_complete$comment_obs_gpt4_corrected <- bbnj_new_complete$comment_obs_chatgpt4_subbed


