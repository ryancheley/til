Search command output with Atuin

TLDR: `atuin output search` searches the output of past commands (enable output capture first)

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=atuin%20output%20search%20allows) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

Atuin can capture the output of the commands you run. `atuin output search` then searches that output and returns the most relevant matches, each with its command, when and where it ran, and its output.

Output capture has to be turned on first.

## Example

```fish
atuin config enable output-capture
atuin output search "connection refused"
```

## Why It Matters

When you remember an error message or a value but not the command that printed it, you can search for the output directly.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/reference/output/)
