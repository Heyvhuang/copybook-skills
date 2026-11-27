# Setup review by the Opus 5.5 cost guide

Settings carried over from Opus 5 cost more on 5.5: effort, subagents, MCP servers and CLAUDE.md checked, a small fix each.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code.
3. You get: Opus 5.5 finds the costly parts of your setup and suggests the smallest change for each.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this guide: https://claude.dev/blog/what-a-task-costs-on-opus-5-5/

Then review my Claude Code setup against it: my user and project settings, the subagents in ~/.claude/agents and .claude/agents, CLAUDE.md, and the MCP servers I have connected. Find three kinds of problems:
1. A default effort that doesn't fit the work. Use the guide's ladder: low for mechanical edits, medium for well-scoped daily work, high when medium stalls, and xhigh or max only for work where a gain was measured. Flag a default of xhigh or max, or a level I picked for Opus 5. Then look at this project's code and recent commits and tell me which kinds of work here fit which level.
2. Subagents that only search, read logs or run tests but set no model, so they run on my main model.
3. Setup that makes every turn cost more: MCP servers I don't use, or a CLAUDE.md well over 200 lines.

For each issue, quote the setting or line, explain what it costs, and suggest the smallest change. Also tell me which three things to check in /usage at the end of a task.

Show me the recommendations first. Don't change anything yet.
```

## Background

Anthropic published its full cost guide for Opus 5.5. You can ask Opus 5.5 to use it to review your Claude Code setup.

At the same effort level, Opus 5.5 thinks more per turn than Opus 5, most of all at xhigh and max. Thinking is billed as output, and an output token costs 100 times a cache read. So don't carry over the level you set for Opus 5. Start at medium, and save xhigh and max for work where you've measured a gain.

Send this prompt to Opus 5.5.

## Source

From [Copybook](https://copybook.page/t/review-your-setup-with-the-opus-5-5-cost-guide): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103552376380457454) on 25 Sep 2026, 2.2K saves as of 23 Oct 2026. For Claude Code.
