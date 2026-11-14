# /claude-api prompt-audit: skill audit for Fable 5.1

Skills for older models misfire on Fable 5.1: duplicate rules, dead commands and old model names listed, with a diff.

## Steps

1. Copy the Step 1 command, then the Step 3 command.
2. In Claude Code, run Step 1, install claude-api from /plugin, then run Step 3.
3. You get: An audit report and proposed diff for your skills; nothing is edited, and you pick what to apply.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Step 1: add the marketplace

```text
/plugin marketplace add anthropics/skills
```

## Step 3: run the audit

```text
/claude-api prompt-audit
```

## Background

If you just switched Claude Code to Fable 5.1, run this on your skills first. Across a whole workspace it found duplicate constraints, dead slash commands, old hard-coded model names and output scaffolding written for older models.

One of the clearest fixes: "CRITICAL: You MUST use this tool when..." became "Use this tool when...". Fable 5.1 follows instructions more literally. Extra emphasis that kept older models on task can now trigger repeated checks and unnecessary tool calls.

The command only generates an audit report and a proposed diff. It does not edit any files. Each finding includes its location, explanation and confidence level, and you decide which changes to apply.

The official skill is free and open source: https://github.com/anthropics/skills/tree/main/skills/claude-api

How to use:

1. In Claude Code, add the marketplace.
2. Open `/plugin`, find anthropic-agent-skills and install claude-api.
3. Run the audit.

## Source

From [Copybook](https://copybook.page/t/audit-your-skills-with-claude-api-prompt-audit): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2095489486129877331) on 3 Sep 2026, 479 saves as of 1 Oct 2026. Last check: works on Fable 5.1, the day it was posted. For Claude Code.
