# Bug-score rule for Astra's code reviews

Astra flags bugs that almost never happen and Opus fixes each one: bugs scored, low scores filed as issues, code left alone.

## Steps

1. Copy the review rule and the Opus rule.
2. Add the review rule to your review prompt, the Opus rule to CLAUDE.md or AGENTS.md.
3. You get: Bugs that score below 5 filed as issues, with the code left alone.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Review rule

```text
Rate each bug from 1 to 10 on how often it would happen and how bad it would be. If the two scores multiplied are below 5, just file it as an issue and leave the code alone.
```

## Opus rule

```text
Do not design for rare or future cases nobody asked about.
```

## Background

Like a lot of you, I use Opus 5.5 to write code and Codex Astra to review it.

But Astra has a bad habit of flagging bugs that are technically possible but almost never happen in practice. Opus sees the logic checks out and fixes it, then Astra flags the next one, and the loop never stops.

Add one line to your review prompt, skill, or AGENTS.md.

Tune the threshold of 5 to your project.

For Opus, the one fixing the code, add one more line to CLAUDE.md or AGENTS.md:

## Source

From [Copybook](https://copybook.page/t/bug-score-rule-for-astras-code-reviews): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2115518965443076573) on 28 Oct 2026, 3.2K saves as of 4 Nov 2026. For Claude Code and Codex.
