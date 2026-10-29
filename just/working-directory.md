Set the working directory

TLDR: `set working-directory := 'dir'` runs recipes from a different directory

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=13.%20Working%20Directory) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

You can set the working directory for an entire `justfile` with `set working-directory`, or for a single recipe with the `[working-directory('dir')]` attribute.

## Example

Instead of this

```text
simple:
    ./scripts/simple.sh

complicated:
    ./scripts/complicated.sh
```

you can write

```text
set working-directory := 'scripts'

simple:
    ./simple.sh

complicated:
    ./complicated.sh
```

## Why It Matters

If most of your recipes call scripts in a subdirectory you don't need to repeat the path in every recipe.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/working-directory.html)
