# Skill backtest against past Codex sessions

A skill written from memory drifts from how you work: compared with your past sessions, a dry-run diff, a recurring review.

## Steps

1. Copy the prompt and fill in the skill's name or path.
2. Send it to Codex, which reads your past Codex sessions.
3. You get: A dry-run diff backed by your sessions, then a recurring review once you confirm.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
read [skill name, workflow file, or folder path] and run a backtest against my past sessions related to it.

prefer sessions from the same project and same task type. first list the samples you plan to use and why you picked them. if you can't access enough sessions, say so directly instead of guessing.

compare what the skill assumes vs how i actually work. focus on:

- steps i often skip, rewrite, or run more than once
- work i still do manually that the skill never covers
- the order i actually do things in
- spots that keep causing rework, getting stuck, or needing extra clarification

separate stable patterns from one-off exceptions. never rewrite a rule over a single anomaly.

output a dry run first, nothing else:

- keep / modify / add / remove
- session evidence for each item
- proposed diff and reasoning

do not modify any files until i confirm.

after i confirm, update the skill, run existing checks, and summarize before / after. if there's no existing way to verify, say so.

finally, based on how fast new sessions accumulate, suggest a weekly or biweekly review. show me the schedule, scope, and trigger conditions first, then create the recurring task after i confirm.

every scheduled review outputs a dry run only. no auto-modifying the skill without confirmation.
```

## Background

Take a skill or automation workflow you already wrote, throw it back at Codex, and have it run a backtest against your past sessions. It rewrites the skill into how you actually work.

- Once a skill is done, have Codex evaluate it against the relevant sessions
- It finds the steps you always skip, the work you keep patching manually and the order you actually run things in
- Rerun this every few weeks and the skill keeps up with how your work changes

What you write from memory is the flowchart. Sessions record how you actually did it and where the rework happened. Session logs now double as an eval set for your skills.

## Source

From [Copybook](https://copybook.page/t/backtest-a-skill-against-your-past-sessions): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2078175217839403150) on 17 Jul 2026, 554 saves as of 14 Aug 2026. For Codex.
