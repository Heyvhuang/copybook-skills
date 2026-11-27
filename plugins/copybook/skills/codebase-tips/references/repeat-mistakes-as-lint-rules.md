# Repeat mistakes as helpers and lint rules

The agent keeps making one mistake: the right way in a helper, the old way banned by lint, an error that names the helper to use.

## Steps

1. Copy the prompt.
2. Send it to Claude Code or Codex in your repo, then confirm the list it shows you.
3. You get: Helpers and lint rules for up to 3 repeat mistakes, so the agent fixes its own code from the error.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Go through the corrections in AGENTS.md or CLAUDE.md and the last 50 commits in this repo (focus on fixes and reverts). Find patterns the agent keeps getting wrong that lint can catch, up to 3. If you find fewer, report fewer. For each one:
1. Write a helper function or type that wraps the right way to do it
2. Add a rule in the lint tool the project already uses that bans the old pattern, with an error message that names the helper to use. Prefer the tool's built-in ban rules
3. Replace the old pattern in existing code, then run lint and the tests to confirm they pass
Finally, add a line to AGENTS.md or CLAUDE.md (whichever the project uses): after writing code, run lint and switch to the helper the error points to. If the project has no lint tool, tell me first. Show me the list first, with where each pattern came from and how many current violations it has. Change nothing until I confirm.
```

## Check: pre-commit hook

```bash
#!/bin/sh
npm run lint --silent && exit 0
echo "Lint failed. Switch to the helper the error names, then commit again." >&2
exit 1
```

A commit stops while `npm run lint` fails, so the agent reads the error and switches to the helper it names. Save it as `.git/hooks/pre-commit` and make it executable with `chmod +x`. Copybook wrote and tested it on git 2.50.1, 24 Nov 2026.

This check is Copybook's, not part of the tip, and runs on the user's machine once added. Offer it once the tip is in place, show it, and add it only if the user says yes.

## Background

The better AI gets at writing code, the more abstractions you should write.

Turn the way you want things done into ready-made functions for the agent, then use lint to block the other ways. The only option it has left is the one you want.

Start with the mistakes your agent keeps making. Give each one a lint rule whose error message names the function to use, and when the agent runs its checks, it sees the error and fixes it on its own. Send this to Claude Code or Codex.

## Source

From [Copybook](https://copybook.page/t/turn-repeat-agent-mistakes-into-lint-rules): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2106829206134931539) on 4 Oct 2026, 184 saves as of 1 Nov 2026. For Claude Code and Codex.
