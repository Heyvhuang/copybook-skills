# ~/.codex and ~/.claude sorted before cleanup

A cleanup that could delete your chats: items sorted Keep, History, Work, Clearable or Unknown, each command approved by you.

## Steps

1. Copy the prompt.
2. Send it to Codex.
3. You get: A sized report of ~/.codex and ~/.claude with numbered cleanup commands you approve.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Disk audit: ~/.codex and ~/.claude

Report first. Change nothing until I approve.

1. Measure: du -sh both folders, the 20 biggest items in each, and Codex sessions/ + archived_sessions/ by month. Sizes, counts and dates only. Never open auth, config or chat files.

2. Sort every item into one bucket:
- Keep: auth, config, rules, skills, memories, every database file
- History: chats, prompt history, generated images. Gone for good if deleted
- Work: Codex worktrees. Any with changes or unpushed commits moves to Keep
- Clearable: cache, tmp, debug, trash folders
- Unknown: treat as Keep

3. Propose numbered commands, each with its bucket and the GB it frees. Clearable only by default, and skip anything touched in the last 24 hours. For History, offer to move it to a folder or drive I pick, or gzip it, and note that a moved Codex chat can't be reopened until it's back. Never rm history, never rm -rf a worktree, never touch a database. If a setting caps the growth, name it: Codex history.max_bytes, Claude Code cleanupPeriodDays.

4. Stop. Run only the numbers I approve, then show before and after.
```

## Background

Before you clean up ~/.codex, have Codex sort out what's safe to delete and what would take your chat history with it.

My disk was 96% full, so I checked: ~/.codex alone was 82 GB.

- 54 GB of archived chats, 3,900 of them, going back to last November
- the biggest single chat is 2 GB, and 21 are over 500 MB
- the cache that's safe to delete comes to under 0.2 GB

To free up space, move those old chats to an external drive and move them back when you need them.

## Source

From [Copybook](https://copybook.page/t/sort-codex-and-claude-folders-before-a-cleanup): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103529972128211234) on 25 Sep 2026, 367 saves as of 23 Oct 2026. For Codex.
