default-list

TLDR: `set default-list := true` makes running `just` with no arguments list the recipes

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=1.%20default%2Dlist) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

When you run `just` with no arguments it runs the first recipe in the file. A common workaround is a `_default` recipe that calls `just --list`. The `default-list` setting does the same thing without the extra recipe.

## Example

Instead of this

```text
@_default:
    just --list
```

add this to the top of your `justfile`

```text
set default-list := true
```

Now running `just` prints `Available recipes:` and the list of recipes (with their comments).

## Why It Matters

One less boilerplate recipe in every `justfile`. Note that `just --fmt` rewrites this to the shorter `set default-list`.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/settings.html)
