Limit the number of variadic arguments

TLDR: `[arg('ARGS', min='1', max='4')]` caps how many arguments a variadic parameter accepts

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=3.%20Variadic%20parameters%20limits) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

The `[arg()]` attribute can set a minimum and maximum number of values for a variadic parameter. It's an unstable feature, so the `justfile` needs `set unstable` (and `set lists`).

## Example

```text
set unstable
set lists

# Bring up Docker containers
[group('docker')]
[arg('ARGS', min='1', max='4')]
@up *ARGS:
    docker compose -f docker-compose.dev.yml up {{ ARGS }}
```

Passing too many arguments fails before anything runs

```text
error: recipe `up` parameter `ARGS` got 5 values but takes at most 4
```

## Why It Matters

It catches a fat-fingered command before it gets passed along to whatever the recipe calls.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/recipe-parameters.html)
