The first time I heard this question, I had feeling that I truly understand what exactly happens but all of sudden I faced the reality and it made want to dig deep and keenly understand and share with you the magic that happens when you type a URL (Uniform Resource Locator) in a browser.

Before diving into the details of the web infrastructure, it’s important to understand the client-server model. On the World Wide Web, the network is organized between clients, which request data, and servers, which stores the data and manages most of the processing of this data. For example, a browser is considered a client, and a server would be the computer program serving data to that client.

The DNS BRAINS

DNS(Domain Name System) is a database that maintains the name of the website (URL) and the particular IP address it links to. So When we type the URL https://www.holbertonschool.com into our browser, DNS matches the URL to its unique IP address. So meaning we can as well use the IP address to search for a URL page from the browser.

In simple words, DNS is a list of URLs, and their IP addresses, like how a phone book is a list of names and their corresponding phone numbers.

Protocols: TCP/IP

We mentioned how domain names actually represent IP addresses, but IP is not the only type of protocol use by the Internet. The Internet Protocol Suite is often referred to as TCP/IP (TCP stand for Transmission Control Protocol), and it also contains other types of protocols. It’s a set of rules that define how servers and clients interact over the network, and how data should be transferred, broken into packets, received, etc.

The Firewall

To protect themselves from hackers and attacks, servers are often equipped with a firewall. A firewall is a software that sets rules about what can enter or leave a part of a network. In the case of our example, when the browser asks for the website at the address 54.172.4.191, that request has be processed by a firewall which will decide if it’s safe, or if it’s a threat to the server’s security. The browser itself can also be equipped with a firewall to detect if the IP given by the DNS request is a potential malicious agent.

Security and Encryption: HTTPS/SSL

Now that the browser has the IP address, it is going to take care of the other part of the URL, the https:// part. HTTPS stands for HyperText Transfer Protocol Secure, and is a secure version of the regular HTTP. This transfer protocol defines different types of requests and responses served to clients and servers over a network. In other terms, it’s the main way to transfer data between a browser and a website. HTTP and HTTPS requests include GET, POST, PUT, and others. The HTTPS requests and responses are encrypted, which ensure the users that their data can’t be stolen or used by third-parties.

Load-balancer

As we mentioned earlier, websites live on servers. For most website where the traffic is consequent, it would be impossible to be hosted on a single server. Plus, it would create a Single Point of Failure (SPOF), because it would only need one attack on said server to take the whole site down.

As needs for higher availability and security rises, websites started augmenting the number of servers they have, organizing them in clusters, and using load-balancers. A load-balancer is a software program that distribute network requests between several servers, following a load-balancing algorithm. HAproxy is a very famous load-balancer, and example of algorithms that we can use are the round-robin, which distributes the requests alternating between all the servers evenly and consequentially, or the least-connection, which distributes requests depending on the current server loads.

The Web server

Once the requests have been evenly distributed to the servers, they will be processed by one or more web servers. A web server is a software program that serves static content, like simple HTML pages, images or plain text files. Examples of web servers are Nginx or Apache. The web server is responsible for finding where the static content corresponding to the address asked for is living, and for serving it as an HTTP, or HTTPS response.

The Application server

Having a web server is the basis of any web page. But most sites don’t just want a static page where no interaction is happening, and most websites are dynamic. That means that it’s possible to interact with the site, save information into it, log in with a user name and a password, etc.

The Database

The last step in our web infrastructure is the Data Base Management System (DBMS). A database is a collection of data, and the DBMS is the program that is going to interact with the database and retrieve, add, modify data in it.

There are several types of database models. The two main ones are relational databases, and non-relational databases. A relational database can be seen as a collection of tables representing objects, where each column is an attribute and each row is an instance of that object. We can perform SQL (Structured Query Language) queries on those databases. MySQL and PostgreSQL are two popular relational databases. A non-relational database can have many forms, as the data inserted in it doesn’t have to follow a particular schema. Here we can take NoSQL (MongoDB).
