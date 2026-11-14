# One AGENTS.md for Claude Code and Codex

Two agents, one rules file: plan first, smallest change, subagent roles, own the bug, verify before done, Lessons per correction.

## Steps

1. Copy the AGENTS.md; the plugin command under it is for Claude Code users.
2. Save it as AGENTS.md in your project, and add the line @AGENTS.md to any CLAUDE.md you have.
3. You get: Claude Code and Codex both plan first, make the smallest change, verify, and log every correction.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## AGENTS.md

```markdown
# AGENTS.md

Shared by Codex and Claude Code. Every line here should change what you do.

## 1. Plan before you touch code
- Long task: first tell me in 2-3 sentences what you think I'm after
- Start only after I say yes
- Write the steps to `PLAN.md`, each with how you'll prove it works
- Two failed tries on one step: stop, note what failed, re-plan
- Pausing mid-task: leave `PLAN.md` so a new session can pick it up

## 2. Smallest change that works
- Stay inside this task. Don't break anything that already works
- Tradeoff? Weigh UX (users), DX (the next dev) and AX (the next agent)
- No new dependencies, renames or refactors nobody asked for
- Back up before deleting or overwriting anything

## 3. Split work across subagents
- Explorer reads, worker edits, reviewer only reports and never edits
- Each gets one job, a done condition and a 5-line report
- Parallel is fine. Two agents on the same file is not
- Check the key claim in a report before you build on it

## 4. Own the bug
- Reproduce it with my steps first. Can't reproduce it? Tell me what you need
- Fix the cause, then run the same steps again
- Never silence an error to make it go away

## 5. Verify before you say done
- Run the tests and read the output yourself
- UI: open it and try to break it: empty input, double submit, refresh
- Didn't run a check? Say so. An unrun check is not a pass
- Report in 2-3 lines: what you picked, what you gave up, and why

## 6. Write down every correction
- When I correct you, add a line under Lessons: "When X, do Y"
- Same mistake twice: the lesson is unclear. Rewrite it
- Ask me before changing anything above Lessons

## Lessons
<!-- Newest on top. Delete what no longer applies. -->
```

## Command

```text
/plugin install claude-code-setup@claude-plugins-official
```

## Background

Codex reads AGENTS.md natively. Recent versions of Claude Code read it too when there's no CLAUDE.md. Already have a CLAUDE.md? Add the line `@AGENTS.md` to it.

Six sections:

- Plan before you touch code
- Smallest change that works
- Split work across subagents
- Own the bug
- Verify before you say done
- Write down every correction

The file gets better the more you use it. Each correction makes it fit you a little better.

Original is in an image, transcribed verbatim.

Claude Code users: also install the official plugin, then ask it to "recommend automations for this project". It scans your codebase and recommends the hooks, skills and subagents worth adding.

## Source

From [Copybook](https://copybook.page/t/one-agents-md-for-claude-code-and-codex): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2105367927394615364) on 30 Sep 2026, 1.9K saves as of 28 Oct 2026. For Claude Code and Codex.
