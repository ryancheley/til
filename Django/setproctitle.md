# Adding setproctitle to Django

In a recent episode of [Python Bytes](https://pythonbytes.fm/episodes/show/313/programming-robots-with-a-marker) cohost [Michael Kennedy](https://mastodon.social/@mkennedy@fosstodon.org) highlighted a new package called `setproctitle`. 

In a nutshell, `setproctitle`

> allows a process to change its title (as displayed by system tools such as ps, top or MacOS Activity Monitor).

I thought this would be a neat idea to try with one of my Django projects and it turns out it was straight forward to implement. 

To set it up you:

```
pip install setproctitle
```

Update your `settings.py` file to include the following

```python
import setproctitle

SITE_TITLE = "Super Awesome WebSite Title"
setproctitle.setproctitle(f"Django Web Process: {SITE_TITLE}")
```

Now when you run your Django App you can easily find it running in system tools such as ps, top or MacOS Activity Monitor

<img width="894" alt="setproctitle with django" src="https://user-images.githubusercontent.com/9857779/206869353-8ff32066-9129-45ac-8d92-5f74d426888b.png">
