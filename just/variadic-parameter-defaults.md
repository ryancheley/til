Variadic parameter defaults

TLDR: variadic parameters (`*ARGS` / `+ARGS`) can have a default value

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=2.%20Variadic%20parameters) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

A variadic parameter accepts any number of arguments. Use `+` for one or more and `*` for zero or more. You can also give a `*` parameter a default, which is used when no arguments are passed.

## Example

```text
# Bring up Docker containers
[group('docker')]
@up *ARGS='-d':
    docker compose -f docker-compose.dev.yml up {{ ARGS }}
```

With this recipe these two commands do the same thing

```fish
just up
just up -d
```

Passing anything else (like `just up --build`) replaces the default.

## Why It Matters

You get a sensible default for the common case but can still pass whatever flags you need.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/recipe-parameters.html)
