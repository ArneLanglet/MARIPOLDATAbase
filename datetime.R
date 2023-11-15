

################# organize date & time

my_vec7 <- bbnj$date
new_vec7 <- vector(length = length(my_vec7))
for (i in seq_along(my_vec7)) {
  if (!is.na(my_vec7[i])) current <- my_vec7[i]
  new_vec7[i] <- current
}
my_vec8 <- bbnj$time
new_vec8 <- vector(length = length(my_vec8))
for (i in seq_along(my_vec8)) {
  if (!is.na(my_vec8[i])) current <- my_vec8[i]
  new_vec8[i] <- current
}

# my_vec9 <- bbnj$unique_time
# new_vec9 <- vector(length = length(my_vec9))
# for (i in seq_along(my_vec9)) {
#   if (!is.na(my_vec9[i])) current <- my_vec9[i]
#   new_vec9[i] <- current
# }

bbnj[["date"]] <- new_vec7
bbnj[["time"]] <- new_vec8

## create unique time numeric
bbnj$unique_time <- paste(bbnj$date, bbnj$time)
bbnj$unique_time <- as.POSIXct(bbnj$unique_time,format="%Y-%m-%d %H:%M:%S")
bbnj$unique_time <- as.numeric(bbnj$unique_time)