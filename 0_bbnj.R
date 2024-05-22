# This is the master file for the creation of the MARIPOLDATAbase 
## Arne Langlet
## 15.11.2023

# reading, cleaning, curating, storing BBNJ observation data
# run whole script
# Ctrl+Shift+Enter 



# clear workspace


library(tidyverse)
library(readxl)
library(dplyr)
library(data.table)
library(zoo)
library(lubridate)
library(openxlsx)
library(stringr)



rm (list = ls())
gc()



setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/MARIPOLDATAbase")


source("1_read.R")

setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/MARIPOLDATAbase")

source("2_cleaning.R")

setwd("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/MARIPOLDATAbase")

source("3_save.R")


bbnj_full %>% group_by(id_combined) %>% select(date) %>% duplicated()


dummy <- bbnj_full %>%
  group_by(id_combined) %>%
  mutate(dummy = as.integer(n_distinct(date) == 1))

table(dummy$dummy)

double <- filter(dummy, dummy == 0)

