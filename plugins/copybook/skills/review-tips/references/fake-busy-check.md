# Fake busy check from today's git history

A pile of sessions and nothing done: today's merges told apart from busywork, then one sentence on tomorrow's first task.

## Steps

1. Copy the prompt.
2. Send it to Claude Code or Codex in your project before you log off.
3. You get: One sentence: what to do first tomorrow, and what counts as done.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Don't summarize yet, and don't praise me. Ask me one question at a time, and wait for my answer before the next one.

1. First, look at today's commits, branches and uncommitted changes yourself. Pick out what actually got merged and what was just back-and-forth edits. Then ask me: Going only by these records, not by what I say, what would an outsider think I really want?

2. Then ask me: What am I avoiding with all this busywork?

3. Next, ask me: What's the most embarrassing reason I still haven't done that thing? I want the one that sounds weak, scared or lazy, not the one that sounds reasonable.

4. If my answers are vague, keep pushing until I get specific. Five questions max. At the end, give me just one sentence: what to do first tomorrow, and what counts as done.
```

## Background

The biggest trap with coding agents is fake busy. You open a pile of sessions, grind past midnight, then look back and nothing actually got done.

Before you log off each day, have Claude Code or Codex check your git history.

## Source

From [Copybook](https://copybook.page/t/fake-busy-check-from-todays-git-history): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2116545745658806490) on 31 Oct 2026, 394 saves as of 7 Nov 2026. For Claude Code and Codex.
