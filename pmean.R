pmean <- function(directory, pollutant, id = 1:332) {
  paths <- sprintf("%s%03d.csv", dir, id)
  big_data <- do.call("rbind", lapply(paths, read.csv))
  return(mean(big_data[[pollutant]], na.rm = TRUE))
}
