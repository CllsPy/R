data = iris
head(data)

glimpse(data)

summary(data)

unique(data$Species)

sapply(data, anyNA)

colSums(is.na(data))