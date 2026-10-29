Start an Atuin search with a term

TLDR: `atuin search -i docker` opens the interactive search already filtered to `docker`

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=The%20highlight%20feature%20of%20Atuin) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

`atuin search -i` opens the same interactive search UI as `ctrl-r` or the up arrow. Passing a search term opens it already filtered.

## Example

```fish
atuin search -i docker
```

You can also search without the UI, like `atuin search --exit 0 --after "yesterday 3pm" make`.

## Why It Matters

It's a quick jump straight to a family of commands without typing the filter after the UI opens.

## Source

The [Atuin docs](https://docs.atuin.sh/latest/reference/search/#examples)
