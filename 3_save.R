### BBNJ data 3 - data saving
### Arne Langlet, 06.04.2021
# file 3 
# this file saves the data
rm (list = ls())


library(writexl)
library(tidyverse)Thanky 
library(dplyr)
library(stringi)

load("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_clean.RData")


setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/4_final data")




## save different files

write.csv(bbnj_ac, file = "bbnj_ac.csv", row.names = F)
write_xlsx(bbnj_ac, "bbnj_ac.xlsx")



gc()
options(java.parameters = "-Xmx1024m")

bbnj_full <- bbnj_full %>% arrange(IGC, date, time) %>% as.data.frame()
bbnj_full <- data.frame(lapply(bbnj_full, as.character), stringsAsFactors = FALSE)
bbnj_full[is.na(bbnj_full)] <- ""
#bbnj_full <- subset(bbnj_full, id_combined != "AL_2869")


bbnj_full_intersessionals <- bbnj_full %>% filter(IGC %in% c("intersessionals"))

write.csv(bbnj_full_intersessionals, file = "bbnj_full_intersessionals.csv", row.names = F)
write_xlsx(bbnj_full_intersessionals, "bbnj_full_intersessionals.xlsx")




bbnj_full_onlinedialogues <- bbnj_full %>% filter(IGC %in% c("onlinedialogues"))

write.csv(bbnj_full_onlinedialogues, file = "bbnj_full_onlinedialogues.csv", row.names = F)
write_xlsx(bbnj_full_onlinedialogues, "bbnj_full_onlinedialogues.xlsx")



bbnj_full_intersessionals_dialogues <- bbnj_full %>% filter(IGC %in% c("onlinedialogues", "intersessionals"))

write.csv(bbnj_full_intersessionals_dialogues, file = "bbnj_full_intersessionals_dialogues.csv", row.names = F)
write_xlsx(bbnj_full_intersessionals_dialogues, "bbnj_full_intersessionals_dialogues.xlsx")



bbnj_full_igc <- bbnj_full %>% filter(IGC %in% c(1,2,3, 4, 5, 6))

bbnj_ac_igc <- bbnj_ac %>% filter(IGC %in% c(1,2,3, 4, 5, 6))


write.csv(bbnj_full_igc, file = "bbnj_full_igc_informals.csv", row.names = F)

write_xlsx(bbnj_full_igc, "bbnj_full_igc_informals.xlsx")

bbnj_ac_online <- bbnj_ac %>% filter(IGC %in% c("intersessionals", "onlinedialogues"))
write.csv(bbnj_ac_online, file = "bbnj_ac_online.csv", row.names = F)
write_xlsx(bbnj_ac_online, "bbnj_ac_online.xlsx")

write.csv(bbnj_ac_igc, file = "bbnj_ac_igc.csv", row.names = F)

write_xlsx(bbnj_ac_igc, "bbnj_ac_igc.xlsx")

bbnj_full_igc_noninformals <- bbnj_full_igc %>% filter(negotiation_format != "informals")

write.csv(bbnj_full_igc_noninformals, file = "bbnj_full_igc.csv", row.names = F)


write_xlsx(bbnj_full_igc_noninformals, "bbnj_full_igc.xlsx")




############### bbnj full now only IGCs + online dialogues and not intersessionals for final database
bbnj_full <- bbnj_full %>% filter(negotiation_format != "ms teams")



write_xlsx(bbnj_full, "bbnj_full.xlsx")
write.csv(bbnj_full, "bbnj_full.csv", row.names = F)

#### one motherfucker has a weird symbol in his name   
# bbnj_full_intersessionals$actor <- stri_encode(bbnj_full_intersessionals$actor, "", "UTF-8")
# 
# 
# 
# 
# s <- filter(bbnj_full, (stri_enc_isutf8(bbnj_full$actor)) == FALSE)
# 
# all(stri_enc_isutf8(bbnj_full_intersessionals$actor))

#sheet_two <- read_excel("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/1_empty matrix/matrix_AL.xlsx", sheet = 2)
#write.xlsx(sheet_two, file ="guide.xlsx")


rm(list= ls()[!(ls() %in% c('bbnj','bbnj_full', 'bbnj_ac', 'bbnj_conc',
                            'bbnj_full_igc' , 'bbnj_full_igc_informals' ,
                            'bbnj_full_intersessionals', 'path'))])

save.image(file = "bbnj_final.RData")
