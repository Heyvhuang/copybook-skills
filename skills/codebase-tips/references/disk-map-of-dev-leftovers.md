# Disk map of dev leftovers

Disk almost full: a read-only scan, a treemap of what development left behind, and a cleanup script only for what you tick.

## Steps

1. Copy the prompt.
2. Send it to Claude Code.
3. You get: A local HTML treemap of your dev leftovers and a cleanup script for the items you tick.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Scan my home folder read-only. Look at sizes only and don't open any file contents. Skip iCloud, the Photos library and external drives, and skip any folder that triggers a system permission prompt. Find the big folders left behind by development work and build a local HTML page: a treemap sized by space, split into 'safe to remove' and 'let me review first'. Sessions, models and Docker always go under 'let me review first'. For each item, show the path, the size and what happens if it's deleted. When I tick items, generate a cleanup script that uses each tool's own clean command, and don't delete anything yourself. Append each item's size to ~/disk-report/sizes.csv, and next time read it first and flag what grew.
```

## Background

My Mac was down to 27 GB, so I had Opus 5.5 scan it read-only: 124 GB of developer leftovers, and ~/.codex alone was 59 GB, 31 GB of it old chats.

It drew a map of it, and once you tick items it writes the cleanup script. 22.5 GB of it is caches and build output that gets re-downloaded or rebuilt when you need it.

Send this to Claude Code and see how much is on yours.

## Source

From [Copybook](https://copybook.page/t/map-your-disk-before-cleaning-up-dev-leftovers): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2111472304643612774) on 17 Oct 2026, 2K saves as of 24 Oct 2026. For Claude Code.
