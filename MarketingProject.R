
marketing_data$Income <- gsub("\\$", "", marketing_data$Income)
marketing_data$Income <- as.numeric(gsub(",", "", marketing_data$Income))
summary.df <- data.frame(summary(marketing_data))

sum(is.na(marketing_data))

na_count <-sapply(marketing_data, function(y) sum(length(which(is.na(y)))))
na_count <- data.frame(na_count)

library(dplyr)
library(tidyr)
marketing_data <- marketing_data %>% drop_na()

na_count <-sapply(marketing_data, function(y) sum(length(which(is.na(y)))))
na_count <- data.frame(na_count)

write.csv(marketing_data, "marketing_data_clean.csv")
