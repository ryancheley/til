Importing other justfiles

TLDR: `import 'file.just'` pulls another file's recipes into your `justfile`

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=14.%20Importing%20other%20justfiles) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

`import` includes the recipes from another file as if they were written in the main `justfile`. This is different from [modules](https://github.com/ryancheley/til/blob/main/just/modules.md): with `mod`, recipes are namespaced (`just docker::up`); with `import` they're not (`just up`).

## Example

```text
.
├── be.just
├── docker.just
├── fe.just
└── justfile
```

`be.just`

```text
[doc('Used to run the back end tests')]
[group('backend')]
@be-test:
    echo "run back end tests"
```

`justfile`

```text
import 'be.just'
import 'fe.just'
import 'docker.just'

set default-list := true
```

Now `just be-test` works from the main `justfile`.

## Why It Matters

Recipes can be split up by concern without changing how you call them.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/imports.html)
