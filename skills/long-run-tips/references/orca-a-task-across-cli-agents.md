# Orca: one task split across CLI agents

Who finished what across several CLI agents: a goal each, read-only reviewers, worktrees for writers, one owner integrates.

## Steps

1. Copy the prompt.
2. Replace [TASK] with your task and send it to your agent.
3. You get: Workers run in parallel, another agent checks commits, and you get results, blockers and leftovers.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Use Orca for [TASK]. One clear goal per worker. Reviewers read only; writers get worktrees. Run in parallel; wait for worker_done. Another agent checks commits.

One owner integrates and tests. No push or prod unless approved.

Report results, blockers and leftovers.
```

## Background

Herdr handles pane handoffs; Orca tracks CLI agents’ worktrees, tasks and completion.

## Source

From [Copybook](https://copybook.page/t/split-a-task-across-cli-agents-with-orca): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2086483535829884975) on 9 Aug 2026, 495 saves as of 6 Sep 2026.
