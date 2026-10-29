Custom Atuin theme

TLDR: drop a TOML file in `~/.config/atuin/themes/` and set `[theme] name` in `config.toml`

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=My%20Dracula%20theme%20looks%20like%20this) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

Atuin doesn't ship a theme library, but you can create your own. A theme is a TOML file in `~/.config/atuin/themes/` that sets the colors.

## Example

`~/.config/atuin/themes/dracula.toml`

```toml
[theme]
name = "dracula"

[colors]
Base = "#f8f8f2"          # Dracula Foreground
Muted = "#6272a4"         # Dracula Comment/Grey
Title = "#bd93f9"         # Dracula Purple
Important = "#ff79c6"     # Dracula Pink
Guidance = "#8be9fd"      # Dracula Cyan
Annotation = "#6272a4"    # Dracula Comment/Grey
AlertInfo = "#50fa7b"     # Dracula Green
AlertWarn = "#ffb86c"     # Dracula Orange
AlertError = "#ff5555"    # Dracula Red
```

Then in `~/.config/atuin/config.toml`

```toml
[theme]
name = "dracula"
```

## Why It Matters

Atuin can match the rest of your terminal's color scheme.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/guide/theming/#theme-creation)
