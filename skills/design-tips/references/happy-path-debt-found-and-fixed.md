# Happy-path debt, found and fixed

Screens that only work when data loads fast and nothing fails: missing states and layout breaks fixed per component, design kept.

## Steps

1. Copy the prompt.
2. Send it to Claude Code or Codex in your app's project.
3. You get: Missing states and layout breaks fixed one component at a time, and a before/now summary by file.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Find all the happy-path debt in my app: every screen that only works when data loads fast, nothing fails, lists aren't empty, text is short, and the screen is wide. Fix missing states and layout breaks, one component at a time, without changing my design and without breaking anything. Summarize by file: what happened before vs. how it works now.
```

## Background

If you still think Claude Code and Codex suck at polish, try this.

Agents build for the demo, where everything goes right. In real use, it doesn't.

## Source

From [Copybook](https://copybook.page/t/fix-happy-path-debt-across-your-app): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2120864199324889469) on 12 Nov 2026, 260 saves as of 19 Nov 2026. For Claude Code and Codex.
