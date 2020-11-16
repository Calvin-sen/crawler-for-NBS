install.packages("rvest")
install.packages("tidyverse")
install.packages("stringr")
library(rvest)
library(tidyverse)
library(stringr)

#下载表格#
url_NBS <- "http://www.mca.gov.cn/article/sj/tjbz/a/201713/201708220859.html"
web_NBS <- read_html(url_NBS)
table <- html_table(web_NBS)

#数据处理#
table_1 <- table[[1]][-c(1,2,3), -c(1,4,5,6,7,8,9)] 
head(table_1)
prov <- str_sub(table_1[,1], 1, 2) #选取前两位省代号
prov_coun <- str_sub(table_1[,1], 3, 4) #选取中间两位以区分省直辖县
city <- str_sub(table_1[,1], 5, 6) #选取最后两位以区分地级市
table_2 <- data.frame(table_1, prov, prov_coun, city)
hebei <- subset(table_2, table_2[,3]==13)
hebei_1986 <- subset(hebei, hebei[,5]=="00"|hebei[,4]=="90")


