Find your Atuin config with atuin info

TLDR: `atuin info` shows which config files and databases Atuin is using

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=The%20command%20atuin%20info) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

`atuin info` prints the paths to the client config, server config, history database, and key, plus the relevant environment variables and the version. If it finds more than one `config.toml` it prints a warning.

## Example

```fish
atuin info
```

```text
Config files:
client config: "/Users/ryan/.config/atuin/config.toml"
server config: "/Users/ryan/.atuin/server.toml"
client db path: /Users/ryan/.local/share/atuin/history.db
key path: /Users/ryan/.local/share/atuin/key
meta db path: /Users/ryan/.local/share/atuin/meta.db

Env Vars:
ATUIN_HOME = None
ATUIN_CONFIG_DIR = None

Version info:
version: 18.24.3
```

## Why It Matters

When your settings aren't being applied, this tells you which config file Atuin is actually reading. In my case the default config from the install was being used instead of mine.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/reference/info/)
