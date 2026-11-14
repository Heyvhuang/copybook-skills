# HANDOFF.md for the next agent

A task longer than one session: progress, decisions, files, checks and next steps kept current for the next agent.

## Steps

1. Copy the prompt.
2. Fill in [REQUIREMENT] and send it to Claude Code or Codex in your project.
3. You get: A HANDOFF.md kept current as it works, so you can review it and the next agent can continue.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Implement [REQUIREMENT] and keep HANDOFF.md updated with current progress, key decisions and why you made them, relevant files, verification results, unresolved issues, and next steps. Keep both DX (developer experience) and AX (agent experience) in mind. Retain only information that’s still current, so I can understand and review the work, and the next agent can read it, check the current state, and continue the task.
```

## Background

One of the prompts I've been using the most lately. The agent keeps HANDOFF.md current while it works, so you can review the work and the next agent can check the current state and continue.

## Source

From [Copybook](https://copybook.page/t/keep-a-handoff-md-while-the-agent-works): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2101325439805583554) on 19 Sep 2026, 429 saves as of 17 Oct 2026. For Claude Code and Codex.
