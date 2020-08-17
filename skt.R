skt_age_1902 <- read.csv(file = "01_SKT/FLOW_AGE_201902.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")
skt_age_2002 <- read.csv(file = "01_SKT/FLOW_AGE_202002.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")

str(skt_age_1902)

library(ggplot2)
library(dplyr)

skt_age_1902 %>% 
  filter(HDONG_NM == "소공동") %>%
  ggplot(aes(x = STD_YMD, y = MAN_FLOW_POP_CNT_0004)) +
  geom_point()

skt_age_feb <- rbind(skt_age_1902, skt_age_2002)

skt_age_feb %>% 
  mutate(MD = substr(STD_YMD, 5, 8)) %>% 
  filter(HDONG_NM == "소공동") %>%
  ggplot(aes(x = MD, y = MAN_FLOW_POP_CNT_6064, color = STD_YM)) +
  geom_point()

str(skt_age_feb$STD_YM)
table(skt_age_feb$STD_YM)
