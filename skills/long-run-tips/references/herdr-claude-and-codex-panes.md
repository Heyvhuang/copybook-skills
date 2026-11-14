# Herdr: one task across Claude and Codex panes

Relaying conclusions between windows by hand: the task split, a worktree and outcome per agent, one executes, one reviews.

## Steps

1. Copy the prompt and put your task where it says [TASK].
2. Send it to the main agent in Herdr, with Claude and Codex each in a pane.
3. You get: The main agent splits the task, has one agent work and another review, and never asks you to relay.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Run this task with multiple agents in parallel:

[TASK]

You are the coordinator. Check which agents and panes are available, then split the task only where pieces can move independently.

Give each agent one clear outcome. State the deliverable, how it will be checked, what it may change, and what it must not touch.

Research and review agents may share the current workspace, but they must stay read-only. For work inside a Git repo, give every agent that edits files its own worktree so no two writers share a checkout.

Use Herdr to assign work to the other panes, wait for their results, read their output, and follow up yourself. Do not ask me to relay messages.

When different agents are available, have one execute and another review. Swap roles on the next pass if useful. Settle factual disagreements with a test. You decide judgment calls.

Bring the work together in one place. For a Git repo, integrate through one checkout and rerun the real checks. Do not push, publish, touch production, or expose secrets without my approval.

Finish with the result, verification evidence, unresolved issues, and any panes or worktrees still running.
```

## Background

With Herdr, Claude and Codex each get a pane. The main agent assigns work, waits, reads and follows up. I used to carry every conclusion between windows myself. With ChatGPT, Codex and other agents, one works and another reviews.

## Source

From [Copybook](https://copybook.page/t/run-one-task-across-claude-and-codex-with-herdr): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2086059460502417772) on 8 Aug 2026, 884 saves as of 5 Sep 2026. For Claude Code and Codex.
