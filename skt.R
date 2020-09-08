skt_age_1902 <- read.csv(file = "01_SKT/FLOW_AGE_201902.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")
skt_age_2002 <- read.csv(file = "01_SKT/FLOW_AGE_202002.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")

skt_age_1903 <- read.csv(file = "01_SKT/FLOW_AGE_201903.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")
skt_age_2003 <- read.csv(file = "01_SKT/FLOW_AGE_202003.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")

skt_age_1904 <- read.csv(file = "01_SKT/FLOW_AGE_201904.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")
skt_age_2004 <- read.csv(file = "01_SKT/FLOW_AGE_202004.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")

skt_age_1905 <- read.csv(file = "01_SKT/FLOW_AGE_201905.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")
skt_age_2005 <- read.csv(file = "01_SKT/FLOW_AGE_202005.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")


str(skt_age_1902)

library(dplyr)

A <- skt_age_1905 %>% 
  group_by(HDONG_NM) %>% 
  summarise(old.man = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U),
            old.wman = mean(WMAN_FLOW_POP_CNT_6064 + WMAN_FLOW_POP_CNT_6569 + WMAN_FLOW_POP_CNT_70U))

B <- skt_age_2005 %>% 
  group_by(HDONG_NM) %>% 
  summarise(old.man = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U),
            old.wman = mean(WMAN_FLOW_POP_CNT_6064 + WMAN_FLOW_POP_CNT_6569 + WMAN_FLOW_POP_CNT_70U))

data.frame(HDONG_NM = A["HDONG_NM"], old.man = B["old.man"]-A["old.man"], old.wman = B["old.wman"]-A["old.wman"])


skt_age_feb <- rbind(skt_age_1902, skt_age_2002)

skt_age_feb %>% 
  mutate(MD = substr(STD_YMD, 5, 8)) %>% 
  filter(HDONG_NM == "소공동") %>%
  ggplot(aes(x = MD, y = MAN_FLOW_POP_CNT_6064, color = STD_YM)) +
  geom_point()

str(skt_age_feb$STD_YM)
table(skt_age_feb$STD_YM)

<<<<<<< HEAD
read.csv(file = "01_SKT/FLOW_AGE_201902.csv", header = TRUE, sep = "|", fileEncoding="UTF-8-BOM")
=======

data.frame(skt_age_1902 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("201902" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_1903 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("201903" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_1904 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("201904" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_1905 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("201905" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2002 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("202002" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2003 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("202003" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2004 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("202004" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2005 %>% 
             filter(HDONG_NM == "상계6.7동") %>% 
             summarise("202005" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           )

data.frame(skt_age_1902 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("201902" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_1903 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("201903" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_1904 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("201904" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_1905 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("201905" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2002 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("202002" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2003 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("202003" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2004 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("202004" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
           , skt_age_2005 %>% 
             filter(HDONG_NM == "명동") %>% 
             summarise("202005" = mean(MAN_FLOW_POP_CNT_6064 + MAN_FLOW_POP_CNT_6569 + MAN_FLOW_POP_CNT_70U))
)
>>>>>>> 42f3dd120406a533a89d3013d95f615ec1a6a74d
