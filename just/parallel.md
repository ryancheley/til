Run dependencies in parallel

TLDR: the `[parallel]` attribute runs a recipe's dependencies at the same time

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=7.%20Parallel%20Tasks) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

Add `[parallel]` above a recipe and its dependencies run in parallel instead of one after another.

## Example

Run front end and back end tests at the same time

```text
[parallel]
test: fe be

fe:
    test front-end-project

be:
    test back-end-project
```

```fish
just test
```

## Why It Matters

Independent tasks like front end and back end test suites don't need to wait on each other.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/parallelism.html#parallelism)
