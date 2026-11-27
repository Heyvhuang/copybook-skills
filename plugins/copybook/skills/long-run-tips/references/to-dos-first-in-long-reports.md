# To-dos first in long reports: an AGENTS.md rule

What it needs from you is buried mid-report: one AGENTS.md section puts the to-dos, numbered, at the top of every report.

## Steps

1. Copy the AGENTS.md section.
2. Add it to your AGENTS.md as a new section.
3. You get: Long reports open with numbered to-dos for you, the most blocking first.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## AGENTS.md section

```markdown
## 7. Lead with what you need from me
When a long task is done, or you're stuck and need me to do something, list what you need from me at the very top of your reply. One thing per item, numbered. Spell out what I should do, where, and what to send back to you when I'm done, e.g. "Log into Stripe, export the September refunds CSV, put it in inbox/". Whatever's blocking you most goes first. If you don't need anything from me, just say so.
```

## Background

One rule in AGENTS.md and Claude's long reports are suddenly easy to read.

It used to finish a long task and send me a wall of text. What it needed me to do was often buried somewhere in the middle, and I'd scroll forever to find it.

## Source

From [Copybook](https://copybook.page/t/lead-with-what-you-need-from-me-in-long-reports): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2107123654219743712) on 5 Oct 2026, 782 saves as of 2 Nov 2026. For Claude Code and Codex.
