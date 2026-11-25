# Situation routing rules for skills

Your agent often forgets to use what you install, so you call each by name: the best fit per task, with one line on which and why.

## Steps

1. Copy the skill routing rules.
2. Add them to the CLAUDE.md or AGENTS.md in your project.
3. You get: The agent picks the best skill for each task, if one fits, and tells you in one line which and why.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Skill routing rules

```markdown
- Every time you start, first check what I'm doing and what task is in front of me
- Out of all my skills, pick the one that best solves the problem at hand, and just use it
- Tell me in one line which one you used and why
- When I start the next task or change the goal, pick again
- Follow-ups and small edits on the same task keep the same skill
- If none fits, don't bring it up, just keep working
```

## Background

Vibecoders, I'm begging you, route every skill by situation. You install a pile of them, your agent often forgets to use them, and you end up remembering names and calling them one by one.

In short, it's these few lines. Put them straight into your CLAUDE.md or AGENTS.md.

If you write your own skills, don't install them one by one. Put them all into one main skill: save each skill's body as a file in the main skill's folder, put a table in the main skill saying what work each one handles, add the lines above, and read a file only when it gets picked. Your context only holds one description: the main skill's.

## Source

From [Copybook](https://copybook.page/t/route-every-skill-by-situation): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2117995297007972484) on 4 Nov 2026, 116 saves as of 11 Nov 2026. For Claude Code and Codex.
