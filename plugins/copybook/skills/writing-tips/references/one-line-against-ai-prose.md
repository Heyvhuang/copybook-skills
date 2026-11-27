# One line against AI prose

'It's not X, it's Y' is gone and it still reads like AI: Anthropic's Fable 5.1 guide has a more direct one-line prompt.

## Steps

1. Copy the one-line prompt.
2. Add it to your current request, or put it in the system prompt.
3. You get: Plainer wording: “a dial worth turning” becomes “a parameter worth varying.”

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Please remove all mannered prose.
```

## Background

You removed the “It’s not X, it’s Y” lines. It still reads like AI.

Anthropic’s Fable 5.1 guide gives a more direct prompt. Anthropic recommends adding it to the current request. You can also put it in the system prompt. The guide is at https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-1#writing-density.

Example: “a dial worth turning” becomes “a parameter worth varying.”

## Source

From [Copybook](https://copybook.page/t/remove-mannered-prose-with-one-line): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2095260094795583807) on 2 Sep 2026, 558 saves as of 30 Sep 2026.
