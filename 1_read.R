### BBNJ data 1 - read new data from excel files
### Arne Langlet, 26.03.2021
# file 1 
# this file reads the excel files from different observation sites: IGCs, intersessionals, HSA dialogues

# clear workspace
rm(list= ls()[!(ls() %in% c('path'))])



library(tidyverse)
library(readxl)
library(dplyr)
library(data.table)
library(zoo)
library(lubridate)
library(openxlsx)
library(stringr)

############## IGC data
################# this first part is commented out unless new data from IGC is added to 2_raw data
#### all Excel files in Field Data into list
## set working space to excel files with new raw data
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/2_raw data")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/2_raw data"

files = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

## wenn man die erste l?schen m?chte?
#files <-files[-7]

tbl <- sapply(files, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl)) {
  tbl[[i]]$name <- rep(names(tbl)[i], nrow(tbl[[i]]))
}
# bind all excel files into one
bbnj <- rbindlist(tbl, fill = TRUE)


## cleaning
# delete NA rows
bbnj <- bbnj[rowSums(is.na(bbnj)) != ncol(bbnj), ]

bbnj <- bbnj %>% 
  filter_at(vars(actor, comment_obs, type_obs, observation, author, id_num), any_vars(!is.na(.)))

### delete "no text" column - dead leftover
bbnj <- select(bbnj, -no_text)
bbnj_igc <- bbnj

bbnj_igc <- bbnj_igc[rowSums(is.na(bbnj_igc)) != ncol(bbnj_igc)-1, ]
### add folder
bbnj_igc$folder <- f


bbnj_igc$time <- format(as.POSIXct(bbnj_igc$time,format='%Y-%m-%d %H:%M:%S'),format='%H:%M:%S')
bbnj_igc$date <- format(as.POSIXct(bbnj_igc$date,format='%Y-%m-%d'),format='%Y-%m-%d')



### special Paul - 6 hours in IGC 4
t <- bbnj_igc %>% 
  filter(author == "PD" & (date == "2022-03-09" | date == "2022-03-10"))  %>% 
  select(time) 


tt <- paste(hms(t$time) - hours(6))


tt <- hms::as_hms(lubridate::parse_date_time(tt, "HMS"))

tt <- format(as.POSIXct(tt,format='%H:%M:%S'),format='%H:%M:%S')


#bbnj_igc <- mutate(bbnj_igc, time = ifelse(author == "PD" & IGC == 4, t, time))


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="PD" & bbnj_igc$date == "2022-03-09"  & bbnj_igc$time == i1] <- i2
}


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="PD" & bbnj_igc$date == "2022-03-10" & bbnj_igc$time == i1] <- i2
}


### special Silvia 11.03.2022 - 6 hours to new york time

t <- bbnj_igc %>% 
  filter(author == "SR" & date == "2022-03-11")  %>% 
  select(time) 

tt <- paste(hms(t$time) - hours(6))

tt <- hms::as_hms(lubridate::parse_date_time(tt, "HMS"))

tt <- format(as.POSIXct(tt,format='%H:%M:%S'),format='%H:%M:%S')


for (i in 1:length(t$time)){
 i1 <- t$time[i]
 i2 <- tt[i]
  
bbnj_igc$time[bbnj_igc$author=="SR" & bbnj_igc$date == "2022-03-11" & bbnj_igc$time == i1] <- i2

  
  }




### special Paul - 6 hours in IGC 6
t <- bbnj_igc %>% 
  filter(author == "PD" & (date == "2023-02-20"))  %>% 
  select(time) 


tt <- paste(hms(t$time) - hours(6))


tt <- hms::as_hms(lubridate::parse_date_time(tt, "HMS"))

tt <- format(as.POSIXct(tt,format='%H:%M:%S'),format='%H:%M:%S')


#bbnj_igc <- mutate(bbnj_igc, time = ifelse(author == "PD" & IGC == 4, t, time))


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="PD" & bbnj_igc$date == "2023-02-20"  & bbnj_igc$time == i1] <- i2
}






### special Simon - 6 hours in IGC 6
t <- bbnj_igc %>% 
  filter(author == "PD" & (date == "2023-02-20" | date == "2023-02-22" |
                             date == "2023-02-23" | date == "2023-02-24" |
                             date == "2023-02-27" | date == "2023-02-28" |
                             date == "2023-03-01" | date == "2023-03-02" |
                             date == "2023-03-03" | date == "2023-06-19"))  %>% 
  select(time) 


tt <- paste(hms(t$time) - hours(6))


tt <- hms::as_hms(lubridate::parse_date_time(tt, "HMS"))

tt <- format(as.POSIXct(tt,format='%H:%M:%S'),format='%H:%M:%S')





### special Silvia 20.06.2023 - 6 hours to new york time

t <- bbnj_igc %>% 
  filter(author == "SR" & date == "2023-06-20")  %>% 
  select(time) 

tt <- paste(hms(t$time) - hours(6))

tt <- hms::as_hms(lubridate::parse_date_time(tt, "HMS"))

tt <- format(as.POSIXct(tt,format='%H:%M:%S'),format='%H:%M:%S')


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SR" & bbnj_igc$date == "2023-06-20" & bbnj_igc$time == i1] <- i2
  
  
}


### special Simon 20.06.2023 - 6 hours to new york time

t <- bbnj_igc %>% 
  filter(author == "SF" & date == "2023-06-19")  %>% 
  select(time) 

tt <- paste(hms(t$time) - hours(6))

tt <- hms::as_hms(lubridate::parse_date_time(tt, "HMS"))

tt <- format(as.POSIXct(tt,format='%H:%M:%S'),format='%H:%M:%S')


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-06-19" & bbnj_igc$time == i1] <- i2
  
  
}

#bbnj_igc <- mutate(bbnj_igc, time = ifelse(author == "PD" & IGC == 4, t, time))


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-02-20"  & bbnj_igc$time == i1] <- i2
}


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-02-22" & bbnj_igc$time == i1] <- i2
}


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-02-23" & bbnj_igc$time == i1] <- i2
}


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-02-24" & bbnj_igc$time == i1] <- i2
}

for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-02-27" & bbnj_igc$time == i1] <- i2
}


for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-02-28" & bbnj_igc$time == i1] <- i2
}

for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-03-01" & bbnj_igc$time == i1] <- i2
}

for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-03-02" & bbnj_igc$time == i1] <- i2
}

for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-03-03" & bbnj_igc$time == i1] <- i2
}

for (i in 1:length(t$time)){
  i1 <- t$time[i]
  i2 <- tt[i]
  
  bbnj_igc$time[bbnj_igc$author=="SF" & bbnj_igc$date == "2023-06-19" & bbnj_igc$time == i1] <- i2
}





#save bbnj data as csv
write.csv(bbnj_igc, file = "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/bbnj_igc.csv")



## integrate intersessional work
# set wd
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Intersessional Work/Data collection")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Intersessional Work/Data collection"
# make a list with all excel files
files_in = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

files_in

# maybe necessary to delete trash
files_in <- files_in[c(-1,-2,-3)]

# read all excel files
tbl_in <- sapply(files_in, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_in)) {
  tbl_in[[i]]$name <- rep(names(tbl_in)[i], nrow(tbl_in[[i]]))
}


intersessionals <- rbindlist(tbl_in, fill = TRUE)

intersessionals <- intersessionals %>% 
  filter_at(vars(actor, comment_obs, type_obs, observation, author, id_num), any_vars(!is.na(.)))

intersessionals$time <- format(as.POSIXct(intersessionals$time,format='%Y-%m-%d %H:%M:%S'),format='%H:%M:%S')
intersessionals$date <- format(as.POSIXct(intersessionals$date,format='%Y-%m-%d'),format='%Y-%m-%d')



### add "IGC" data and "negotiation_format" where missing

intersessionals$IGC <- "intersessional work"
intersessionals$negotiation_format <- coalesce(intersessionals$negotiation_format, "ms teams")

intersessionals <- intersessionals[rowSums(is.na(intersessionals)) != ncol(intersessionals)-1, ]

### add folder
intersessionals$folder <- f


#write intersessionals to csv
write.csv(intersessionals, file = "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/intersessionals.csv")






## integrate online dialogues

#### MGR June 2020
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_06_MGRs_CBTT")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_06_MGRs_CBTT"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}

onlinedialogues <- rbindlist(tbl_od, fill = TRUE)
onlinedialogues$folder <- f



### ABMTS EIA July 2020
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_07_ABTMs_EIAs")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_07_ABTMs_EIAs"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}

onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f

# rbind them together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### EIAs October 2020
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_10_EIAs")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_10_EIAs"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### MGRs  November 2020
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_11_MGRs")
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### ABMTs December 2020
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_12_ABTMs")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2020_12_ABTMs"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)


## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}

onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### CBTT February 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_02_CBTT")
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### crosscutting March 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_03_crosscutting")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_03_crosscutting"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)




### crosscutting April 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_04_crosscutting")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_04_crosscutting"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)





### crosscutting May 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_05_crosscutting_ABMTs")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_05_crosscutting_ABMTs"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


# ### financial mechanisms May 2021
# setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_05_financial mechanism")
# f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_05_financial mechanism"
# # make a list with all excel files
# files_od <- list.files(pattern = "*.xlsx", full.names = T)
# 
# # read all excel files
# tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)
# 
# ## add file name
# for (i in seq_along(tbl_od)) {
#   tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
# }
# 
# 
# onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
# ## add folder 
# onlinedialogues_new$folder <- f
# # rbind them all together
# onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### EIA and MGR June 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_06_07_EIA_MGR_CBTT")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_06_07_EIA_MGR_CBTT"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### add "IGC" data and "negotiation_format"
onlinedialogues$IGC <- "onlinedialogues"
onlinedialogues$negotiation_format <- coalesce(onlinedialogues$negotiation_format, "webex")

onlinedialogues <- onlinedialogues[rowSums(is.na(onlinedialogues)) != ncol(onlinedialogues)-2, ]


### crosscutting September 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_09_crosscutting (Principles, approaches, preamble, scope)")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_09_crosscutting (Principles, approaches, preamble, scope)"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### add "IGC" data and "negotiation_format"
onlinedialogues$IGC <- "onlinedialogues"
onlinedialogues$negotiation_format <- coalesce(onlinedialogues$negotiation_format, "webex")

onlinedialogues <- onlinedialogues[rowSums(is.na(onlinedialogues)) != ncol(onlinedialogues)-2, ]



### chm mgrs october 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_10_CLearing house Mech_MGRs")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_10_CLearing house Mech_MGRs"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)



### dispute settlement october 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_10_Dispute settlement, implementation & compliance")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_10_Dispute settlement, implementation & compliance)"
# make a list with all excel files
files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


files_od <- files_od[-1]

# read all excel files
tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)



### dispute settlement and technology transfer December 2021
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_12_implementation compliance dispute settlement relationship to other instrument")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2021_12_implementation compliance dispute settlement relationship to other instrument)"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


##################### 2022

### dialogues all different topics May 2022
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_05_MGRs, CBTMT, ABMTs, EIAs")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_05_MGRs, CBTMT, ABMTs, EIAs)"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)




### dialogues final provisions, implementation july 2022

setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_07_general provisions, principles & dispute settlement")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_07_general provisions, principles & dispute settlement)"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)



### dialogues debrief, October 2022

setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_10_forward looking debrief")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_10_forward looking debrief"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)




### dialogues progress, November 2022

setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_11_how to best capture the progress that was made so far")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_11_how to best capture the progress that was made so far"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)



### online dialogues - entry into force, December 2012

setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_12_entry into force of BBNJ")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2022_12_entry into force of BBNJr"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


### online dialogues - implementation 04/05 2023

setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2023_04 Implementation")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2023_04 Implementationr"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)


setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2023_05 Implementation")
f <- "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/Online Dialogues- HSA/2023_05 Implementationr"
# make a list with all excel files

files_od = intersect(list.files(pattern = "*.xlsx"), list.files(pattern = "^[^~]"))


# read all excel files

tbl_od <- sapply(files_od, read_excel, simplify=FALSE, sheet = 1, col_names = TRUE)

## add file name
for (i in seq_along(tbl_od)) {
  tbl_od[[i]]$name <- rep(names(tbl_od)[i], nrow(tbl_od[[i]]))
}


onlinedialogues_new <- rbindlist(tbl_od, fill = TRUE)
## add folder 
onlinedialogues_new$folder <- f
# rbind them all together
onlinedialogues <- rbind(onlinedialogues, onlinedialogues_new)



################ for all online dialogues
## add "IGC" data and "negotiation_format"
onlinedialogues$IGC <- "onlinedialogues"
onlinedialogues$negotiation_format <- coalesce(onlinedialogues$negotiation_format, "webex")

onlinedialogues <- onlinedialogues[rowSums(is.na(onlinedialogues)) != ncol(onlinedialogues)-2, ]

onlinedialogues$time <- format(as.POSIXct(onlinedialogues$time,format='%Y-%m-%d %H:%M:%S'),format='%H:%M:%S')
onlinedialogues$date <- format(as.POSIXct(onlinedialogues$date,format='%Y-%m-%d'),format='%Y-%m-%d')

## cleaning
# delete NA rows
onlinedialogues <- onlinedialogues[rowSums(is.na(onlinedialogues)) != ncol(onlinedialogues), ]

onlinedialogues <- onlinedialogues %>% 
  filter_at(vars(actor, comment_obs, type_obs, observation, author, id_num), any_vars(!is.na(.)))





### save csv with online dialogues data
write.csv(onlinedialogues, file = "//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/onlinedialogues.csv")



table(bbnj$name)



# ## rbind all together and remove other elements
setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data")


bbnj_igc <- read.csv("bbnj_igc.csv")
intersessionals <- read.csv("intersessionals.csv")
onlinedialogues <- read.csv("onlinedialogues.csv")



bbnj <- rbind(bbnj_igc, intersessionals, onlinedialogues)
rm(list= ls()[!(ls() %in% c('bbnj','bbnj_igc', 'intersessionals', 'onlinedialogues', 'path'))])




### save total workspace0
save.image(file = "bbnj.RData")




