# One-way door rules for AGENTS.md: when to ask

Questions you'd only rubber-stamp: work you can undo done and shown after, a stop at anything you can't undo.

## Steps

1. Copy the AGENTS.md rules.
2. Add them to the AGENTS.md in your project.
3. You get: Questions saved for taste and product calls only you can make, one at a time, with a recommendation.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## AGENTS.md rules

```markdown
Walk through two-way doors and show me after. Stop at one-way doors.

Two-way door: anything you can undo. Code, branches, PRs, test data, dev infra.
One-way door: anything you can't. Prod data, deploys to users, force-pushing a shared branch, deleting what you didn't make, a message sent to another person.

If my answer would be a rubber stamp, don't ask. If running something could answer the question, run it instead. Save questions for taste and product calls only I can make. Ask one at a time, with your recommendation, using your built-in question tool.
```

## Background

Vibecoders, I'm begging you, add this to your AGENTS.md.

## Source

From [Copybook](https://copybook.page/t/walk-through-two-way-doors-stop-at-one-way-doors): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2121672008421568810) on 14 Nov 2026, 257 saves as of 21 Nov 2026. For Claude Code and Codex.
