# Open-Source Scout and Closer prompts

Unfamiliar features written from scratch, offers to continue: GitHub searched first, then the whole job done and a plain recap.

## Steps

1. Copy the Open-Source Scout prompt, the Closer prompt, or both.
2. Send it to Claude Code in your project along with your task.
3. You get: Open-source approaches compared for an unfamiliar feature, or the whole job done and a plain recap.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: Open-Source Scout

```text
Don't write an unfamiliar feature from scratch. Search GitHub for open-source projects, compare their approaches, then start.
```

## Prompt: Closer

```text
Finish the whole job before you stop. Don't offer to continue: continue. Ask me before you delete anything. End with a recap for someone who saw none of the work: key points first, plain words.
```

## Background

Don't tell Fable 5.2 "find the bugs." Don't tell Fable 5.2 "build this feature." Don't tell Fable 5.2 "why is CI so slow."

You're using the smartest coding model out there like it's an intern. Here are 2 prompts to copy and paste.

## Source

From [Copybook](https://copybook.page/t/search-github-first-and-finish-the-whole-job): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2122011755240984607) on 15 Nov 2026, 15K saves as of 22 Nov 2026. For Claude Code.
