# uWSGI is used on DjangoPackages

While looking at the `dockerfiles/django/start.sh` in https://github.com/djangopackages/djangopackages/blob/main/dockerfiles/django/start.sh I learned that DjangoPackages uses `uWSGI` and not `gunicorn`. In looking at the differences between these two I think the reason is that the potential scale needed by DjangoPackages is better served by `uWSGI` 


I asked ChatGPT to first tell me what the script was doing, and then to tell me what the differnces are between `uWSGI` and `gunicorn`. [Here's how it answered](https://chat.openai.com/share/72800bc1-a531-48c2-a3c5-1be8fcabaa8b)