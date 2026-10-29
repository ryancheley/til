Filter modes and ctrl-r

TLDR: `ctrl-r` in Atuin cycles through filter modes, and `filter_mode` sets the default

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=ctrl%2Dr%20will%20also%20allow%20you%20to%20cycle) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

Atuin can search your history at different scopes: `global`, `host`, `session`, `directory`, `workspace`, and `session-preload`. Pressing `ctrl-r` while in the Atuin search UI cycles through them.

The default is `global` (all synced history from every machine). You can change it with `filter_mode` in `~/.config/atuin/config.toml`.

## Example

```toml
filter_mode = "host"
```

Now searches start with only the current machine's history, and `ctrl-r` still lets you widen or narrow the search.

## Why It Matters

If you sync history across lots of servers, starting in `host` mode keeps results relevant to the machine you're on.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/guide/advanced-usage/#filter-mode)
