# Screenshot-first UI rebuild prompt

UI hierarchy and density problems: every page screenshotted, then rebuilt on only a spacing scale, type scale and up to 5 colors.

## Steps

1. Copy the prompt.
2. Paste it into Claude Code started with claude --chrome, after you run /advisor fable.
3. You get: 5 biggest hierarchy and density problems, a rebuild on new scales only, checked at 1440 and 390.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Run my app, open every page in Chrome yourself and screenshot it. List the 5 biggest hierarchy and density problems first. Then define a spacing scale, type scale and max 5 color tokens. Rebuild using only those. No gradients. Screenshot at 1440 and 390, fix what looks off
```

## Background

Fable 5.2 + Opus 5.5 is scary good at UI. Before it touches code, have it run your app, screenshot every page and pick it apart. This works really well.

Launch `claude --chrome`, run `/advisor fable` (Opus builds, Fable reviews), then paste the prompt.

## Source

From [Copybook](https://copybook.page/t/screenshot-every-page-then-rebuild-the-ui): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2121981549713457427) on 15 Nov 2026, 1.1K saves as of 22 Nov 2026. For Claude Code.
