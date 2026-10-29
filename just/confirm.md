Confirm before running a recipe

TLDR: the `[confirm]` attribute prompts before a recipe runs

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=18.%20Confirm%20attribute) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

Add `[confirm]` to a destructive recipe and just asks for confirmation before running it. Answering anything other than `y` cancels it.

## Example

```text
[confirm]
delete-all:
    rm -rf *
```

Running `just delete-all` now shows

```text
Run recipe `delete-all`?
```

You can also pass a custom prompt: `[confirm('Really delete everything?')]`.

## Why It Matters

It's a cheap safety net for the recipes you really don't want to run by accident.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/requiring-confirmation-for-recipes.html)
