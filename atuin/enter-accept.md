Run commands straight from Atuin with enter_accept

TLDR: `enter_accept = true` runs the selected command on `enter`; `tab` returns it to the shell to edit

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=enter_accept%3A%20This%20defaults) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

By default, pressing `enter` in Atuin puts the command on your prompt and you press `enter` again to run it. With `enter_accept = true`, `enter` runs it right away. `tab` still puts it on the prompt so you can edit it first.

While you're in `config.toml`, `inline_height` sets the maximum number of lines Atuin's UI takes up (the default is 40).

## Example

`~/.config/atuin/config.toml`

```toml
enter_accept = true
inline_height = 15
```

## Why It Matters

One keystroke to rerun a command, with `tab` still there when you need to edit first.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/configuration/config/#enter_accept)
