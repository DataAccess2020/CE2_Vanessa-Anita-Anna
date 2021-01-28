#Check out the fol lowing link: ht tp://www.beppegrillo.it/un-mare-diplastica-ci-sommergera/. 
#Download it using Rcurl::getURL() to download the page while informing the webmaster about your browser details and providing your email.

#Assigned the URL to an object
url_plastic <- "http://www.beppegrillo.it/un-mare-di-plastica-ci-sommergera/"

#Ask access to the html page with e-mail and specifying the user agent
plastic <- RCurl::getURL(url = url_plastic, httpheader = c(From = "vanessa.ferrara@studenti.unimi.it", 'User-Agent' = "R"))

#Download the html page on our computer
download.file(url_plastic , destfile = ("plastic.html"))
