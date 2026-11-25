# Think-carefully cleanup for Opus 5.5

Opus 5.5 already thinks before it answers: rules that push extra thinking, dole out steps or stop to confirm, quoted with a fix.

## Steps

1. Copy the prompt and the link to Anthropic's guide.
2. Send the prompt and the guide's link to Opus 5.5 in Claude Code, in your project.
3. You get: Each old rule to fix, quoted with the smallest change, shown to you before any file changes.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this guide and review my project's CLAUDE.md, AGENTS.md, skills, and saved prompts. Find three kinds of problems: lines that push you to think more, like 'think carefully' or 'take a deep breath'; rules and prompts that hand out tasks one step at a time or don't define what done looks like; and rules that make you stop for confirmation when you don't need to.

For each issue, quote the original instruction, explain its impact, and suggest the smallest change needed. List any approval rules involving safety, permissions, or destructive actions separately for me to decide. Also suggest adding one rule: at the end of every long run, report under three headings: Blocked on me, Changed, Found.

Show me the recommendations first. Don't modify anything yet.
```

## Background

Anthropic published a guide to using Opus 5.5. It tells you to delete "think carefully" from your prompts. Opus 5.5 already thinks before every reply, and it decides how much. Delete that line and replies start sooner, with no drop in quality. If your CLAUDE.md still says "take a deep breath" or "IMPORTANT: think hard", delete those too.

Send this prompt and the guide to Opus 5.5 so it reviews the old rules in your project: https://claude.dev/blog/getting-the-most-out-of-opus-5-5/

## Source

From [Copybook](https://copybook.page/t/have-opus-5-5-clean-up-think-carefully-rules): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2102850122497368464) on 23 Sep 2026, 2.1K saves as of 22 Oct 2026. Last check: works on Opus 5.5, the day it was posted. For Claude Code.
