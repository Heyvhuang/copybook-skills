# Codex setup review by OpenAI's GPT-6.2 guide

Maxing out Astra when Sol would do: model, effort, subagent and AGENTS.md problems found, each with a config fix to paste.

## Steps

1. Copy the prompt.
2. In your project, start codex --search and send it to GPT-6.2 Astra.
3. You get: Each issue with the guide's line and a config fix to paste, then which work fits Sol or Astra.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read these two pages. If you can't get the actual text, stop and tell me:
https://developers.openai.com/codex/models
https://learn.chatgpt.com/guides/prompting-gpt-6-2-astra

Then review my Codex setup against them: ~/.codex/config.toml, ~/.codex/AGENTS.md, and the AGENTS.md files and skills in my project. Find three kinds of problems:
1. A model or effort level that doesn't fit the work. Flag Astra as my default model, or a default effort above Extra High. Use the guides: Sol for everyday coding, Medium for a quick survey, High for tracing one cause across several systems, Extra High only when several causes interact.
2. Parallel work with no instructions. For work that can run in parallel, check whether the matching skill or AGENTS.md says to use subagents, and when.
3. Too much in AGENTS.md. Flag anything Codex can work out from the code, tests and docs, and routine decisions made on its behalf.

For each issue, quote my setting and the matching line from the guide, explain what it costs and where it will go wrong, and suggest the smallest change, written as config I can paste.

Then look at this project's code and recent commits and give me a table: which kinds of work here fit Sol or Astra, and at which effort level.

Last, tell me where to check my Codex usage and how to run one task from my backlog on both Sol and Astra to compare what each one uses.

Show me the recommendations first. Don't change anything yet.
```

## Background

OpenAI just published its full guide to using GPT-6.2 in Codex. You can ask GPT-6.2 Astra to use it to review your Codex setup.

Tuned right, 6.2 costs way less than the last generation. 6.2 Astra is 20% cheaper than GPT-6 Astra, and 6.2 Sol costs a quarter of what Astra does. The Plus plan also gets more messages every 5 hours than the last generation: 17-180 for Sol, 6-50 for Astra.

Don't start by maxing out Astra. Sol is enough for everyday coding. Only switch to Astra when you're tracing one bug across several services.

A one-time config check is the right place to spend one Astra message. Start Codex with `codex --search` (by default it only searches a cache, so it may not see yesterday's new pages), then send GPT-6.2 Astra this prompt.

## Source

From [Copybook](https://copybook.page/t/review-your-codex-setup-with-openais-gpt-6-2-guide): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2123038513352622087) on 18 Nov 2026, 1.9K saves as of 19 Nov 2026. For Codex.
