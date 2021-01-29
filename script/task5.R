#Check out the RCrawler package and its accompanying paper. What does it mean to “ crawl”? And what is it a “web spider”? 
#How is this different from a scraper you have built at point 4? Inspect the package
#documentation and sketch how you could build a spider scraper: which
#function(s) should you use? With which arguments? Don't do it, just sketch and explain.

#1. "Crawling" is a stricter word than scraping: it means pulling as many URLs as you can from a certain web server. 
#2. The web spider is an Internet bot that unables crawling.
#3. The difference between crawling and scraping is that in crawling you only need a crawl agent (the web spider), whereas in scraping you also need a parser (like we did running the "read_html")
#4. The function we would use is "LinkExtract()" from "Rcrawler". In this way we would have obtained all the URLs of the entire website. This function enables to: Fetch and parse a document by URL, to extract page info, HTML source and links (internal/external). 
#5. The arguments used would be:

LinkExtractor(url = "http://www.beppegrillo.it", ExternalLInks = FALSE,
              Useragent = "Chrome")

#We are crawling from the URL "http://www.beppegrillo.it", we are not looking for external links (ExternalLinks = FALSE), we are doing this process through Chrome. 
