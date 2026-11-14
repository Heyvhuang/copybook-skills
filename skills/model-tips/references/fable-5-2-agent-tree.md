# Fable 5.2 agent tree with Opus 5.5 and Haiku

Picking a model and effort per role: Haiku 5.5 finds files and runs tests, Opus 5.5 edits code, Fable on high only if stuck.

## Steps

1. Copy the agent tree.
2. Send it to Claude Code to set it up.
3. You get: A subagent for each role in the tree, under Fable 5.2 at medium.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Agent tree

```text
   COST-EFFICIENT CLAUDE CODE AGENT TREE

                 Fable 5.2
                  medium
            root / orchestrator
                     |
            delegate on demand
                     |
     +---------------+---------------+
     |               |               |
 explorer         worker          tester
     |               |               |
 Haiku 5.5   Opus 5.5 · medium   Haiku 5.5
     |               |               |
finds files     edits code      runs tests
     |               |               |
     +---------------+---------------+
                     |
                 Fable 5.2
                  medium
            integrate + verify
                     |
                     + - - - - - - - +
                                     |
                            only if it's stuck
                                     |
                                 Fable 5.2
                                   high

Split useful work. Don't spawn every role.
```

## Background

A cost-efficient Opus 5.5 + Haiku agent tree, orchestrated by Fable 5.2.

Models and effort levels follow the model selection guide Anthropic published yesterday. Hand this to Claude Code to set it up.

Original is in an image, transcribed verbatim.

## Source

From [Copybook](https://copybook.page/t/orchestrate-opus-and-haiku-subagents-with-fable-5-2): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2120199820887593304) on 10 Nov 2026, 1.3K saves as of 11 Nov 2026. For Claude Code.
