# Codex remote workflow from OpenAI's guide

Projects that keep moving while you're out: OpenAI's Remote guide applied, what runs alone and what you decide by phone.

## Steps

1. Copy the prompt.
2. Send it to Codex together with the link to OpenAI's Remote guide.
3. You get: A concrete remote workflow for your projects to try the next time you're away.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this Remote guide and help me design a remote workflow around my projects and work habits. Use the context you already have to understand what I’m working on, then ask about anything that would affect the plan: how long I’m usually away from my computer, how often I can check my phone, and whether my computer can stay awake and online. Don’t give me a generic feature list.

Choose tasks from my actual work that are best suited to making progress remotely. Explain what to prepare before I leave, what you can complete independently, which decisions I can handle on my phone, and which checks should wait until I’m back at my computer. Fit the workflow to my time and devices without requiring constant attention. If I don’t reply, don’t proceed past steps that need my approval. Verify that the required features are available in my current setup, then give me a concrete plan I can try the next time I’m away. Propose the plan first; don’t change settings or start tasks yet.
```

## Background

I think Codex's mobile remote mode is seriously underrated. I often use it to keep projects moving when I'm away from my computer. OpenAI has a guide you can give Codex to help it design a remote workflow around your projects and daily routine: https://developers.openai.com/blog/mastering-codex-remote-for-engineering

If you only open Codex on your phone to check progress, you're missing its most useful part. A task might still have a lot of work ahead, but all it needs from you is an answer or a decision about how to proceed. Give it that direction from your phone, and your computer can keep working.

To get started, open the latest ChatGPT desktop app and go to Settings, Connections, Control this Mac or PC, then scan the QR code to pair your phone. Pairing starts in the desktop app, not the Codex CLI. Use the same account and workspace on both devices, and keep the desktop app running and your computer awake and online.

Send this prompt and the guide's link to Codex.

## Source

From [Copybook](https://copybook.page/t/design-a-codex-remote-workflow-from-openais-guide): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2099931652524810457) on 15 Sep 2026, 381 saves as of 13 Oct 2026. For Codex.
