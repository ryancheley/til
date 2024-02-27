# Using multiple docker images on a single server

When working with Docker you can have multiple Docker images on the same server and use nginx to route the ports to different images. The nginx config can be found [here](https://raw.githubusercontent.com/ryancheley/django-docker-starter-project/main/django-app)

The key is to have the following in your `.env` file:

```
export DOCKER_WEB_PORT_FORWARD=8000
```

And to change the value from `8000` to something else in the 8000 range

I plan on writing up a blog post / tutorial about it soon(ish)