Atuin scripts

TLDR: `atuin scripts new --last N` turns your last N commands into a reusable script

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=The%20atuin%20scripts%20command) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

`atuin scripts` is currently undocumented, but there's a [blog post announcing it](https://blog.atuin.sh/atuin-scripts-shareable-syncable-shell-snippets/). You can turn your most recent commands into a named, tagged script that syncs with the rest of your Atuin data.

## Example

Create a script from the last 3 commands

```fish
atuin scripts new script-name --last 3 --tags my-tag --description "Does the thing!"
```

List and run scripts

```fish
atuin scripts list
atuin scripts run script-name
```

```text
Available scripts:
- script-name [tags: my-tag]
  Description: Does the thing!
```

## Why It Matters

It's useful when you have to repeat the same set of commands on several machines.

## Source

The [Atuin scripts announcement](https://blog.atuin.sh/atuin-scripts-shareable-syncable-shell-snippets/)
