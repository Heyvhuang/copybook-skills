# Opus 5.5 main model, medium subagents

Usage that lasts longer: Opus 5.5 as main model, Opus 5.5 on medium as default subagent; hard-coded model IDs found first.

## Steps

1. Copy the environment variable and the subagent settings, then the prompt.
2. Set the variable, put the lines in each subagent definition, and send the prompt to Claude Code.
3. You get: Subagents on Opus 5.5 at medium effort, with hard-coded model IDs listed before anything changes.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Environment variable

```bash
CLAUDE_CODE_SUBAGENT_MODEL=opus
```

## In each subagent definition

```yaml
model: opus
effort: medium
```

## Prompt

```text
Check this project, plus the settings, agents, and skills under ~/.claude:

1. For every subagent definition, change model to the alias opus and set effort to medium. List any subagents that need a higher effort level separately, with the reason.
2. Find hard-coded model IDs in AGENTS.md, CLAUDE.md, skills, and scripts, like claude-opus-5 and claude-fable-5-1. Switch the ones that can use the opus alias. Go through anything hard-coded to Fable one by one, and flag the ones you're unsure about for me to decide.
3. Check whether environment variables like CLAUDE_CODE_EFFORT_LEVEL are set. They override a subagent's own effort setting.

Show me the list and proposed changes first. Don't edit any files until I confirm. Finally, add a rule to AGENTS.md: if the same problem fails twice in a row, stop and tell me what you tried and why it failed, and I'll decide whether to switch to Fable.
```

## Background

If you want your usage to last longer, you can switch your main model straight to Opus 5.5. Its listed price is only 40% of Fable 5.1's, and it's ahead on benchmarks too: 58 vs 53 on the Artificial Analysis Intelligence Index, both at max effort.

Your subagents should switch too. I'd make Opus 5.5 at medium effort your default subagent: on the official coding eval, medium scores as well as max at less than a fifth of the cost. Reading code, looking up docs and running tests usually don't need a higher effort level.

Anything using the opus alias upgrades automatically. Hard-coded model IDs don't. Hand this to Claude Code and have it review everything before changing anything:

After the changes, run `/tasks` to check which model each subagent is actually running.

## Source

From [Copybook](https://copybook.page/t/switch-claude-code-to-opus-5-5-with-medium-subagents): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2102775004723351811) on 23 Sep 2026, 437 saves as of 21 Oct 2026. Last check: works on Opus 5.5, the day it was posted. For Claude Code.
