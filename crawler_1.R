install.packages("rvest")
library(rvest)
url_NBS <- "http://www.mca.gov.cn/article/sj/xzqh/1980/2019/202002281436.html"
web_NBS <- read_html(url_NBS)

#下载表格#
table <- html_table(web_NBS)

#数据处理#
table_1 <- table[[1]][-c(1,2,3), -c(1,4,5,6,7,8,9)]
head(table_1)
