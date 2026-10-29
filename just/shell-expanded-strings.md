Shell-expanded strings

TLDR: strings prefixed with `x` (like `x'~/...'`) are shell expanded, so you can import from your home directory

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=11.%20Shell%20expanded%20strings) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

As of just 1.27.0, strings prefixed with `x` are shell expanded, so `~` and environment variables like `$HOME` work in them. One useful trick is keeping shared recipes in one file and importing them into every project.

## Example

```text
import x'~/.config/just/common.just'
```

## Why It Matters

Common recipes live in one place instead of being copied into every project's `justfile`.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/strings.html#shell-expanded-strings)
