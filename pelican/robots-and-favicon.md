# Adding a robots.txt and favicon.ico files to my Pelican Site

I was looking at the error logs for my blog and noticied a pretty consistent theme:

A bunch of [404 errors](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/404) for the `robots.txt` and `favicon.ico` so I decided to figure out how to add them to my [Pelican](favicon.ico) driven site!

The [documentation](https://docs.getpelican.com/en/stable/tips.html?highlight=favicon#copy-static-files-to-the-root-of-your-site) is really good for showing what needs to be done

In the `PATH` folder (which is determined by your settings in your `pelicanconf.py` file and in my case is `content`) you add a new directory to store your `robots.txt` and `favicon.ico` files. 

I opted for adding them to a new directory called `static`. 

Once that was decided I added a robots.txt files and my favicon.ico file to the static directory and updated my `pelicanconf.py` with the following settings:

```python
STATIC_PATHS = [
  "images", 
  "static/robots.txt", #new
  "static/favicon.ico" #new
]

# the setting below is entirely new
EXTRA_PATH_METADATA = {
    "static/robots.txt": {"path": "robots.txt"},
    "static/favicon.ico": {"path": "favicon.ico"},
}
```

Once that was done I just ran `make html` locally to ensure that the files appeared where I needed them to and voila ... I have a `robots.txt` and `favicon.ico` on my site
