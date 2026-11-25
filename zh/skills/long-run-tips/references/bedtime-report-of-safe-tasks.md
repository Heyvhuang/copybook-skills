# Bedtime report of tasks safe to run overnight

Unused quota overnight: an hour before bed, 3-5 reversible, verifiable tasks from today, prompts ready, nothing changed.

## Steps

1. Copy the prompt.
2. Schedule it as an automation in Claude Code or Codex, one hour before bed.
3. You get: A nightly report of 3-5 tasks safe to run overnight, each with a ready-to-paste prompt.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Run this review every day, one hour before bedtime.

Inspect only sources you already have access to:

→ Repositories changed today, including git status
→ Unfinished issues, TODOs, and plans
→ Recent failed tests or builds
→ Handoff notes left by agents

Find 3-5 tasks that Claude Code/Codex could safely handle overnight.

Every candidate must:

→ have a clear goal and definition of done
→ require no decisions from me while it runs
→ fit in an isolated branch or worktree
→ have an exact test, build, or verification command
→ be fully reversible

Exclude anything that requires merging, deploying, sending messages, spending money, changing credentials, or touching production data.

For each candidate, return:

1. Task
2. Where you found it
3. What it could deliver by morning
4. How to verify it
5. What it must not touch
6. A complete prompt I can paste into Claude Code/Codex

That execution prompt must include the working directory, branch or worktree, definition of done, verification commands, and the changes, test results, and blockers it must hand back in the morning.

Rank the candidates by value and likelihood of finishing before morning.

If nothing is suitable, write: “No tasks are safe to run overnight.” Don’t invent tasks to fill the report.

Stop after writing the report. Don’t edit files, start an agent, or run any candidate task.
```

## Background

If your Claude Code or Codex quota keeps going unused, schedule this automation for one hour before bed. It scans that day's unfinished work and returns 3-5 tasks that are safe to leave running overnight.

It only writes the report. It doesn't touch code or start an agent.

How to use:

- Start with one repo. If the report keeps surfacing useful work, add your issue tracker and agent handoff notes later.
- In the morning, read the diff and verification results before merging anything.

## Source

From [Copybook](https://copybook.page/t/schedule-a-bedtime-report-of-overnight-tasks): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2087579867139264681) on 12 Aug 2026, 570 saves as of 9 Sep 2026. For Claude Code and Codex.
