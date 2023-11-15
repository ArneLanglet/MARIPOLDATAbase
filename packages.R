

###################### clean package variable


bbnj$package[bbnj$package=="general"] <- '9'
bbnj$package[bbnj$package=="general exchange of views"] <- '9'
bbnj$package[bbnj$package=="1, 2"] <- '9'
bbnj$package[bbnj$package=="1, 2, 3, 4"] <- '9'
bbnj$package[bbnj$package=="1, 2, 4"] <- '9'
bbnj$package[bbnj$package=="1, 4"] <- '9'


bbnj$package[bbnj$package=="3.3."] <- '3'
bbnj$package[bbnj$package=="4."] <- '4'
bbnj$package[bbnj$package=="III"] <- '3'
bbnj$package[bbnj$package=="ABMTs"] <- '2'
bbnj$package[bbnj$package=="institutional arrangements"] <- '5'
bbnj$package[bbnj$package=="none"] <- '9'

bbnj$package[bbnj$package=="56"] <- '5'
bbnj$package[bbnj$package=="54"] <- '5'
bbnj$package[bbnj$package=="55"] <- '5'
bbnj$package[bbnj$package=="48"] <- '4'
bbnj$package[bbnj$package=="0"] <- '9'
bbnj$package[bbnj$package=="-"] <- '9'
bbnj$package[bbnj$package=="22"] <- '2'
bbnj$package[bbnj$package=="20"] <- '2'
bbnj$package[bbnj$package == "50"] <- '5'



my_vec2 <- bbnj$package
new_vec2 <- vector(length = length(my_vec2))
for (i in seq_along(my_vec2)) {
  if (!is.na(my_vec2[i])) current <- my_vec2[i]
  new_vec2[i] <- current
}

bbnj <- bbnj[order(bbnj$author, bbnj$id_num), ]
bbnj[["package"]] <- new_vec2


bbnj <- mutate(bbnj, package_label =ifelse (package == 1, "Marine Genetic Resources",
                                            ifelse (package == 2, "Area-Based Management Tools / Marine Protected Areas",
                                                    ifelse (package == 3 , "Environmental Impact Assessments",
                                                            ifelse (package == 4 , "Capacity-Building and Transfer of Marine Technologies",
                                                                    ifelse (package == 5, "Cross-Cutting Issues", 
                                                                            ifelse(package == 9, "Other","Other")))))))                                      



