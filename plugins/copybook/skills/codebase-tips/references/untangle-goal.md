# Untangle /goal for spaghetti code

Months of vibe coding left the code in knots: an HTML wiring diagram, the worst numbered in red, then fixes tested one by one.

## Steps

1. Copy the prompt.
2. Send it to Codex in your repo.
3. You get: A wiring diagram, then fixes on a new branch, any that fail rolled back, and a before/after image.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
/goal Untangle the knotted code in this repo: leaky abstractions, copy-paste that has drifted apart, temporary workarounds that never got deleted, and empty wrappers. First, draw a wiring diagram that fits on one screen, as an HTML page: a line from each feature to every file it touches, with the worst knots marked in red and numbered. For each one, give the file, the line and how to untangle it.

Then, on a new branch, untangle them starting with the worst. After each one, run the tests and the build (if there are no tests, at least make sure the build passes), and if anything fails, roll that one back. Don't push, and don't merge. At the end, give me one comparison image: before on the left, after on the right.
```

## Background

Completely untangle the spaghetti code months of vibe coding left behind.

## Source

From [Copybook](https://copybook.page/t/untangle-goal-for-spaghetti-code): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2118810656241529199) on 6 Nov 2026, 1.7K saves as of 13 Nov 2026. For Codex.
