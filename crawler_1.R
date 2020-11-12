install.packages("rvest")
library(rvest)
url_NBS <- "http://www.mca.gov.cn/article/sj/xzqh/1980/2019/202002281436.html"
web_NBS <- read_html(url_NBS)