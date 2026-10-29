Map Atuin hosts to hostnames

TLDR: `atuin store status` lists hosts by UUID; `~/.local/share/atuin/host_id` maps each UUID to a machine

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=The%20atuin%20store%20status%20command) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

`atuin store status` shows the sync status of every machine attached to your account, but each host is shown as a UUID. Each machine stores its own UUID in `~/.local/share/atuin/host_id`, so you can print it next to the hostname.

## Example

Run this on each machine (fish syntax)

```fish
printf '%s %s\n' (cat ~/.local/share/atuin/host_id) (hostname -s)
```

Then compare the output with

```fish
atuin store status
```

## Why It Matters

With lots of servers syncing, it tells you which UUID belongs to which machine.

## Source

My post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=The%20atuin%20store%20status%20command)
