#Create a data frame with all the HTML links in the page. 
#You can use rvest:: or check out the XML::getHTMLLinks function. 
#Then, use a regex to keep only those links that re-direct to other posts of the beppegrillo.it blog 
#(so remove all other links).

#page with all the http code
flat_page <- readr::read_lines(file = url_plastic)
#regular expression to match urls
links_regex <- "https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}\\b([-a-zA-Z0-9()@:%_\\+.~#?&//=]*)"
#extract the links
links <- str_extract_all(string = flat_page[], pattern = links_regex, simplify = TRUE)
#delete the spaces
links <- links[links != ""]

#delete all the sites that are not form the blog 
links_1 <- str_subset(links, 
                    pattern = "^http://www.beppegrillo\\.it")
#data fame with all the links
links_df <- tibble(links_1)

#delete all the duplicates and find the definitive dataframe
links_df_1<- links_df[!duplicated(links_df$links_1), ]



