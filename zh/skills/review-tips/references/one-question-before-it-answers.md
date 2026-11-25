# One question before it answers

Ten questions at once get ignored: assumptions, missing info, the usual mistake, then the one question that changes its approach.

## Steps

1. Copy the prompt.
2. Paste your question at the end and send it to Codex or Claude Code.
3. You get: It lists its assumptions, then asks the one question most likely to change its answer, and waits.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Do not answer my question yet.
Before answering:
1. List the assumptions I haven’t stated but you’re about to make.
2. Tell me what key information is missing and how it could change your answer.
3. Name the most common mistake people make with this kind of task.
4. Ask me one question only: the one whose answer is most likely to change your overall approach.
Wait for my reply before continuing.
My question: [paste your question]
```

## Background

I tried a few popular reasoning prompts with Codex. This is the one I kept. It makes Codex pause, ask the one question most likely to change its answer, and wait for your reply. It works with Claude too.

Ten questions at once and I'll probably leave it for later. One question, and I'll usually answer right away.

## Source

From [Copybook](https://copybook.page/t/make-the-agent-ask-one-question-before-answering): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2088327172725592142) on 14 Aug 2026, 631 saves as of 11 Sep 2026. For Claude Code and Codex.
