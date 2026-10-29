Run recipes at the end of a recipe

TLDR: dependencies listed after `&&` run after the recipe instead of before it

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=6.%20Run%20recipes%20at%20the%20end) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

Normally a recipe's dependencies run before the recipe. Any dependencies listed after `&&` run after the recipe finishes successfully.

## Example

```text
test: build && deploy
    run tests

build:
    build project

deploy:
    deploy project
```

Running `just test` will

1. Run the `build` recipe
2. Run the `test` recipe
3. Run the `deploy` recipe

## Why It Matters

You can chain "do this after" steps without writing a wrapper recipe, and the later step only runs if the main recipe succeeds.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/dependencies.html#running-recipes-at-the-end-of-a-recipe)
