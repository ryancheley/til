Django migrations fake flag

Today while I was working on a [feature to consolidate the settings files](https://github.com/djangopackages/djangopackages/issues/915) for DjangoPackages to consolidate the settings files I ran into an error about missing column when I would log into the admin. 

The message was essentially that the field `share_favorites` was missing from the `profiles` table. 

The confusing thing for me was that when I would run the migration command I would get an error that the field `ExtraField` was already present in the profiles table. 

I then took at a look at the migrations with the showmigrations command and noticed that there were 2 migrations that hadn't been run from the profiles model

```bash
profiles
 [X] 0001_initial
 [X] 0002_auto_20150716_2222
 [X] 0003_auto_20180214_0617
 [X] 0004_remove_profile_google_code_url_profile_gitlab_url_and_more
 [ ] 0005_extrafield
 [ ] 0006_profile_share_favorites
```

After a bit of googling, I came across the [`--fake` flag](https://docs.djangoproject.com/en/5.1/ref/django-admin/#cmdoption-migrate-fake) that can be used in the `migration` command

The syntax of the command is

```bash
python manage.py migrate --fake app_label migration_name
```

The app name I needed to fix was `profiles` and the specific migration that was causing an issue was `0005_extrafield`

In order to resolve the issue I had to run the following commands

```bash
python manage.py migrate --fake profiles 0005_extrafieldclear
python manage.py migrate
```

Problem solved!

NB: There is a note stating

> be warned that using --fake runs the risk of putting the migration state table into a state where manual recovery will be needed to make migrations run correctly.

Since this was just local development and I can reset my local database if I mess it up too badly I wasn't super worried about that. Running this on a production environment will probably need more care than this!
