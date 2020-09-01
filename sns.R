sns <- read.csv(file = "03_WISENUT/wisenut.csv", header = TRUE, sep = "\a", fileEncoding = "UTF-8")

library(dplyr)

sns %>% filter(GU_CD == 350, DONG_CD == 630)
