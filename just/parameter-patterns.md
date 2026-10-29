Constrain parameters with a regex

TLDR: `[arg('NAME', pattern='...')]` rejects arguments that don't match a regular expression

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=4.%20Parameter%20constraints) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

The `[arg()]` attribute takes a `pattern` that each argument must match. The regex syntax comes from the [Rust regex crate](https://docs.rs/regex/latest/regex/#syntax).

## Example

```text
# Bring up Docker containers
[group('docker')]
[arg('ARGS', pattern='-d|--build')]
@up *ARGS:
    docker compose -f docker-compose.dev.yml up {{ ARGS }}
```

Running `just up -x` fails with

```text
error: argument `-x` passed to recipe `up` parameter `ARGS` does not match pattern `-d|--build`
```

The pattern also shows up in `just --usage up`.

## Why It Matters

It's a simple way to validate input for recipes that only take a few known values (environments, flags, etc.).

## Source

The [Just Programmer's Manual](https://just.systems/man/en/recipe-parameters.html)
