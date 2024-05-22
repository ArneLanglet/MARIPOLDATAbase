library(httr)
library(dplyr)
library(stringr)

bbnj_full <- read.csv("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_full.csv")

example_data <- bbnj_full

example_data <- bbnj %>% filter(!is.na(comment_obs) )
example_data <- example_data %>% filter(comment_obs !="" )




source("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/MARIPOLDATAbase/groups.R")

exemptions_list <- c(IGO, unbodies, unag, unepcon, 
                business, subs, igc)

## chat gpt simple 
hey_chatGPT <- function(answer_my_question) {
  chat_GPT_answer <- POST(
    url = "https://api.openai.com/v1/chat/completions",
    add_headers(Authorization = paste("Bearer", my_API)),
    content_type_json(),
    encode = "json",
    body = list(
      model = "gpt-4-0125-preview", #	gpt-3.5-turbo-1106
      temperature = 0,
      messages = list(
        list(
          role = "user",
          content = answer_my_question)
        # role = "system", content = my_chat_bot)
        # list(role = "user", content = query)
      )
    )
  )
  
  str_trim(content(chat_GPT_answer)$choices[[1]]$message$content)
}


hey_chatGPT("is the sky blue?")



for (i in 1:nrow(example_data)) {
  if (nchar(example_data[i,"comment_obs"]) < 10 | (example_data[i,"comment_obs"] == "xxxxxxxxxxxxxxxx")) {
    print(i)
    print(example_data[i,"comment_obs"])
    example_data$gpt4_corrected[i] <- example_data[i,"comment_obs"]
  } else {
  print(i)
  question <- "Please spell-check and correct the following text, bearing in mind that the text was spoken in the international 
  negotiations on the so-called BBNJ treaty and thus may contain specific language
  in the negotiation context such as references to numbered paragraphs etc.
  Be careful in identifying country names and abbreviations of organizations and NGOs and do not change the abbreviations from the following list:
  "
 
  question2 <- "Here is the text to correct in between the three asterix(***): ***"

  question3 <- "*** Make sure you only return the text, without the asterisks or explanation or repetition of the prompt. And make sure you do not add anything to the text in your output. For example do not print The corrected text is:..
  nor print when you cannot exercise the task but only print the text. If you cannot complete the task simply only print the inputted text."
  
  
  text <- example_data[i,"comment_obs"]
  #text <- "we do not support the deciion making standard"
  exemptions <- paste(unlist(exemptions_list), collapse = ", ")
  
  concat <- paste(question, exemptions,
                  question2, text,
                  question3)
  result <- hey_chatGPT(concat)
  print(result)
  example_data$gpt4_corrected[i] <- result
}}



bbnj_full <- merge(bbnj_full, example_data[c("running_id", "gpt4_corrected")], by = "running_id", all.x = TRUE)

bbnj_full$gpt4_corrected <- gsub("I'm sorry, I cannot complete*", NA, bbnj_full$gpt4_corrected)



