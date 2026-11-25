# Luna Max as a Codex subagent

Bounded delegated work at max reasoning: a luna_worker custom agent, checked against your Codex version, diff shown first.

## Steps

1. Copy the prompt.
2. Send it to Sol in Codex.
3. You get: A max-effort luna_worker subagent, validated against your Codex version, with the diff shown first.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
create a custom agent named luna_worker at ~/.codex/agents/luna-worker.toml.

use these settings:

model = "gpt-5.6-luna"
model_reasoning_effort = "max"

give it a description and instructions for bounded delegated work. preserve the rest of my config. validate it against my installed Codex version, show me the diff, then use luna_worker for subagent tasks.
```

## Background

Tell Sol to configure Luna Max as a subagent. The prompt creates a custom agent file, keeps the rest of your config, validates it against your installed Codex version and shows you the diff before using it.

Another option: skip the custom agent file. Keep Sol in the main thread and ask it to spawn separate Luna Max agent threads for each task. In Codex, a thread is a separate conversation with its own context. Several can run at once, and Sol collects their results in the main thread.

## Source

From [Copybook](https://copybook.page/t/configure-luna-max-as-a-codex-subagent): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2083545774768402673) on 1 Aug 2026, 6.1K saves as of 29 Aug 2026. Last check: works on GPT-5.6 Luna, the day it was posted. For Codex.
