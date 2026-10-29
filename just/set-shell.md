Set the shell just uses

TLDR: `set shell` (and `set windows-shell`) control which shell runs your recipes

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=12.%20Set%20your%20shell) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

By default just runs recipes with `sh`. You can change that with `set shell`, which is especially helpful on Windows when you want PowerShell instead of WSL.

## Example

```text
set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
```

`windows-shell` only applies on Windows, so the same `justfile` keeps using `sh` on macOS and Linux. To change the shell everywhere use `set shell := [...]` instead.

## Why It Matters

One `justfile` can work on Windows, macOS, and Linux.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/shell.html)
