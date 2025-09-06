setwd("/workspaces/R/R_programming/specdata")
for (data in list.files()){

  if (!exists("dataset")){
    dataset <- read.csv(data, header=TRUE)
  }
  
}

write.csv(dataset, "Merged.csv")