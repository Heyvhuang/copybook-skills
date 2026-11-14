# Mod request for Claude Code itself

Something in Claude Code's interface you want changed: a prompt that finds an existing Mod or proposes the smallest one.

## Steps

1. Copy the prompt and replace the request in brackets with your own.
2. Send it to Claude Code with the Mods link.
3. You get: An existing Mod or setting, or the smallest custom Mod and a test plan, before installing.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
I want to change this behavior in Claude Code: [in the desktop app, hide sensitive values by default and reveal them on hover].

Read the Claude Mods documentation below and check whether my current version and interface support this. First look for an existing Mod or setting that can do it. If it needs a custom Mod, propose the smallest implementation and how to test it. Wait for my confirmation before installing anything or changing settings.
```

## Background

Claude Code is rolling out Mods, so you can ask Claude to add features to itself. A Mod is a plugin that customizes Claude Code's interface and behavior.

Say you're recording a demo and don't want sensitive information showing up on screen. Anthropic demonstrated a Mod in Claude Code Desktop that hides sensitive values by default and reveals them when you hover over them.

Send Claude the link and this prompt. Replace the request in brackets with your own: https://github.com/anthropics/claude-code/issues/91870

Mods are still in early access, and their APIs may change.

## Source

From [Copybook](https://copybook.page/t/ask-claude-code-to-build-a-mod-for-itself): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2099564071972450641) on 14 Sep 2026, 395 saves as of 12 Oct 2026. For Claude Code.
