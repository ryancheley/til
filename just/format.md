Format your justfile

TLDR: `just --fmt --check` checks formatting and `just --fmt` fixes it

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=19.%20Format%20your%20justfile) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

just has a built-in formatter.

- `just --fmt --check` exits with an error (and shows a diff) if the `justfile` isn't formatted
- `just --fmt` rewrites the `justfile` in place

On older versions of just you may need to add `--unstable`.

## Example

```fish
just --fmt --check
just --fmt
```

## Why It Matters

`just --fmt --check` works well in a pre-commit hook or CI job to keep `justfile`s consistent.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/formatting-and-dumping-justfiles.html)
