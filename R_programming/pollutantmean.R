setwd("/workspaces/R/R_programming/specdata")
for (data in list.files()){

  if (!exists("dataset")){
    dataset <- read.csv(data, header=TRUE)
  }

  if (exists("dataset")){
    tempory <-read.csv(data, header=TRUE)
    dataset <-unique(rbind(dataset, tempory))
    rm(tempory)
  }
  
}

write.csv(dataset, "full.csv")