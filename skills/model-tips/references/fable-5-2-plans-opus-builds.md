# Fable 5.2 plans, Opus 5.5 or Codex builds

Fable 5.2 burns tokens fast: planning stays with it, the hardest parts may too, the rest goes to an Opus 5.5 subagent or Codex.

## Steps

1. Copy the prompt.
2. Send it to your Fable 5.2 main session in Claude Code.
3. You get: Fable 5.2 writes the specs; an Opus 5.5 subagent or Codex builds them.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
you're expensive. burn every token where you're strongest. keep this main session (fable 5.2) on planning, your insight and understanding are worth the price. for implementation, write a clear spec and dispatch to an opus 5.5 subagent (medium effort) to execute, or to codex, my quota there sits unused anyway. you may keep the hardest parts in this session.
```

## Background

Fable 5.2 burns tokens fast, but write the prompt like this and it's totally workable.

## Source

From [Copybook](https://copybook.page/t/keep-fable-5-2-on-planning-and-hand-builds-to-opus): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2120260216046727370) on 10 Nov 2026, 886 saves as of 11 Nov 2026. For Claude Code and Codex.
