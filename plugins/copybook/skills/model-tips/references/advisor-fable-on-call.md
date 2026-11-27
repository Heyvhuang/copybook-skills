# /advisor: Opus 5.5 works, Fable on call

Fable quota idle while Opus 5.5 does the work: Fable called in before a plan, when an error repeats and before 'done'.

## Steps

1. Copy the prompt and the tree.
2. Send the prompt and the agent tree to Claude Code, then run /advisor fable there.
3. You get: Opus 5.5 does the work and calls Fable in before a plan, on a repeat error and before done.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up my Claude Code to match this tree:
1. For the three subagents, reuse fitting ones from ~/.claude/agents and .claude/agents, and propose new ones only for missing roles. Set each to model: opus and effort: medium. Leave any subagent that already sets a different model alone, and list it.
2. Set the main session's default effort to high with effortLevel in ~/.claude/settings.json.
3. Check for environment variables that turn the advisor off (CLAUDE_CODE_DISABLE_ADVISOR_TOOL, or DISABLE_TELEMETRY and anything else that stops flag fetching) and for CLAUDE_CODE_EFFORT_LEVEL, which overrides every subagent's effort. Report them; don't change them.
4. Add one rule to ~/.claude/CLAUDE.md: ask the advisor before committing to a big plan, when the same error shows up a second time, and before calling a long task done.

Show me the changes first. Don't edit any files yet.
```

## Agent tree

```text
        CLAUDE CODE AGENT TREE · OPUS 5.5 + FABLE ON CALL


                         Opus 5.5 · high - - - -  Fable · on call
                          main session            /advisor fable
                                |
                                |                 Opus usually calls it:
                                |                 · before picking a plan
                                |                 · when an error repeats
                                |                 · before calling it done
                  delegate to custom subagents
                            on medium
                                |
        +-----------------------+-----------------------+
        |                       |                       |
    explorer                 worker                researcher
        |                       |                       |
Opus 5.5 · medium       Opus 5.5 · medium       Opus 5.5 · medium
        |                       |                       |
    read code             edits + tests           look up docs
        |                       |                       |
        +-----------------------+-----------------------+
                                |
                   back to main session · high
                         review + verify


      Plan on high. Delegate on medium. Keep Fable on call.
```

## Background

Once Opus 5.5 is your main model, don't let your Fable quota sit idle. Run `/advisor fable` and Claude Code gets an advisor on the sidelines. Opus 5.5 keeps doing the work and usually calls Fable in at three moments:

- Before committing to a plan: is it right?
- When the same error keeps coming back: am I heading the wrong way?
- Before saying "done": did I miss anything?

Fable reads the whole session and gives advice. Opus still writes the code. The full setup: Opus 5.5 on high runs the main session. Three subagents on medium split the rest: one reads code, one edits and runs tests, one looks up docs. Fable waits on the sidelines.

The advisor docs: https://code.claude.com/docs/en/advisor

Original is in an image, transcribed verbatim.

## Source

From [Copybook](https://copybook.page/t/put-fable-on-call-with-advisor): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103232997461786803) on 24 Sep 2026, 5.5K saves as of 22 Oct 2026. For Claude Code.
