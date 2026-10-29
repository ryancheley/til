Recipe usage information

TLDR: `just --usage <recipe>` prints the arguments a recipe takes

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=5.%20Usage%20information) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

The `--usage` flag prints usage information for a single recipe, including its arguments.

## Example

Given this recipe

```text
@post title category:
    make newpost title="{{title}}" category="{{category}}"
```

running

```fish
just --usage post
```

returns

```text
Usage: just post title category

Arguments:
  title
  category
```

## Why It Matters

Handy when you can't remember what arguments a recipe needs (or whether it takes any at all).

## Source

The [Just Programmer's Manual](https://just.systems/man/en/recipe-parameters.html)
