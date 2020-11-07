library(rvest)
library(tidyverse)
url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"
dat <- read_html(url)
tab <- html_nodes(dat, "table")
y <- NROW(tab)
for (x in 1:y){
  
  print(x)
  tab1 <- html_table(tab[x], fill=TRUE)
  print(str(tab1))
}
