# Image options in one grid: an AGENTS.md rule

Image options drawn one at a time burn your limits: a global rule puts them all in one numbered grid, then builds your pick.

## Steps

1. Copy the prompt.
2. Send it to Codex, check the rule it shows you, then confirm.
3. You get: Options arrive as one numbered grid. Reply with a number to get that one as the final version.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Add an image rule to my global Codex AGENTS.md (in ~/.codex; if an AGENTS.override.md exists, add it to that file):

- If it's unclear what I want (what it is, who it's for, what style), ask me one or two questions first. If it's clear, just generate the image.
- When I ask for multiple options, variants or style comparisons, put them all in one image: a grid sized to the count (9 options → 3×3), each cell numbered, and generate only that one image.
- After showing it, tell me how to pick: reply with a number, and you generate that option on its own as the final version.
- If I ask for just one image, separate images or specific dimensions, do what I say.

Show me what you'll add first. Don't write it until I confirm.
```

## Background

If you still have Codex generate images one at a time, you're burning your limits and your time. Each image uses your limits 3-5x faster than a normal turn on average, and if you ask for 9 options, it draws 9 separate images.

Next time, have it put all 9 options in one image. One generation, then pick your favorite and blow it up. Works for logos, app icons, landing page heroes and cover images. Faster, and much lighter on your limits.

Same goes for building pages with Astra: get one options sheet first to lock in the direction, then have Astra write the code.

## Source

From [Copybook](https://copybook.page/t/have-codex-put-image-options-in-one-grid): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103892360531001678) on 26 Sep 2026, 379 saves as of 24 Oct 2026. For Codex.
