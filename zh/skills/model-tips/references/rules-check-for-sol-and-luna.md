# Rules check for Sol and Luna after Astra cleanup

Rules trimmed for Astra can drop checks Sol and Luna still need: Astra finds what was lost, each model's rules kept apart.

## Steps

1. Copy the prompt and list the models you use in the brackets.
2. Send it to Astra in Codex in your project.
3. You get: Each lost test, check or confirmation quoted, with its impact and the smallest fix; nothing edited.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this guide: https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra
Review my project’s AGENTS.md and Skills. I use these models: [list your models]. Check whether changes made to streamline instructions for Astra have removed necessary test commands, acceptance criteria, or workflow information, or relaxed necessary confirmation requirements. For changes already made, compare against the previous version. State where evidence is missing. Don’t assume other models don’t need an instruction just because Astra doesn’t.

For each issue, quote the relevant instruction, explain its potential impact, and suggest the smallest change needed. Don’t rely on models identifying themselves to choose which rules to follow. List model-specific guidance separately and check whether the current environment supports loading it separately; don’t assume switching models automatically switches instructions. List proposals involving safety, permissions, or reduced verification separately for me to decide. Show me the recommendations first. Don’t modify anything yet.
```

## Background

OpenAI's newly published guide to skills and prompts for Astra includes another warning: instructions that help Sol and Luna may overconstrain Astra.

But if you tune Codex for Astra, what happens when you switch back to Sol or Luna?

Take testing. The guide says earlier models needed reminders to check their work, while Astra does this on its own. The same reminders may lead to repeated checks. If you remove those instructions, Sol and Luna will read the edited version when you switch back. A reminder that's redundant for Astra may still help another model.

So if you use multiple models, include them when reviewing your instructions. Check whether you're removing repeated reminders or also losing specific test commands and acceptance criteria.

Putting several sets of rules in one file raises another concern: after switching models, can the model reliably tell which rules it should follow? Especially a less capable model.

## Source

From [Copybook](https://copybook.page/t/check-astra-rule-cleanups-still-work-for-sol-and-luna): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2098900224525918697) on 12 Sep 2026, 318 saves as of 12 Oct 2026. For Codex.
