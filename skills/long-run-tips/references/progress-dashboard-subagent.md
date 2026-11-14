# Progress dashboard subagent for long tasks

Where a long task stands while you wait: an HTML dashboard of progress, blockers and open questions, built by a side subagent.

## Steps

1. Copy the prompt.
2. Send it to Claude Code, and confirm once it shows you the files.
3. You get: A dashboard-builder subagent that makes an HTML progress dashboard before every long task.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up a subagent that only builds progress dashboards:

1. Create dashboard-builder in ~/.claude/agents: model: opus, effort: medium, memory: user. Preload the design skills I have installed (for example impeccable). It can only read and write the .dashboard/ folder and its own memory.
2. The first time, it asks me what style I like: dark or light, dense or airy, and one accent color. It saves my answer to memory and follows it every time. Pick the panels for the current task; don't use a template.
3. The dashboard is one HTML file showing tasks and their status, questions waiting for me with the default action, the latest deliverables, and anything stuck. Use the real clock for every time. It opens with a double-click and refreshes itself every 10 seconds.
4. Add a rule to ~/.claude/CLAUDE.md: for any task with more than 5 steps or that should take longer than 30 minutes, have dashboard-builder set up the dashboard before starting; update it after every step; when you need a decision from me, add it to the questions list and keep going with the default.

Show me the contents of the files you'll create or change, then explain the whole flow in words a 10-year-old could follow. Don't write anything until I confirm.
```

## Background

Every time you let Opus 5.5 run a long task on its own, have it vibe-code a quick HTML dashboard first.

Then give it a subagent that only builds dashboards:

- Name it dashboard-builder, set its effort to medium, and preload a design skill
- The first time, it asks what style you like and saves it to memory. After that, every dashboard fits your taste and the task at hand
- Call it before every long task. It builds the dashboard in the background in about two minutes, and the main session keeps coding on high without stopping
- The dashboard shows four things: task progress, what's stuck, questions waiting on you, and what it'll do by default if you don't answer

Send this prompt to Claude Code.

## Source

From [Copybook](https://copybook.page/t/build-a-progress-dashboard-before-a-long-task): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103946635831050740) on 26 Sep 2026, 9.8K saves as of 24 Oct 2026. For Claude Code.
