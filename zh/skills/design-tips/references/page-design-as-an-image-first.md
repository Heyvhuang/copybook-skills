# Page design as an image first, in Codex

Pages designed from text come out plain: Codex's image model draws the page first, then the coding model builds it, one line.

## Steps

1. Copy the one-line prompt.
2. Send it to Codex in the project, with the page you want redone.
3. You get: Codex designs the page as an image with Images 2.5, then Sol or Astra builds it.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Use imagegen to reimagine this page, then implement it.
```

## Background

If you still think Sol and Astra are bad at design, try this. Codex now has Images 2.5 built in. Let it create the visuals first, then have Sol or Astra implement them.

Many of the 3D game scenes, characters and animations shared in posts are built around this same approach.

## Source

From [Copybook](https://copybook.page/t/have-codex-design-the-page-as-an-image-first): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2101295246659182978) on 19 Sep 2026, 4.2K saves as of 17 Oct 2026. Last check: works on Images 2.5, the day it was posted. For Codex.
