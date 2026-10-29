Show a command's history with ctrl-o

TLDR: in Atuin's search UI, `ctrl-o` shows every run of the selected command

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=you%20can%20use%20ctrl%2Do) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

While searching in Atuin (`ctrl-r` or the up arrow), pressing `ctrl-o` on a command opens the history of that command: when it ran, where, and whether it succeeded. The results respect the current filter mode, so in `host` mode you only see runs from the current machine.

## Example

1. Open Atuin with `ctrl-r`
2. Highlight a command
3. Press `ctrl-o`

## Why It Matters

It's a quick way to answer "when did I last run this, and did it work?"

## Source

The [Atuin docs](https://docs.atuin.sh/latest/guide/advanced-usage/#filter-mode)
