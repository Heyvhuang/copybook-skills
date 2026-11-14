# No compatibility code yet: AGENTS.md rules

No users yet, but the agent adds compatibility code and migrations: skip both, then docs, tests, smallest change and cleanup.

## Steps

1. Copy the AGENTS.md.
2. Save it as AGENTS.md in your project, with an @AGENTS.md line in your CLAUDE.md if you have one.
3. You get: No compatibility code, and every change runs docs, tests, smallest implementation, then cleanup.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## AGENTS.md

```markdown
# AGENTS.md
Only for projects with no real users yet.

## Ground rules
- No backward compatibility, no data migrations
- Replace what you change with the simplest code that works, and update every caller in the same change

## Every change, in this order
1. Docs first: update the relevant docs and make sure they don't contradict the code or each other
2. Tests: test behavior, skip the small details, and watch them fail first
3. Smallest implementation: write only enough to pass the tests, nothing extra
4. Clean up: delete the code, files and docs this change made unused. Not sure? Ask me

## Don't
- Keep old code "just in case"
- Delete a database or reset data without asking me

## Before you say done
- Run the tests and read the output yourself
- Tell me what you deleted
- Didn't run a check? Say so

## When I correct you
- Add a line at the top of Lessons: "When X, do Y"
- Same mistake twice means that lesson is unclear. Rewrite it, don't add another
- Over 20 lessons? Merge duplicates, delete outdated ones, then show me

## Lessons
```

## Background

This AGENTS.md fixes the three most annoying habits of Codex and Claude Code: writing backward-compatible code for a project nobody uses yet, never deleting old code and docs it no longer needs, and adding a pile of tests just to change a button color.

After using them every day for months, the lines I'd want in there from day one are the ones at the top: if the project has no real users yet, skip compatibility and migrations, and go straight to the simplest code that works. Then a four-step loop:

1. Docs first
2. Tests
3. Smallest implementation
4. Clean up

Already have a CLAUDE.md? Import AGENTS.md into it with an `@AGENTS.md` line.

## Source

From [Copybook](https://copybook.page/t/agents-md-for-projects-with-no-users-yet): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2106783910055006342) on 4 Oct 2026, 756 saves as of 1 Nov 2026. For Claude Code and Codex.
