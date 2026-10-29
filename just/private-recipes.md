Private recipes

TLDR: `[private]` hides a recipe from `just --list`

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=10.%20Private%20Recipes) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

The `[private]` attribute keeps a recipe out of `just --list` (and `just --choose`). It's meant for helper recipes that only exist as dependencies or building blocks. They can still be run directly.

## Example

```text
# Format the justfile
[private]
[group('utils')]
@fmt:
    just --fmt --unstable
```

`fmt` no longer shows up in `just --list`, but `just fmt` still works.

## Why It Matters

The recipe list stays focused on the things you actually run.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/private-recipes.html)
