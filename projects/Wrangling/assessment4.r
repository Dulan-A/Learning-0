library(rvest)
url <- "https://web.archive.org/web/20181024132313/http://www.stevetheump.com/Payrolls.htm"
h <- read_html(url)
nodes <- html_nodes(h, "table")
html_text(nodes[[8]])
html_table(nodes[[8]])

tab1 <- html_table(nodes[[1]])
tab2 <- html_table(nodes[[2]])
tab3 <- html_table(nodes[[3]])
tab4 <- html_table(nodes[[4]])

tab19 <- html_table(nodes[[19]])
tab20 <- html_table(nodes[[20]])
tab21 <- html_table(nodes[[21]])

tab_1 <- html_table(nodes[[10]])
tab_2 <- html_table(nodes[[19]])
