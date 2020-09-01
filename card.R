resident <- read.table("02_CARD/RESIDENT/CARD_SPENDING_RESIDENT.txt", header = TRUE)
foreigner <- read.table("02_CARD/FOREIGNER/CARD_SPENDING_FOREIGNER.txt", sep = "\t", header = TRUE)

head(resident)

library(dplyr)

resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 201905, DONG_CD == 695) %>% group_by(AGE_CD, SEX_CD) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))

resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 201905, DONG_CD == 695) %>% group_by(MCT_CAT_CD) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))

resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 201905, AGE_CD >= 60, MCT_CAT_CD == 81) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))

resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 201905, DONG_CD == 695, MCT_CAT_CD == 81) %>% group_by(AGE_CD) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))



resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 202005, DONG_CD == 695) %>% group_by(DONG_CD, AGE_CD, SEX_CD) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))

resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 202005, DONG_CD == 695) %>% group_by(MCT_CAT_CD) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))

resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 202005, AGE_CD >= 60, MCT_CAT_CD == 81) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))

resident %>% mutate("STD_YM" = substr(STD_DD, 1, 6)) %>% 
  filter(STD_YM == 202005, DONG_CD == 695, MCT_CAT_CD == 81) %>% group_by(AGE_CD) %>% 
  summarize(mean.cnt = mean(USE_CNT), agg.amt = sum(USE_AMT))


table(resident["DONG_CD"])
