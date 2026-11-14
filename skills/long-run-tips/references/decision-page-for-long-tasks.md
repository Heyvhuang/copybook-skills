# Decision page rule for long tasks

A summary saying all went well hides the agent's choices: one screen of the ones that change the result, those to confirm in red.

## Steps

1. Copy the decision page rule.
2. Add it to your AGENTS.md or CLAUDE.md.
3. You get: Before saying it's done, the agent fixes what it missed and lists decisions it made without asking.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Rule: decision page

```markdown
## Before you say a long task is done
Over a long task you make a lot of small decisions for me: the defaults, what's out of scope, which request wins when two of them clash. A summary that says everything went well hides all of that. So before you say it's done, ask yourself "Did I miss anything?" and fix what you find. Then put every decision you made without asking on a one-screen HTML page outside the repo, in words a 10-year-old can follow. Only the ones that change the result, with the ones I need to confirm at the top, in red.
```

## Background

Add this paragraph to your AGENTS.md or CLAUDE.md.

## Source

From [Copybook](https://copybook.page/t/list-every-decision-made-without-asking): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2118025481769681120) on 4 Nov 2026, 383 saves as of 11 Nov 2026. For Claude Code and Codex.
