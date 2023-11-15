bbnj <- bbnj[order(bbnj$author, bbnj$id_num), ]


my_vec6 <- bbnj$negotiation_format
new_vec6 <- vector(length = length(my_vec6))
for (i in seq_along(my_vec6)) {
  if (!is.na(my_vec6[i])) current <- my_vec6[i]
  new_vec6[i] <- current
}
bbnj[["negotiation_format"]] <- new_vec6


################# organize variables negotiation_format & negotiation_site & side_main: 

bbnj$negotiation_format <- str_to_lower(bbnj$negotiation_format)
bbnj$side_main <- str_to_lower(bbnj$side_main)
bbnj$IGC <- str_to_lower(bbnj$IGC)

bbnj$IGC[bbnj$IGC=="onlinedialogues"] <- 'online dialogues'

bbnj$IGC[bbnj$IGC=="6"] <- "5.2"
bbnj$IGC[bbnj$IGC=="7"] <- "5.3"



bbnj$negotiation_format[bbnj$negotiation_format=="informal inform"] <- 'informal informals'
bbnj$negotiation_format[bbnj$negotiation_format=="informals"] <- 'informal informals'
bbnj$negotiation_format[bbnj$negotiation_format=="negotiatio"] <- 'working group'
bbnj$negotiation_format[bbnj$negotiation_format=="working group"] <- 'working group'
bbnj$negotiation_format[bbnj$negotiation_format=="informal informal"] <- 'informal informals'
bbnj$negotiation_format[bbnj$negotiation_format=="informal informals"] <- 'informal informals'
bbnj$negotiation_format[bbnj$negotiation_format=="informal"] <- 'informal informals'

bbnj$negotiation_format[bbnj$negotiation_format=="online dialogues"] <- 'informal dialogues'
bbnj$negotiation_format[bbnj$negotiation_format=="online intersessional dialogues"] <- 'informal dialogues'
bbnj$negotiation_format[bbnj$negotiation_format=="unknown"] <- 'side event'

bbnj$negotiation_site <- ifelse(bbnj$negotiation_format %in% c("cafeteria", "conference room 12",
                                                               "conference room 4", "conference room a",
                                                               "conference room c", "conference room d",
                                                               "ms teams", "webex"),bbnj$negotiation_format, NA )

bbnj$negotiation_format[bbnj$negotiation_format=="conference room 12"] <- 'side event'
bbnj$negotiation_format[bbnj$negotiation_format=="conference room 4"] <- 'side event'
bbnj$negotiation_format[bbnj$negotiation_format=="conference room a"] <- 'side event'
bbnj$negotiation_format[bbnj$negotiation_format=="conference room c"] <- 'side event'

bbnj$negotiation_format <- ifelse((bbnj$negotiation_format == "webex" | bbnj$negotiation_format == "online briefing" ) & bbnj$IGC == "intersessional work", "dialogue/webinar/briefing", bbnj$negotiation_format)

###############

bbnj$negotiation_format <- ifelse((bbnj$negotiation_format == "conference room 4") & bbnj$IGC == 3, "plenary", bbnj$negotiation_format)
bbnj$negotiation_format <- ifelse((bbnj$negotiation_format == "webex" | bbnj$negotiation_format == "informals" |
                                     bbnj$negotiation_format == "informal informals") & bbnj$IGC == "online dialogues", "informal dialogues", bbnj$negotiation_format)




teams <- bbnj %>% filter(negotiation_format == "ms teams")

webex <- bbnj %>% filter(IGC == "intersessional work" & negotiation_format == "webex")



################## delete MS Teams written intersessional work
bbnj <- subset(bbnj,negotiation_format != "ms teams")




bbnj$negotiation_format[bbnj$side_main=="side"] <- 'side event'
bbnj$side_main[bbnj$side_main=="side event"] <- 'side'

my_vec6 <- bbnj$negotiation_format
new_vec6 <- vector(length = length(my_vec6))
for (i in seq_along(my_vec6)) {
  if (!is.na(my_vec6[i])) current <- my_vec6[i]
  new_vec6[i] <- current
}
bbnj[["negotiation_format"]] <- new_vec6




my_vec4 <- bbnj$side_main
new_vec4 <- vector(length = length(my_vec4))
for (i in seq_along(my_vec4)) {
  if (!is.na(my_vec4[i])) current <- my_vec4[i]
  new_vec4[i] <- current
}


bbnj[["side_main"]] <- new_vec4
