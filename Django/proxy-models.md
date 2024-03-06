# Proxy Models

Proxy models allow you to alter the behavior (at the Python level) of a model. It does this through an inheritance idea. Per the [docs](https://docs.djangoproject.com/en/5.0/topics/db/models/#proxy-models)

> Sometimes, however, you only want to change the Python behavior of a model – perhaps to change the default manager, or add a new method.

I had a hard time wrapping my head around this idea, even though the docs have a good example in them

```
from django.db import models


class Person(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)


class MyPerson(Person):
    class Meta:
        proxy = True

    def do_something(self):
        # ...
        pass
```

This [video](https://youtu.be/KF2p-LQjZZ4?si=f6rp0lIlAckvTfNA) had an example show casing how to use proxy models with filters AND sorting and suddenly it clicked!

My understanding is that a proxy model can be used to implement specific behavior that can be applied in specific situations, but which isn't suitable as a default. The example in the video shows the creation of a task with a State of 'In Progress' that is automatically set when using a Proxy model of TaskInProgress. 



