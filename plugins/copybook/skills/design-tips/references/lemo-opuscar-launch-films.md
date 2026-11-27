# lemo-opuscar: narrated launch films in code

No video model on hand: narration by TTS, music from free sample libraries, every frame in one of 43 styles, 30 to 60 minutes.

## Steps

1. Copy the two install commands, then the prompt.
2. Run the commands in your terminal, then send the prompt in Claude Code in your project.
3. You get: A 45-second launch film for your project with English narration, in the Dark Tech Keynote style.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Commands

```bash
claude plugin marketplace add lemomo-ai/lemo-opuscar
claude plugin install lemo-opuscar@lemolab
```

## Prompt

```text
Use lemo-opuscar's Dark Tech Keynote style. Read this project's README first, then make a 45-second launch film for it with English narration.
```

## Background

Install lemo-opuscar and Opus 5.5 can make short films with narration and music in 43 film styles, all in code.

No video model. It renders every frame in code, builds the score from free sample libraries and voices the narration with TTS. Each style comes with a sample film it made.

A film takes about 30 to 60 minutes and uses a lot of tokens, and the first run downloads over 1 GB of tools and voice models. You'll need Node 20+, ffmpeg and Python 3.11-3.13 (or uv).

Then open Claude Code and send this to get a launch film for your project.

## Source

From [Copybook](https://copybook.page/t/make-a-launch-film-in-code-with-lemo-opuscar): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2110838129326473353) on 15 Oct 2026, 634 saves as of 12 Nov 2026. For Claude Code.
