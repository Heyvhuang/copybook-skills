# /advisor: Sonnet 5.5 works, Opus on call

$20 plan on Opus 5.5 by default: Haiku reads code, looks up docs; Opus advises before plans, on repeat errors, before 'done'.

## Steps

1. Copy the prompt and the tree.
2. Send the prompt and the agent tree to Claude Code.
3. You get: The changes before any edit, then Sonnet 5.5 doing the work with Opus on call.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up my Claude Code to match this tree:
1. For the three subagents in the tree, check ~/.claude/agents and .claude/agents first. Reuse fitting ones, and propose new ones only for missing roles. Set the ones that read code and look up docs to model: haiku, and the one that edits code and runs tests to model: sonnet. Leave any subagent that already sets a different model alone, and list it.
2. In ~/.claude/settings.json, set model to sonnet and advisorModel to opus.
3. Check these environment variables and report them without changing anything: CLAUDE_CODE_DISABLE_ADVISOR_TOOL turns the advisor off, and so does DISABLE_TELEMETRY or anything else that stops flag fetching. CLAUDE_CODE_SUBAGENT_MODEL_FORCE forces every subagent onto one model. Then check the version: if Claude Code is older than 2.1.293, tell me (in earlier versions, haiku still meant Haiku 4.5). Don't upgrade it yourself.
4. Add one rule to ~/.claude/CLAUDE.md: ask the advisor before committing to a big plan, when the same error shows up a second time, and before calling a long task done.

Show me the changes first. Don't edit any files yet.
```

## Agent tree

```text
         CLAUDE CODE AGENT TREE
        SONNET 5.5 + OPUS ON CALL

               Sonnet 5.5 ─ ─ Opus 5.5
              main session    /advisor opus
    ┌───────────────┼───────────────┐
explorer         worker        researcher
Haiku 5.5      Sonnet 5.5       Haiku 5.5
read code     edits + tests   look up docs
    └───────────────┼───────────────┘
 back to main session · review + verify

    Sonnet calls Opus in:
    · before it picks a plan
    · when the same error comes back
    · before it says "done"

    Code on Sonnet. Search on Haiku.
           Keep Opus on call.
```

## Background

The $20 plan now runs your whole session on Opus 5.5 by default. To make your quota last longer, switch the main session to Sonnet 5.5 and keep Opus on call with `/advisor`.

Launch with `claude --model sonnet --advisor opus` to make Opus an advisor on the sidelines. Sonnet 5.5 keeps doing the work and calls Opus in at three moments:

- Before committing to a plan: is it right?
- When the same error keeps coming back: am I heading the wrong way?
- Before saying "done": did I miss anything?

Opus reads the whole session and gives advice. Sonnet still writes the code.

The advisor docs: https://code.claude.com/docs/en/advisor

Original is in an image, transcribed verbatim.

## Source

From [Copybook](https://copybook.page/t/switch-to-sonnet-5-5-with-opus-on-call): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2119082454120337491) on 7 Nov 2026, 968 saves as of 14 Nov 2026. For Claude Code.
