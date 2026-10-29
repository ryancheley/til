Recipe groups

TLDR: `[group('name')]` groups recipes in `just --list`, and `just --list --group name` shows one group

This tip comes from my post [Have you heard the good news about just?](https://ryancheley.com/2026/10/26/have-you-heard-the-good-news-about-just/#:~:text=9.%20Groups) on ryancheley.com.

## Discovery

While reading through the just docs for my "Learning on Leave" series I came across this tip

## Explanation

The `[group()]` attribute groups recipes under a heading when you run `just --list`. The [Django Packages justfile](https://raw.githubusercontent.com/djangopackages/djangopackages/refs/heads/main/justfile) is a good real-world example.

- `just --groups` lists the group names
- `just --list --group <group-name>` lists the recipes in one group

`just --group docker` on its own doesn't work (as of just 1.59.0). It needs `--list` too.

## Example

```text
# Bring up Docker containers
[group('docker')]
@up *ARGS:
    docker compose up {{ ARGS }}

# Bring down Docker containers
[group('docker')]
@down *ARGS:
    docker compose down {{ ARGS }}
```

```fish
just --groups
just --list --group docker
```

## Why It Matters

Once a `justfile` has more than a handful of recipes, groups make `just --list` much easier to scan.

## Source

The [Just Programmer's Manual](https://just.systems/man/en/groups.html)
