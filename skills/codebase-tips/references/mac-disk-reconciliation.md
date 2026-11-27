# Mac disk reconciliation for hidden usage

Disk nearly full and Finder doesn't show why: the disk reconciled for hidden usage, a cleanup plan checked against your projects.

## Steps

1. Copy the prompt.
2. Send it to Claude Code on your Mac.
3. You get: Big items that can be safely cleaned, and a plan confirmed not to affect the projects you use.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Use the reconciliation method to check whether my Mac's disk has hidden usage like a corrupted Spotlight index, then also sweep idle caches and old models, list the big items that can be safely cleaned, and confirm it won't affect the projects I'm using before giving me a cleanup plan
```

## Background

My Mac was down to 21 GB, 98% full, so I had an agent check it read-only: Codex alone had stashed 13 GB of plugin marketplace copies in a hidden folder in 6 days. None of it shows up in Finder.

After the cleanup, back to 142 GB free.

Send this to Claude Code and see how much of your disk is gone.

## Source

From [Copybook](https://copybook.page/t/reconcile-your-mac-disk-to-find-hidden-usage): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2124850456623288547) on 23 Nov 2026, 849 saves as of 26 Nov 2026. For Claude Code.
