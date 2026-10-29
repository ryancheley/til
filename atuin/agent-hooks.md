Capture AI agent commands in Atuin

TLDR: `atuin hook install claude-code` records the commands your AI agent runs

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=Agent%20integration) on ryancheley.com.

## Discovery

While reading through the Atuin docs for my "Learning on Leave" series I came across this tip

## Explanation

`atuin hook install claude-code` adds a hook so commands run by Claude Code end up in your Atuin history. Atuin tags them so they're easy to search for, or filter out.

There's also `atuin mcp install claude-code`, which lets the agent search your history. It needs Atuin's hosted sync server, or a self-hosted agent server if you run your own sync server.

## Example

```fish
atuin hook install claude-code
atuin mcp install claude-code
```

## Why It Matters

You can see exactly what an agent ran in your terminal, and keep it separate from your own history.

## Source

The [Atuin agent hooks docs](https://docs.atuin.sh/latest/guide/agent-hooks/) and the [Atuin MCP docs](https://docs.atuin.sh/latest/ai/mcp/)
