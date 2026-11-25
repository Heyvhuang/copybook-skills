# 3 habits burning your Claude Code usage

Keep hitting the usage limit: 7 days of session logs scanned, the 3 costliest habits and their share, rules to plug them.

## Steps

1. Copy the prompt.
2. Send it in Claude Code, or in Codex with the three swaps the tip lists.
3. You get: One rule per habit, added to CLAUDE.md or AGENTS.md once you say yes.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Change nothing until I say yes. Write a small script to scan my Claude Code session logs in ~/.claude/projects from the last 7 days, using the token counts recorded in them; don't read the raw files into context. Find the 3 habits that burned the most usage, like reading whole files, dumping long test or build output, spawning subagents, or keeping one session going for hours. For each, work out roughly what share of my usage it took and write one rule that would stop it. When I say yes, add the rules to the instruction file this project actually loads: CLAUDE.md if there is one, otherwise AGENTS.md. Never print secrets.
```

## Background

Keep hitting your Claude Code usage limit?

It digs through your last 7 days of sessions, finds the 3 habits burning the most usage, estimates each one's share, and writes rules to plug them.

On Codex, swap Claude Code for Codex in the prompt, use ~/.codex/sessions as the path, and put the rules in AGENTS.md only.

## Source

From [Copybook](https://copybook.page/t/find-the-3-habits-burning-your-claude-code-usage): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2114416707385073819) on 25 Oct 2026, 722 saves as of 22 Nov 2026. For Claude Code and Codex.
