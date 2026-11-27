# Whole-project audit with ASCII diagrams

Broken, inconsistent or unneeded code: how it connects explained before any change, what it's sure about fixed, the rest listed.

## Steps

1. Copy the prompt.
2. Send it to Fable 5.2 in Claude Code, in your messiest project.
3. You get: How it connects and where it can break in ASCII diagrams, fixes where it is sure, the rest listed.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this entire project and find everything that's broken, inconsistent, inefficient, or no longer needed. Before you touch any code, prove you get how everything connects and where it can break, in plain English and ASCII diagrams. Fix what you're sure about and list the rest for me to review.
```

## Background

Open your messiest project in Claude Code, type `/model` and pick Fable 5.2.

## Source

From [Copybook](https://copybook.page/t/audit-your-messiest-project-on-fable-5-2): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2120954788762255438) on 12 Nov 2026, 785 saves as of 19 Nov 2026. For Claude Code.
