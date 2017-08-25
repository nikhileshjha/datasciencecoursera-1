corr <- function(directory, threshold = 0) {
  files <- list.files(directory,full.names = TRUE)
  df <- numeric()
  for (filename in files) {
    file <- read.csv(filename)
    isComp <- complete.cases(file)
    if (sum(isComp) > threshold) {
      compVal <- file[isComp,]
      sulfate <- compVal["sulfate"]
      nitrate <- compVal["nitrate"]
      corVal <- cor(sulfate, nitrate)
      
      df <- c(df, corVal)
    }
  }
  df
}