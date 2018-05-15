  ### URL Analyser
  ### Global options and packages

    options(scipen = 999)
    options(stringsAsFactors = F)
    setwd("~/Dropbox/Work")
    library(tidyverse)
    library(rvest)
    
  ### Meta tag extraction
    
    sapply(url_list, 
           function(url){
             url %>% 
               as.character() %>%   # in case strings are stored as factors
               read_html() %>% 
               html_nodes('h1') %>% 
               html_text()
           })
    
    
    