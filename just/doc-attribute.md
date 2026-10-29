Documenting recipes with [doc()]

TLDR: use `#` comments for one-line recipe docs, or the `[doc()]` attribute for multi-line docs

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=8.%20Recipe%20documentation) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

A `#` comment above a recipe shows up in `just --list`, but it's limited to a single line. The `[doc()]` attribute supports multi-line documentation. The output is a little odd, though: the lines are printed above the recipe name instead of next to it.

## Example

```text
[group('docker')]
[doc('
Bring up Docker containers
A second line
and a third
')]
@up *ARGS:
    docker compose -f docker-compose.dev.yml up {{ ARGS }}
```

`just --list` shows

```text
    # Bring up Docker containers
    # A second line
    # and a third
    up *ARGS
```

## Why It Matters

Recipes that need more than a one-line explanation can carry that explanation with them.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/documentation-comments.html)
