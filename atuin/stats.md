Atuin stats

TLDR: `atuin stats` shows your most-used commands for a time period and filter mode

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=You%20can%20run%20atuin%20stats) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

`atuin stats` summarizes the commands you've been running. It takes a time period (in plain English) and an optional `--filter-mode`.

## Example

```fish
atuin stats week --filter-mode session
```

```text
[▮▮▮▮▮▮▮▮▮▮] 4 cat
[▮▮▮▮▮▮▮   ] 3 clear
[▮▮▮▮▮▮▮   ] 3 grep
[▮▮▮▮▮     ] 2 just
[▮▮▮▮▮     ] 2 atuin
```

Natural-language times work too

```fish
atuin stats last thursday 3pm
```

## Why It Matters

It shows which commands you use most, and those are good candidates for aliases or `just` recipes.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/reference/stats/)
