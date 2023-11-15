### create speaking time difference from ac dataframe

# bbnj_ac <- bbnj_ac %>% dplyr::arrange(unique_time) %>%
#   mutate(time_difference =  lead(unique_time) - (unique_time),
#          time_difference = as.numeric(time_difference, units = 'secs'))


bbnj_ac <- arrange(bbnj_ac, unique_time) 

bbnj_ac$time_difference <- lead(bbnj_ac$unique_time) - (bbnj_ac$unique_time)





bbnj$time_difference <- bbnj_ac$time_difference[match(bbnj$id_combined,bbnj_ac$id_combined)]



bbnj_ac$actor <- str_to_lower(bbnj_ac$actor)
