library(rvest)
library(tidyverse)
library(stringr)

#爬取主页面#
web <- vector("list", 3)
web_base <- "http://www.mca.gov.cn/article/sj/xzqh/1980/?"
web[[1]] <- read_html(web_base)
for(i in 1:2)
{
  web_m <- paste0(web_base,i+1)
  web[[i+1]] <- read_html(web_m)
  i = i+1
}

#爬取每年的网站链接#
year_link <- vector("list", 3)
for(i in 1:3)
{
  year_link[[i]] <- html_nodes(web[[i]], "div.alist a") %>% html_attr("href")
  i = i+1
}
head(year_link)

