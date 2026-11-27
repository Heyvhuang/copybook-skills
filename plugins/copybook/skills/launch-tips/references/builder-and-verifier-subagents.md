# Builder on low effort, verifier on high

High effort mostly buys verification: a builder on low, a verifier on high, one CLAUDE.md rule runs each feature through both.

## Steps

1. Copy the prompt.
2. Send it to Claude Code with the workflow image from the post.
3. You get: A builder and a verifier subagent in ~/.claude/agents, shown to you before anything is written.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up the workflow in this image in my Claude Code:

1. Create two subagents in ~/.claude/agents:
- builder: writes the code. model: opus, effort: low. It implements the spec I've approved and stops when it's done.
- verifier: checks the work. model: opus, effort: high. It runs the feature first to see what it actually does, then adds tests, focusing on edge cases. It reports problems to me and doesn't change the code itself.

2. Add a rule to ~/.claude/CLAUDE.md: when I ask for a new feature, first ask me what the spec is missing; after I confirm, hand it to builder; after I've reviewed the result, hand it to verifier.

3. Check whether the environment variable CLAUDE_CODE_EFFORT_LEVEL is set. If it is, the effort settings on both subagents won't take effect. Just tell me; don't change it.

Show me the contents of the files you'll create or change, then explain the whole workflow in words a 10-year-old could follow. Don't write anything until I confirm.
```

## Background

[Thariq](https://x.com/trq212/status/2103576349499855160) from Anthropic's Claude Code team published his tests on effort: turning effort up mostly buys more verification and edge-case testing. You can turn his approach into two subagents and have Claude Code follow it.

For new features, he works in four steps:

1. Have Claude ask you questions first and fill in what the spec is missing.
2. Build it on low. It's fast, and you can step in anytime.
3. Look it over, and if it needs changes, stay on low.
4. Switch to high at the end to verify and test.

## Source

From [Copybook](https://copybook.page/t/build-on-low-effort-and-verify-on-high-effort): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103586663393853636) on 25 Sep 2026, 740 saves as of 23 Oct 2026. For Claude Code.
