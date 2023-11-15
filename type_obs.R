bbnj <- bbnj[order(bbnj$author, bbnj$id_num), ]

my_vec5 <- bbnj$type_obs

new_vec5 <- vector(length = length(my_vec5))
for (i in seq_along(my_vec5)) {
  if (!is.na(my_vec5[i])) current <- my_vec5[i]
  new_vec5[i] <- current
}

bbnj[["type_obs"]] <- new_vec5

bbnj$type_obs[bbnj$type_obs=="!"] <- '1'

bbnj <- mutate(bbnj, type_label = ifelse(type_obs == 1, "intervention",
                                         ifelse(type_obs == 2, "interruption",
                                                ifelse(type_obs == 3, "opening/closing statement",
                                                       ifelse(type_obs == 4, "other statement or verbal act",
                                                              ifelse(type_obs == 5, "other activity or non-verbal action",
                                                                     ifelse(type_obs == 8, "informal talk",
                                                                            ifelse(type_obs == 99, "NA",
                                                                                   paste(type_label)))))))))