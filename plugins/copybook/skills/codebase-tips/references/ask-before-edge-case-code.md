# Ask before edge-case code: one AGENTS.md line

The agent codes for races that never happen: one line makes it state the risk and the odds, then wait for your OK.

## Steps

1. Copy the line.
2. Add it to the AGENTS.md in your project.
3. You get: No extra code for problems that only exist in theory until you give your OK.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## AGENTS.md rule

```text
Before you add code for a race condition or security edge case that is unlikely or purely hypothetical, tell me exactly what would go wrong, how likely that is, and how much complexity the extra code adds, in words a 10-year-old could understand. Then wait for my OK. Don't quietly widen the scope to guard against problems that only exist in theory.
```

## Background

Add this line to your AGENTS.md so your agent stops reflexively adding code for race conditions and security issues that will almost never happen.

## Source

From [Copybook](https://copybook.page/t/ask-before-adding-code-for-unlikely-edge-cases): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2113632785759973649) on 23 Oct 2026, 598 saves as of 20 Nov 2026. For Claude Code and Codex.
