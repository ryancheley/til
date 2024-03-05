# Migrate Zero

Today I was watching Tim Schilling worok on an update to the Djangonaut.space site. While working on the post deployment testing an issue came up with a third part package that was added. The package had some migrations associated with it and I saw Tim run something like this  command:

```
$ python manage.py migrate books zero
Operations to perform:
  Unapply all migrations: books
Running migrations:
  Rendering model states... DONE
  Unapplying books.0002_auto... OK
  Unapplying books.0001_initial... OK
```

I had never seen the use of the option `zero` and decided to dig into it a little more. Per the [docs](https://docs.djangoproject.com/en/5.0/topics/migrations/#reversing-migrations)

> If you want to reverse all migrations applied for an app, use the name zero

It's good to know that **if** I need to undo all of the migrations of an app I can. 