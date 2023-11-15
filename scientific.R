####################### issue_scientific variable

bbnj$issue_scientific <- str_to_lower(bbnj$issue_scientific)

bbnj$issue_scientific[bbnj$issue_scientific=="1"] <- 'yes'
bbnj$issue_scientific[bbnj$issue_scientific=="ys"] <- 'yes'
bbnj$issue_scientific[bbnj$issue_scientific=="side event"] <- 'yes'
bbnj$issue_tk <- ifelse(bbnj$issue_scientific=="tk" | bbnj$issue_scientific == "yes, tk" | bbnj$issue_scientific == "yes,tk"
                        | bbnj$issue_scientific == "tk, yes" | bbnj$issue_scientific == "yes tk" | bbnj$issue_scientific == "tk and best available knowledge" 
                        ,"yes", "no")

# bbnj$issue_scientific[bbnj$issue_scientific=="yes, tk"] <- 'yes'
# bbnj$issue_scientific[bbnj$issue_scientific=="yes,tk"] <- 'yes'
# bbnj$issue_scientific[bbnj$issue_scientific=="yes tk"] <- 'yes'
# bbnj$issue_scientific[bbnj$issue_scientific=="tk, yes"] <- 'yes'
# bbnj$issue_scientific[bbnj$issue_scientific=="ecological connectivity"] <- 'yes'
# bbnj$issue_scientific[bbnj$issue_scientific=="tk and best available knowledge"] <- 'yes'

#bbnj$issue_scientific[bbnj$issue_scientific=="antiscience"] <- 'no'
#bbnj$issue_scientific[bbnj$issue_scientific=="tk"] <- 'no'
bbnj$issue_scientific[bbnj$issue_scientific=="con"] <- 'no'


bbnj$statement_scientific_binary <- 
  ifelse((bbnj$issue_scientific != "no" & !is.na(bbnj$issue_scientific) |
            (bbnj$issue_tk == "no" & !is.na(bbnj$issue_tk))), "yes", "no" )

bbnj$statement_scientific_qual <- 
  ifelse((bbnj$issue_scientific != "no" & !is.na(bbnj$issue_scientific)),
         bbnj$issue_scientific, NA)


bbnj$language <- ifelse(bbnj$issue_scientific == "spanish", "spanish", bbnj$language) 
bbnj$language <- ifelse(bbnj$issue_scientific == "russian", "russian", bbnj$language)


table(bbnj$issue_scientific)

bbnj <- bbnj %>% select(-c("issue_scientific", "issue_tk"))
