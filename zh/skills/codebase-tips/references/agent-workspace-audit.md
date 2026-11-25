# Agent workspace audit

Your agent feels dumber over time: every instruction, skill, MCP and memory marked KEEP or REMOVE, cleared on your OK.

## Steps

1. Copy the prompt.
2. Send it to Codex, Claude Code or Cursor in the workspace that started feeling dumber.
3. You get: A KEEP / REMOVE list to approve, then the agent refocuses on your current task.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Audit every persistent configuration in this workspace that shapes how you work: project instructions, skills, MCPs, and memory.

Find anything redundant, outdated, conflicting, or irrelevant to this project. First give me a KEEP / REMOVE list with one sentence per item. Do not edit any files.

Wait for my approval. Remove only approved REMOVE items. Keep every safety rule, secret-handling rule, and configuration this project explicitly requires.

After cleanup, reread my current task. Focus on three things: the final outcome, the boundaries you must not cross, and the checks that prove the work is done.

Choose the implementation yourself. When finished, show the diff and run the project's existing checks. If anything is unclear, ask. Don't guess.
```

## Background

Codex can feel worse over time. I check the workspace before blaming the model. I don't wipe everything: I keep the skills, MCPs and AGENTS.md rules the project uses, then remove most of the rest.

My prompts name the outcome, the boundaries and the checks, and Codex picks its own steps. Use this one when Codex, Claude Code or Cursor suddenly starts feeling dumber.

## Source

From [Copybook](https://copybook.page/t/audit-your-agent-workspace-before-blaming-the-model): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2086150296842219888) on 8 Aug 2026, 887 saves as of 5 Sep 2026. For Claude Code, Codex and Cursor.
