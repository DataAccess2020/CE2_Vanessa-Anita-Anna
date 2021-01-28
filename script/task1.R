#Inspect the robots.txt and describe what you can and what you should not do. 
#Pay attention to the allow / disallow statements and the definition of user-agent. 
#What do these lines mean?

#User-agent: *
  #Disallow: /wp-admin/
  #Allow: /wp-admin/admin-ajax.php

#The "User-agent: *" means that the following section applies to all robots.
#The "/wp-admin/" directory is used to exclude all robots from this part of the server. 
#However, the "/wp-admin/admin-ajax.php" directory allows all robots to access to this specific part of that directory.
