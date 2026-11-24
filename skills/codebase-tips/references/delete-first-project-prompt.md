# Delete-first prompt for your messiest project

Broken or unneeded code, pages with hierarchy problems: deleting preferred, what it's sure about fixed, the rest listed.

## Steps

1. Copy the prompt.
2. Paste it into Claude Code or Codex in your messiest project.
3. You get: Screenshots of every page, the 5 biggest hierarchy and density problems first, a list to review.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this entire project and find everything that's broken, inconsistent, inefficient, or no longer needed. Prefer deleting over simplifying, simplifying over optimizing, and optimizing over automating. Run my app, open every page in Chrome yourself and screenshot it. List the 5 biggest hierarchy and density problems first. Fix what you're sure about and list the rest for me to review.
```

## Background

Vibecoders, I'm begging you, every time a new model drops, whether it's Fable 5.2, GPT-6.2 Astra or whatever Google ships next, open your messiest project and paste this into Claude Code or Codex.

## Source

From [Copybook](https://copybook.page/t/run-a-delete-first-pass-when-a-new-model-drops): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2124548469540974596) on 22 Nov 2026, 7.3K saves as of 23 Nov 2026. For Claude Code and Codex.
