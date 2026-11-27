# Token waste audit for Claude Code on Opus 5.5

Where your setup wastes tokens each turn: measured, each instruction line marked Keep, Move or Cut, applied on your OK.

## Steps

1. Copy the token audit prompt.
2. Paste it into Claude Code in your project, with /context or /usage output if you have it.
3. You get: A baseline, changes ranked by saving, and exact edits applied only after you approve.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Opus 5.5 is already priced low per token. Find what in this Claude Code setup still wastes tokens on every turn. Goal: the lowest cost per finished task. It must stay as thorough as it is now and keep taking on big tasks. Smaller requests don't count as a win if the task then takes more turns.

1. Measure first, change nothing

List everything that loads when a session starts:

- Every CLAUDE.md that loads (global, project, nested) and the files it imports
- Skill listings: every name and description the model sees
- MCP servers: which are connected, and which tools load upfront
- Hooks or scripts that inject text into the conversation
- Settings: model, modelSettings, CLAUDE_CODE_EFFORT_LEVEL, CLAUDE_CODE_SUBAGENT_MODEL

If I paste /context or /usage output, use those numbers. Otherwise ask once, then count lines and bytes yourself. Read each file in full. Repeated, conflicting and outdated rules are easy to miss in a summary.

2. Check the Opus 5.5 settings

Effort: report the level Opus 5.5 actually runs at and where it comes from. It starts at medium, and a top-level effortLevel in ~/.claude/settings.json doesn't count for it.
Checks: list the test, build and typecheck commands this repo already has. A test run costs one turn. Higher effort adds thinking to every turn.
Subagents: for each one, model, effort, and whether it writes code or only reads. With no model line it follows CLAUDE_CODE_SUBAGENT_MODEL, or the main model if that's unset.
Output: an output token costs 100x a cache read, and thinking counts as output. Flag rules that make it write more than the task needs.

3. Label every instruction line

Keep: what it can't work out from the repo, like how this project ships and how I like to work, plus fixes for mistakes it has made in this project.
Move: playbooks for one workflow into a skill, so they load only when used.
Cut: what it already does by default, and rules that contradict each other.

Keep each CLAUDE.md under ~200 lines.

4. Protect the cache

These make the next request re-read the whole session uncached: switching /model, turning on fast mode, connecting an MCP server whose tools load upfront, and a skill that pins another model.

- If you need another model's opinion, hand that task to a subagent so the main session keeps its cache.
- Compact between tasks. Start unrelated work with /clear.

5. Keep long output out of the conversation

- Test runs, builds, logs: return the failures plus the last few lines, and write the full log to a file it can grep. Cutting output at a fixed length can drop the error line it needed.
- Progress notes: keep one short file and overwrite it. If it keeps growing, every later read costs more.

6. Off-limits

- Adding "be concise" or "save tokens" to any prompt. An agent told to save tokens can start shying away from big tasks.
- Dropping effort on hard tasks, or changing models halfway through a task, to cut the bill.
- Judging by tokens per request. Measure cost per finished task.

7. Report, then wait

1. Baseline: each source, its size, when it loads
2. Changes, biggest saving first: what it saves and how you worked that out, what could get worse, how to reverse it
3. The exact edits to each instruction file, each one tagged Keep, Move or Cut

Back up every file before touching it. Apply nothing until I approve.
```

## Background

This Claude Code prompt is a token auditor for Opus 5.5. It looks for what in your setup still wastes tokens on every turn. The goal is the lowest cost per finished task, and the agent must stay as thorough as it is now.

It measures first and changes nothing, backs up every file before touching it, and applies nothing until you approve.

## Source

From [Copybook](https://copybook.page/t/audit-claude-code-token-waste-on-opus-5-5): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103469567964254587) on 25 Sep 2026, 348 saves as of 23 Oct 2026. For Claude Code.
