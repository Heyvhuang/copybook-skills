# Fable main, Opus subagents: 3 settings

Fable quota going fast: 3 settings send reading and lookups to half-price Opus subagents; Fable keeps the judgment.

## Steps

1. Copy the three settings, then the request.
2. Set the settings for Claude Code and add the request to your next message.
3. You get: Fable on the judgment calls, Opus subagents on research, scoped changes and tests.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Settings

```bash
CLAUDE_CODE_SUBAGENT_MODEL=opus
CLAUDE_CODE_MAX_CONCURRENT_SUBAGENTS=2
CLAUDE_CODE_MAX_SUBAGENT_SPAWN_DEPTH=1
```

## Prompt

```text
Delegate independent research, well-scoped changes, and relevant tests to Opus subagents. Explicitly set model to opus when invoking them, and define the scope and acceptance criteria. Have them complete the assigned work and return the changed files, test commands, actual exit statuses, and unresolved issues. Keep the full logs and provide their paths instead of pasting everything back.

Avoid simultaneous edits to the same files by you and your subagents. When a subagent finishes, review its diff and test results, and run additional checks where needed. Decide how to handle unclear approaches yourself. Handle small tasks directly without spawning extra subagents.
```

## Background

If you want your Claude quota to last longer, try keeping Fable as your main model and delegating supporting work to Opus subagents as needed.

Opus 5's listed input and output prices are both half those of Fable 5.1. Keep Fable where you need its judgment, and delegate work like reading code and looking up documentation. Subagents are documented at https://code.claude.com/docs/en/sub-agents.

The first line sets Opus as the default for subagents without overriding existing model settings. It doesn't change the built-in Explore or Plan models. The second sets the concurrent subagent limit to 2. The third limits delegation to one layer, so your assistants can't call in assistants of their own.

Update how you assign work along with your settings. Add this to your next request:

Have subagents return results you can use, so the two models don't repeat the same investigation. Run `/tasks` to check which model each subagent is actually using.

## Source

From [Copybook](https://copybook.page/t/keep-fable-as-main-and-delegate-to-opus-subagents): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2099242720732512603) on 13 Sep 2026, 715 saves as of 11 Oct 2026. For Claude Code.
