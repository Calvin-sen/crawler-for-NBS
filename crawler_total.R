library(rvest)
library(tidyverse)
library(stringr)

web <- vector("list", 3)
web_base <- "http://www.mca.gov.cn/article/sj/xzqh/1980/?"
web[[1]] <- read_html(web_base)
for (i in 1:2)
{
  web_m <- paste0(web_base,i+1)
  web[[i+1]] <- read_html(web_m)
  i = i+1
}


