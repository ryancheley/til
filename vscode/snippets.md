# Snippets

Based on a blog post from [Marijke]([url](https://marijkeluttekes.dev/blog/articles/2024/01/13/til-visual-studio-code-snippets-have-variables/)) I learned about snippets in VS Code. 

This snippet will take the title of the current file and create the front matter for a Pelican Blog Post

```
{
    "Print to console": {
        "scope": "markdown",
        "prefix": "np",
        "body": [
            "Title: ${TM_FILENAME_BASE/([^-]+)|(-)/${1:/capitalize}${2:+ }/g}",
            "Date: $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE $CURRENT_HOUR:$CURRENT_MINUTE",
            "Author: ryan",
            "Tags: ",
            "Slug: $TM_FILENAME_BASE",
            "Series: ",
            "Status: draft"
        ],
        "description": "Scaffolding for a new Pelican Post"
    }
}

```

This allows you to write `np` in a markdown file, hit the <kbd>Tab</kbd> and populate the front matter for a post

You will also want to ensure that Tab Completion is enabled for your profile. 

A few items will still need to be filled in (like `Tags` and `Series` but I really like this ability and want to figure out other places to use it!
