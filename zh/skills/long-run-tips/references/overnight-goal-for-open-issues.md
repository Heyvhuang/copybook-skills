# Overnight /goal for open issues and TODOs

Before bed: each issue and TODO taken as far as it can go without you, then one HTML board of what's done, stuck or your call.

## Steps

1. Copy the prompt.
2. Send it to Claude Code or Codex in your repo before bed.
3. You get: Changes in their own worktrees, not done until tests pass, and an HTML board with each card's level.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
/goal Go through every open issue and TODO in this repo. Grade each one like self-driving levels, by how far you can take it without me, then take it that far:

→ L1: get the full story, find the relevant code
→ L2: write a plan, down to which files change
→ L3: do the parts you can decide, stop where I need to pick a direction
→ L4: finish everything except the one step that's my call
→ L5: done, tested, ready to merge

Anything that changes code gets its own worktree, and it isn't done until the tests pass. If it involves publishing, spending money, deleting data or pushing to main, stop right there. Ask for every permission you need up front, and don't stop to wait for me overnight. If one gets stuck, note it and move on to the next.

At the end, give me a one-page Overnight Review board in HTML, with the total and each column's count at the top, and every card tagged with its level:
→ Done to its level, one line on what you did
→ Stuck, where it's stuck and what you need from me
→ Waiting on my call, with your recommendation
```

## Background

Send this to Claude Code or Codex before bed.

## Source

From [Copybook](https://copybook.page/t/overnight-goal-for-open-issues-and-todos): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2118689868016713934) on 6 Nov 2026, 315 saves as of 13 Nov 2026. For Claude Code and Codex.
