== README

This is the Ritly file that is homework for my Back End Web Development class.  It's a web app with roughly the same functionality as Bitly.

Things to know about this version:

It only works if the url has an http.  So, for example:

> "www.google.com"

will not work.  Whereas:

> "http://google.com"

will work. 

If I wanted to fix this, I would add some type of check in the controller, probably at the create function to ensure that the create had a "http:/" (and it's variants). And, if not, to add it.

It allows for multiple versions of urls

It does not allow for destroying urls


