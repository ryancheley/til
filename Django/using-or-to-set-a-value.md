# Using or to set a value

When trying to set the value of a variable this is valid

```
DEFAULT_DB_ALIAS = "default" or getattr(settings, "MAIN_DATABASE_NAME", "default")
```

This will set the value of `DEFAULT_DB_ALIAS` to `default` if the `getattr` can't get set (like when running a test suite) OR if the settings can be loaded it will check for a value in settings.py called `MAIN_DATABASE_NAME` and if it can't be found it sets it to `default`.

I discovered this while working on Django Ticket [16572](https://code.djangoproject.com/ticket/16752) (although the solution I offered isn't what is actually being asked for 😢)