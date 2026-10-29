Deduplicate your Atuin history

TLDR: `atuin history dedup` removes duplicate history entries; run it with `--dry-run` first

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=Deduplicating%20your%20history) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

`atuin history dedup` removes duplicate commands from your history. Useful after importing history, or after a runaway script floods it.

- `--before` only dedups entries older than a date
- `--dupkeep` sets how many copies to keep (the most recent ones are kept)
- `--dry-run` shows what would be removed without removing it

## Example

See what would be removed

```fish
atuin history dedup --dry-run --before "2025-01-01" --dupkeep 1
```

Remove it

```fish
atuin history dedup --before "2025-01-01" --dupkeep 1
```

## Why It Matters

Cleaner history means better search results.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/guide/delete-history/#deduplicating-history)
