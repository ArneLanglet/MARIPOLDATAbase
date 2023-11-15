

###################### clean provision variable

bbnj$section_title <- gsub(' ter','ter', bbnj$section_title)
bbnj$section_title <- gsub(' bis','bis', bbnj$section_title)
bbnj$section_title <- gsub('ibis','bis', bbnj$section_title)

bbnj$section_title <- gsub(' ante','ante', bbnj$section_title)
bbnj$section_title <- gsub(' & ',', ', bbnj$section_title)
bbnj$section_title <- gsub(' and ',', ', bbnj$section_title)
bbnj$section_title <- gsub(' / ',', ', bbnj$section_title)
bbnj$section_title <- gsub('/',', ', bbnj$section_title)
bbnj$section_title <- gsub('art ','', bbnj$section_title)
bbnj$section_title <- gsub(',',', ', bbnj$section_title)
bbnj$section_title <- gsub(',  ',', ', bbnj$section_title)
bbnj$section_title[bbnj$section_title == "annex 1"] <- 'annex i'
bbnj$section_title[bbnj$section_title == "annex 2"] <- 'annex ii'
bbnj$section_title[bbnj$section_title == "-"] <- ''
bbnj$section_title[bbnj$section_title == "?"] <- ''
bbnj$section_title[bbnj$section_title == "1011"] <- '10, 11'
bbnj$section_title[bbnj$section_title == "111bis"] <- '11bis'
bbnj$section_title[bbnj$section_title == "1415"] <- '14, 15'
bbnj$section_title[bbnj$section_title == "19 19bis"] <- '19, 19bis'
bbnj$section_title[bbnj$section_title == "2122"] <- '21, 22'
bbnj$section_title[bbnj$section_title == "27? list of criteria?"] <- '27'
bbnj$section_title[bbnj$section_title == "32-34"] <- '32, 33, 34'
bbnj$section_title[bbnj$section_title == "32, 33, 34,"] <- '32, 33, 34'
bbnj$section_title[bbnj$section_title == "33 38"] <- '33, 38'
bbnj$section_title[bbnj$section_title == "35-39"] <- '35, 36, 37, 38, 39'
bbnj$section_title[bbnj$section_title == "42, 46,"] <- '42, 46'
bbnj$section_title[bbnj$section_title == "-all54"] <- 'all 54'
bbnj$section_title[bbnj$section_title == "iiii.6.54"] <- 'iii.6.54'
bbnj$section_title[bbnj$section_title == "iiii.6.55"] <- 'iii.6.55'
bbnj$section_title[bbnj$section_title == "iv.62"] <- 'iii.6.2'


bbnj <- bbnj[order(bbnj$author, bbnj$id_num), ]

my_vec11 <- bbnj$section_title
new_vec11 <- vector(length = length(my_vec11))
for (i in seq_along(my_vec11)) {
  if (!is.na(my_vec11[i])) current <- my_vec11[i]
  new_vec11[i] <- current
}
bbnj[["section_title"]] <- new_vec11
