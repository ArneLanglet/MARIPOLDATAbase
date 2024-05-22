bbnj <- bbnj[order(bbnj$author, bbnj$id_num), ]

my_vec5 <- bbnj$type_obs

new_vec5 <- vector(length = length(my_vec5))
for (i in seq_along(my_vec5)) {
  if (!is.na(my_vec5[i])) current <- my_vec5[i]
  new_vec5[i] <- current
}

bbnj[["type_obs"]] <- new_vec5

bbnj$type_obs[bbnj$type_obs=="!"] <- '1'


bbnj <- bbnj %>%
  mutate(type_label = case_when(
    type_obs == 1  ~ "intervention",
    type_obs == 2  ~ "interruption",
    type_obs == 3  ~ "opening/closing statement",
    type_obs == 4  ~ "other statement or verbal act",
    type_obs == 5  ~ "other activity or non-verbal action",
    type_obs == 8  ~ "informal talk",
    type_obs == 99 ~ NA_character_,
    TRUE           ~ as.character(type_label)  # Default case if none of the above
  ))

# Convert type_label to a factor
bbnj$type_label <- factor(bbnj$type_label)