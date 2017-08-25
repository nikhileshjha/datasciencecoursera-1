complete <- function(directory, id = 1:332) {
  files <- list.files(directory, full.names=TRUE)
  df <- data.frame(id=numeric(), nobs=numeric())
  idx <- 1
  #df <- data.frame()
  for (val in id) {
    filename <- files[val]
    file <- read.csv(filename)
    nobs <- sum(complete.cases(file))
    
    df[idx,] <- c(val, nobs)
    idx <- idx+1
  }
  df
}