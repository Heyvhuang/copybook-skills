# 1:1 on your week from git log and sessions

Moving this week or just busy: 7 days of git log and sessions, every judgment backed by a commit or conversation, 3 commitments.

## Steps

1. Copy the prompt.
2. Paste it into Claude Code in your repo.
3. You get: A one-line verdict, what you did well, habits, landmines and 3 commitments you can check in git log.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read the last 7 days of git log in this repo (with change stats) and the last 7 days of this project's sessions in ~/.claude/projects/. Then run a 1:1 on me like a sharp-eyed tech lead and evaluate how I'm doing as a developer.

Rules: be direct, don't spare my feelings. Back every judgment with a specific commit or conversation. If the data doesn't show something, skip it, don't make it up. Focus on my commit rhythm, rework, testing habits and where I kept getting stuck. If the sessions are too long, read only my own messages first. Read only, change nothing.

Give it to me in this structure:
1. One-line verdict: was I actually moving this week, or just busy?
2. What I really did well: the most valuable output or calls, with evidence.
3. Habits holding me back: the traps I keep stepping in and the changes I patched over, named directly.
4. Landmines I'm planting: if I keep working like this, where it's most likely to hurt the project within a month.
5. 3 commitments for the next two weeks: concrete changes I can check against git log in two weeks.
```

## Background

This weekend, have Fable 5.2 dig through your week of sessions and commits and run a 1:1 on you that's harsher than any real boss.

## Source

From [Copybook](https://copybook.page/t/run-a-1-1-on-your-week-from-git-log-and-sessions): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2124125687283958118) on 21 Nov 2026, 184 saves as of 22 Nov 2026. For Claude Code.
