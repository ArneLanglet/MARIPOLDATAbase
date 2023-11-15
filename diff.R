# Add speaking time variable

# Filter the dataset to keep only certain observations
bbnj_ac <- filter(bbnj, (type_obs < 5) | (type_obs == 5 & actor == "end"))

# Create a temporary copy of the filtered dataset
temp <- bbnj_ac

# Remove rows with missing values in the 'unique_time' column
temp <- temp %>% drop_na(unique_time)

# Remove duplicate rows based on the 'id_combined' column
temp <- as.data.frame(distinct(temp, id_combined, .keep_all = TRUE))

# Calculate time differences between consecutive rows
temp <- temp %>% dplyr::arrange(unique_time) %>%
  mutate(diffa = lead(unique_time) - unique_time)

# Create a flag variable based on the time difference
temp <- temp %>% mutate(flag = ifelse(diffa <= 300, 1, 0))

# Calculate additional flag variables based on column comparisons
temp <- temp %>% arrange(unique_time) %>%
  mutate(
    diff_aut = ifelse(lag(author) != author, 1, 0),
    diff_pack = ifelse(lag(package) == package, 1, 0),
    diff_ac = ifelse(lag(actor) == actor, 1, 0)
  )

# Create a final flag variable based on multiple conditions
temp <- temp %>% dplyr::arrange(unique_time) %>%
  mutate(flag_out = ifelse(flag == 1 & diff_aut == 1 & diff_pack == 1 & diff_ac == 1, 1, 0))

# Add the 'flag_out' variable to the original dataset 'bbnj'
bbnj$double <- temp$flag_out[match(bbnj$id_combined, temp$id_combined)]

# Calculate a 'flag' variable based on 'id_combined' column comparisons
bbnj <- bbnj %>% arrange(unique_time) %>%
  mutate(flag = ifelse(lag(id_combined) == id_combined, 1, 0))

# Update the 'double' variable in 'bbnj' based on conditions
bbnj$double <- ifelse(bbnj$double == 0 & bbnj$flag == 1, 1, bbnj$double)

# Assign 'bbnj_ac' to the modified 'temp' dataset
bbnj_ac <- temp

# Convert any NA values in 'bbnj_ac' to empty strings
bbnj_ac[is.na(bbnj_ac)] <- ""
