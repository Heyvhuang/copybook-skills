# STATE.md and new-session rules for CLAUDE.md

Using up your Claude Code limit: a STATE.md per task, a summary to switch chats at each approved milestone or 200 thousand tokens.

## Steps

1. Copy the CLAUDE.md rules.
2. Paste them into your CLAUDE.md.
3. You get: A STATE.md for each task, and new sessions that start from it instead of a fork.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## CLAUDE.md rules

```markdown
from now on, in this project:
- keep a STATE.md of at most 40 lines per task, with what has already been approved, what's left and the decisions. update it at every milestone.
- when a milestone is approved or the context passes 200 thousand tokens, tell me it's time to switch chats and hand me the summary to paste into the new session.
- every image analysis runs in a subagent, which gives me back only text.
- no forking to continue. a new session starts from zero, reading the STATE.md.
```

## Background

If you're using Claude Code, paste this into your CLAUDE.md and your usage will drop significantly.

## Source

From [Copybook](https://copybook.page/t/keep-a-state-md-and-start-new-sessions-to-cut-usage): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2124246472883601720) on 21 Nov 2026, 697 saves as of 22 Nov 2026. For Claude Code.
