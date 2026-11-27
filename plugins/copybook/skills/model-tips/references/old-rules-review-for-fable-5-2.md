# Old-rules review for Fable 5.2

Rules hard-coded for older models work against Fable 5.2: delegation, think-less, style-limit and 'never' lines quoted with a fix.

## Steps

1. Copy the prompt and the link to Anthropic's guide.
2. Send the prompt and the guide's link to Fable 5.2 in Claude Code, in your project.
3. You get: Each issue with the instruction quoted, its potential impact and the smallest change, before edits.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read Anthropic's official Prompting Claude Fable 5.2 guide and review my project's CLAUDE.md, AGENTS.md, skills, subagent files and memory files. Identify standing instructions that tell you to delegate work to subagents, lines that tell you to think less or answer directly, hard-coded style limits, 'never' rules and old notes that have piled up, and approval rules that don't name the exact actions they cover.

For each issue, quote the original instruction, explain its potential impact, and suggest the smallest change needed. List any proposals involving safety, permission boundaries, or reduced verification separately for me to decide. Show me the recommendations first. Don't modify anything yet.
```

## Background

Anthropic just published a prompting guide for Fable 5.2. You can ask Fable 5.2 to use it to review the old rules in your project.

In the guide's own test, Fable 5.2 had a dozen notes from earlier sessions in context, and just one of them said "never retry." That one line cut its retries after a busy tool from nearly every time to about 4 in 10.

The rules you hard-coded to stop older models from doing dumb things now work against the new one and burn tokens for nothing.

Send this prompt and the guide to Fable 5.2: https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-2

## Source

From [Copybook](https://copybook.page/t/review-old-rules-with-anthropics-fable-5-2-guide): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2120501801313267818) on 11 Nov 2026, 863 saves as of 18 Nov 2026. Last check: works on Opus 5.5, 19 Nov 2026. For Claude Code.
