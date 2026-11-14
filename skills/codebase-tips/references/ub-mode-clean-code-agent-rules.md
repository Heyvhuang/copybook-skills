# ub-mode: the Clean Code author's agent rules

Your agent's code hides bugs and its tests fool you: a skill it follows on every change, with crapper, dryer and mutator checks.

## Steps

1. Copy the prompt.
2. Send it to Claude Code, Grok or Cursor.
3. You get: Your next change follows the rules; crapper, dryer and mutator steps run only if they're installed.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Install the ub-mode skill from unclebob/ub-mode on GitHub into my skills folder, and use /ub-mode for my next change. If crapper, dryer or mutator aren't installed, skip those steps.
```

## Background

The author of Clean Code just published **the rules his own agents follow** when they write code.

- A guard that only hides the crash is not a fix.
- If the test would still pass when every function returned nothing, throw it out.
- Ship the smallest edit that solves the problem.
- Write the failing test before you change the code.

The skill is one SKILL.md in unclebob/ub-mode: first make it work, then make it right, then practice. Its crapper, dryer and mutator steps call his companion tools for complexity, duplication and mutation testing.

Install it and your agent's code **can't hide bugs, and its tests can't fool you**.

## Source

From [Copybook](https://copybook.page/t/install-ub-mode-the-clean-code-authors-rules-for-agents): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2114724983297528249) on 26 Oct 2026, 313 saves as of 2 Nov 2026. For Claude Code, Cursor and Grok.
