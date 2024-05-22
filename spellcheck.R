library(hunspell)
library(quanteda)
library(dplyr)
library(stringr)

#bbnj <- read.csv("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/4_final data/bbnj_full.csv")




text <- bbnj$comment_obs

quanteda::tokens(text)

correct_text <- function(text) {

  # Check if the text is empty or NA and skip processing if so
  if (text == "" | is.na(text)) {
    return("")
  }
  
  # Proceed with processing otherwise
  text_tokens <- quanteda::tokens(text)
  words <- unlist(text_tokens)
  
  # If after unlisting the tokens list is empty, return an empty dataframe
  if (length(words) == 0) {
    return("")
  }
  
  # Create dataframe
  texttable <- data.frame(words = words, stringsAsFactors = FALSE) %>%
    mutate(id = row_number(),  # Use row_number() to ensure alignment
           error = hunspell_check(words)) %>%
    relocate(id)
  


texttable2 <- texttable %>%
  # add suggestions
  dplyr::mutate(suggestions = ifelse(error == F, 
                                     paste0(hunspell_suggest(words), ", "), 
                                     ""),
                # clean suggestions
                suggestions = stringr::str_remove_all(suggestions, fixed("c(")),
                suggestions = stringr::str_remove_all(suggestions, fixed(")")),
                suggestions = stringr::str_remove_all(suggestions, ", {0,1}$")
  )


texttable3 <- texttable2 %>%
  # replace errors with the first suggestion
  dplyr::mutate(corrected = dplyr::case_when(error == T ~ words,
                                             error == F ~ stringr::str_remove_all(suggestions, '\\", .*'),
                                             T ~ words)) %>%
  # clean the corrected words
  dplyr::mutate(corrected = stringr::str_remove_all(corrected, '^\\"')) %>%
  # insert words where we do not want the suggestions but the original word
  dplyr::mutate(corrected = dplyr::case_when(words %in% Country |
                                               words %in% IGO |
                                               words %in% unbodies |
                                               words %in% unag |
                                               words %in% unepcon |
                                               words %in% unalliance |
                                               words %in% sc |
                                               words %in% NGO |
                                               words %in% business |
                                               words %in% unalliance |
                                               words %in% subs |
                                               words %in% signs |
                                               words %in% igc ~ words,
                                             T ~ corrected))


correctedtext <- paste0(texttable3$corrected, collapse = " ") %>%
  stringr::str_replace_all(" \\.", ".")
return(correctedtext) }



corrected_texts <- sapply(text, correct_text)


bbnj$dictionary_spellcheck <- corrected_texts

#write.csv(bbnj, "bbnj.csv")



