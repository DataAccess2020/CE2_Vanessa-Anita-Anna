#Check out the following link:http://www.beppegrillo.it/category/archivio/2016/.
#It contains the entire blog for 2016. There are 47 pages of entries. Scrape all the posts for 2016 following this strategy:
#a.For each of the 47 pages, get all the links and place them into a list (or character vector)
#b.For each link, download the files and sys.sleep() for few seconds
#c.For each downloaded page, scrape the main text. Ask yourself what happens if a page contains no text

#check robots.txt
#the robots.txt is the same as the original Url blog. 
#put the url into the object url2
url2 <- ("http://www.beppegrillo.it/category/archivio/2016/page/")

#a.) create a character vector with all the 47 urls
link_url2 <- str_c(url2, 1:47)



#create a new folder within our project
dir.create("download_grillo")

#b.) download the pages
for(i in seq_along (link_url2)) {
  download.file(url = link_url2[i], destfile = here::here("download_grillo", str_c("page", i, ".html")))
  Sys.sleep(1)
}


#empty list of lists
out <- vector(mode="list", length= 47)
#c.) create a forloop to scrape the main text of the downloaded page
for(i in seq_along(link_url2)) {
  page <- read_html(x = here::here("download_grillo", str_c("page", i, ".html")))
  nodes <- html_nodes(x=page, css = ".td-main-content")
  out[[i]] <- html_text(x=nodes)
}

#what happens if a page contains no text?
#we would find ""

