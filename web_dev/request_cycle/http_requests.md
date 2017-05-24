# HTTP Requests - Research Questions and Answers

**1. What are some common HTTP status codes?**
Common HTTP status codes include:
* 404 Not Found - the server has not found anything matching the request
* 403 Forbidden - the server understood the request, but is refusing to fulfill it
* 500 Internal Server Error - the server encountered an unexpected condition which prevented it from fulfilling the request
* 503 Service Unavailable - Your web server is unable to handle your HTTP request at the time
* 504 Gateway Timeout - the server was acting as a gateway or proxy and did not receive a timely response from the upstream server
* More info available in [this site](https://www.smartlabsoftware.com/ref/http-status-codes.htm)


**2. What is the difference between a GET request and a POST request? When might each be used?**
* GET is for retrieving data. It should have no side effects and you should be able to request the same URL over and over harmlessly. It should be used for viewing something without changing it (e.g., search page).
* POST is for writing data. It may have side effects. Making multiple identical write requests will likely result in multiple writes. Browsers typically give you warnings about this. POST is **not** secure. The data is in the body of the request instead of the URL but it is trivially simple to view/edit. It should be used for changing something (e.g., form changing password).

**3. What is a cookie? How does it relate to HTTP requests?**
* A cookie is a small piece of data sent from a website and stored on the user's computer by the user's browser while the user is browsing. They help websites remember stateful information or to record the user's browsing activity. They are also used to remember arbitrary pieces of information (names, addresses, passwords, etc.).
* The server sends the following in its response header to set a cookie field: ```Set-Cookie: name = value``` or if there is a cookie set, then the browser sends the following in its request header: ```Cookie: name = value```. 