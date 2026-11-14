# Astra without default subagents

Astra burns quota faster than Sol: default-subagent rules gone, one line so it does the task and the checks itself.

## Steps

1. Copy the rule.
2. Add it to AGENTS.md in your project.
3. You get: Astra handles the task and checks itself, and only spawns subagents for reviews or when you ask.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Rule

```text
Handle the task and verification yourself by default. Do not spawn subagents except for necessary independent reviews or when I explicitly ask you to.
```

## Background

Astra has been burning through my quota. My quota reset, so I went all out, and it felt like Astra burned through it even faster than Sol did. Then I tried this, and it worked like a charm.

Check AGENTS.md, relevant Skills, and memory for instructions that tell it to spawn subagents by default, and remove them.

Let Astra finish the work itself. The main agent also uses quota to assign tasks, pass along context, and repeatedly check progress.

Pick a task you know well, let it run solo, and compare the results and usage. You might see this model very differently.

When you need parallel work, explicitly ask for subagents. Not every task needs an army of agents.

## Source

From [Copybook](https://copybook.page/t/stop-codex-astra-spawning-subagents-by-default): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2097025858867429396) on 7 Sep 2026, 686 saves as of 14 Sep 2026. For Codex.
