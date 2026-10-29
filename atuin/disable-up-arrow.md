Disable Atuin's up arrow binding

TLDR: `atuin init fish --disable-up-arrow` keeps `ctrl-r` but gives the up arrow back to your shell

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=Key%20Bindings) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

By default Atuin binds both `ctrl-r` and the up arrow. In some terminals (Herdr, for me) scrolling up with the mouse sends up-arrow key presses, so scrolling opens Atuin instead of scrolling the output.

You can turn off just the up-arrow binding when Atuin is initialized.

## Example

In `~/.config/fish/config.fish`

```fish
atuin init fish --disable-up-arrow | source
```

`ctrl-r` still opens Atuin, and the up arrow goes back to fish's normal history behavior.

## Why It Matters

Your mouse wheel scrolls the terminal again.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/configuration/key-binding)
