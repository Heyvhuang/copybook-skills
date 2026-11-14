# Bug-fix loop rules for CLAUDE.md or AGENTS.md

Agents that both fix and review can't stop going back and forth: stop after two failed fixes, review only this round's changes.

## Steps

1. Copy the bug-fix rules.
2. Add them to the CLAUDE.md or AGENTS.md in your project.
3. You get: The agent fixes every copy of a bug, stops after two failed fixes and reviews only new changes.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Bug-fix rules

```markdown
When fixing bugs, follow these rules:
1. If the same bug survives two fixes, stop. Tell me what you tried, what you changed, what still fails, and what I need to decide.
2. Only change code tied to this bug. List any old problems you spot; don't fix them.
3. When you find a problem, search for the same pattern first and fix every copy at once, not one spot at a time.
4. When reviewing, whether you do it yourself or hand it to another agent, look only at this round's changes. Don't repeat findings already raised.
```

## Background

The 4 most effective rules for ending Claude Code and Codex's endless bug-fix loops.

When agents both fix and review the code, they can't stop going back and forth, because 59% of what keeps getting flagged is old code that was already there in the first round. After the Claude Code team put similar limits on their own agent reviews, PRs needing 5+ rounds dropped from 8.9% to 1.5%, and PRs passing in one round rose from 65% to 78%.

Add them straight to CLAUDE.md or AGENTS.md, or send them before a bug fix.

## Source

From [Copybook](https://copybook.page/t/end-bug-fix-loops-with-4-rules): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2116968517157212271) on 1 Nov 2026, 325 saves as of 8 Nov 2026. For Claude Code and Codex.
