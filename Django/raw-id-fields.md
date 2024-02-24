# Django's raw_id_field

While reviewing a [PR on DjangoPackages](https://github.com/djangopackages/djangopackages/pull/1110) I saw the use of [raw_id_fields](https://docs.djangoproject.com/en/5.0/ref/contrib/admin/#django.contrib.admin.ModelAdmin.raw_id_fields) which I hadn't seen before. In looking at the docs this is something I have known I needed, but didn't know how to ask the question! 

Per the docs:

> Sometimes you don’t want to incur the overhead of having to select all the related instances to display in the drop-down.

This will be a super useful for a project at work.