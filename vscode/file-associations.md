# File Associations

I was reading through my backlog of articles today and came across [this](https://marijkeluttekes.dev/blog/articles/2023/07/27/quick-tip-set-folder-based-file-associations-in-visual-studio-code/) by Marijke talking about File associations in VS Code. 

I **think** I had heard of them before, but what really blew my mind was:

1. They can be project specific
2. The can be directory specific

Since these settings are stored in `.vscode/settings.json` maybe I should have realized that they were project specific, but seeing it written out explicitly helped me make the connection for real.

But the idea that they could be directory specific was 🤯

From Marijke's post here's an example:

```
{
  "files.associations": {
    "*.html": "html",
    "**/src/**/*.html": "django-html",
    "**/src/path-to-mail-templates/*.txt": "django-txt"
  }
}
```

Here `django-html` is used to open any `html` files in the `src` directory (or any of it's sub directories)

