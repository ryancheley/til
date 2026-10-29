Fall back to a parent justfile

TLDR: `set fallback` makes just search parent directories for a recipe it can't find

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=15.%20set%20fallback) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

With `set fallback`, if a recipe isn't in the current `justfile`, just looks in the `justfile`s of parent directories. Combined with a `justfile` in your home directory, you get personal recipes available from inside every project.

## Example

`~/justfile`

```text
@usage time="daily":
    npx ccusage@latest {{ time }} --breakdown
```

`~/code/ryancheley.com/justfile`

```text
set default-list := true
set fallback

@html:
    make html
```

Without `set fallback`, running `just usage` in `~/code/ryancheley.com` returns

```text
error: justfile does not contain recipe `usage`
```

With it, the recipe from `~/justfile` runs. Use `[no-cd]` on the home-directory recipes that need to run in the directory you called them from.

## Why It Matters

Your personal helper recipes keep working inside projects that have their own `justfile`.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/fallback-to-parent-justfiles.html)
