# Code cleanup prompt: fewer, deeper modules

A feature works, but the code repeats itself: duplicates wiped out and the core logic in one place.

## Steps

1. Copy the prompt.
2. Send it to Claude Code or Codex each time you get a feature working.
3. You get: A lower line count, smarter abstractions and a codebase that ends up fully consistent.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Fewer, deeper modules, smaller interfaces. Check data once where it comes in, then just use it. Write one-off logic right where it's used instead of splitting it into a function ahead of time. Skip try/catch wherever you can.
```

## Background

Highly recommend trying the strongest code cleanup prompt out there right now. It's only 5 words: "fewer, deeper modules, smaller interfaces"

The best part is watching the line count drop as all the duplicate code gets wiped out and the core logic lands in one place. The AI comes up with way smarter abstractions, fixes a pile of bugs along the way, and the whole codebase ends up fully consistent.

## Source

From [Copybook](https://copybook.page/t/clean-up-code-into-fewer-deeper-modules): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2119777023845417175) on 9 Nov 2026, 1.2K saves as of 10 Nov 2026. For Claude Code and Codex.
