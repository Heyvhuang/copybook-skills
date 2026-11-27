# Old-rules review for Astra, by OpenAI's guide

Rules from older models make Astra over-read or stop early: the triggers, required reading, checks and stop rules to cut.

## Steps

1. Copy the prompt and the link to OpenAI's guide.
2. Send the prompt and the guide's link to Astra in Codex, in your project.
3. You get: Each old rule worth changing, quoted with its impact and the smallest fix, before any file changes.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this guide and review my project’s AGENTS.md and Skills. Identify overly broad skill triggers, documents you’re required to read for every task, redundant checks, conflicting instructions, and rules that make you stop for confirmation before the task is complete.

For each issue, quote the original instruction, explain its potential impact, and suggest the smallest change needed. List any proposals involving safety, permission boundaries, or reduced verification separately for me to decide. Show me the recommendations first. Don’t modify anything yet.
```

## Background

OpenAI just published a guide to updating your skills and prompts for Astra. You can ask Astra to use it to review the old rules in your project.

You ask for a typo fix, but the AI first reads all your architecture, database, and deployment docs. That's an example from the guide. You've changed models, but the instructions you added to keep earlier models from making mistakes may now cause unnecessary work or make Astra stop before the task is finished.

Send this prompt and the guide to Astra: https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra

## Source

From [Copybook](https://copybook.page/t/have-astra-review-your-old-rules-against-openais-guide): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2098537511735750686) on 11 Sep 2026, 5K saves as of 18 Sep 2026. For Codex.
