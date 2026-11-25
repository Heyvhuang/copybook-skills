# Karpathy's 4 coding principles for CLAUDE.md

The agent over-designs and edits what it wasn't asked to: think before coding, simplicity first, surgical edits, goal-driven work.

## Steps

1. Copy the CLAUDE.md principles.
2. Paste them into your CLAUDE.md.
3. You get: Claude Code asks when unsure, keeps code minimal and touches only what the task needs.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## CLAUDE.md principles

```markdown
- think before coding: ask when unsure, don't silently pick one interpretation and run with it
- simplicity first: minimum code, any overengineering shows at a glance
- surgical edits: only touch what's required, don't fix up neighboring code on the way by
- goal-driven: translate fuzzy instructions into verifiable targets before starting
```

## Background

The #1 repo on GitHub trending that week was a CLAUDE.md file, with 44,465 new stars in a week: a skill distilling Andrej Karpathy's LLM coding pitfalls into four principles.

Swapped into my CLAUDE.md, a few tasks in, it feels tighter.

## Source

From [Copybook](https://copybook.page/t/karpathy-coding-principles-for-claude-md): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2045899539526148193) on 19 Apr 2026, 6.7K saves as of 24 Jul 2026. For Claude Code.
