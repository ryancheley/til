# Load Balancers

I'm trying to learn more about load balancers and it looks like they're not actually that hard to set up and/or think about. 

At my day job we have a hardware load balancer in front of a set of Remote Desktops that route users to a VM for an application. I've never had to really do anything with it, but I really wanted to try and figure out how would I set that up in a web application. 

I watched [this](https://youtu.be/v81CzSeiQjo?si=QXSpFvZbUgL8qZ6u) short video and it seems pretty straight forward using `nginx`

The [docs](https://docs.nginx.com/nginx/admin-guide/load-balancer/http-load-balancer/) for setting it up are pretty robust, but here's my understanding of what you'd do ... assuming you're using a web framework (like Django) with a separate database server (perhaps a managed database on [Digital Ocean](http://digitalocean.com/) or [Crunchy Data](https://www.crunchydata.com))

1. Set up / provision your database server (let's say it's a IP address 10.120.1.1)
2. Set up your web servers that will connect to your database ... let's set up 2 of them at 10.120.1.2 and 10.120.1.3
3. Set up your load balancer at 10.120.1.4

In the load balancer you'd install `nginx` and configure it something like this:

```
http {
    upstream backend {
        server 10.120.1.2;
        server 10.120.1.3;
   }
}

server {
    location / {
        proxy_pass http://backend;
    }
}
```

You can additionally set the load balancing method (Round Robin, Least Connection, IP Hash, etc) and you can configure logs that show which call is going to which server. 

Then you set your domain at your registrar of choice (like [Hover](https://www.hover.com)) to point to your load balancer IP (10.120.1.4) and it will route the traffic to where it needs to go. 

Digital Ocean does offer this as a service, but it's $12 per node per month and it seems to me that you could just as easily spin up a droplet and do it yourself