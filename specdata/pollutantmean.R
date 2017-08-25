pollutantmean <- function(directory, pollutant, id = 1:332) {
  totalVal <- 0
  totalRows <- 0
  files <- list.files(directory, full.names=TRUE)[id]
  for (filename in files) {
    file <- read.csv(filename)
    totalVal <- totalVal + sum(file[[pollutant]],na.rm=TRUE)
    totalRows <- totalRows + sum(!is.na(file[pollutant]))
    
  }
  totalVal/totalRows
}


