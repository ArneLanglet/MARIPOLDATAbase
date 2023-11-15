### merge routine/mood/formality variables
############ mood variable
bbnj$mood[bbnj$mood=="bad"] <- '1'

bbnj$formal_informal <- str_to_lower(bbnj$formal_informal)
bbnj$routine <- str_to_lower(bbnj$routine)
bbnj$mood <- str_to_lower(bbnj$mood)

bbnj$routine_mood_formality <- ifelse(bbnj$formal_informal == "informal", "unusual",
                                      ifelse(bbnj$routine == "no", "unusual",
                                             ifelse(bbnj$routine == "delegate wearing button", "unusual",
                                                    ifelse(bbnj$mood == 1 | bbnj$mood == 5, "unusual",
                                                           "usual"))))


bbnj$routine_mood_formality <- coalesce(bbnj$routine_mood_formality, "usual") 

### and now delete old variables

bbnj <- bbnj %>% select(-c("formal_informal", "routine", "mood"))

