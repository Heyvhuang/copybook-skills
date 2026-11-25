# Plan review: 5 methods in one message

Plan written, no code yet: one message for first principles, adversarial review, ablation, Occam's razor and loose coupling.

## Steps

1. Copy the prompt.
2. Send it as the message after the plan, before any code.
3. You get: The plan re-checked from first principles, with counterexamples, ablation tests and Occam's razor.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Re-analyze this from first principles and run an adversarial review of the current plan. Core mechanisms must be validated with ablation tests. Follow Occam's razor in the design, and keep the code highly cohesive and loosely coupled.
```

## Background

An engineer two months into a big tech job leans on 5 very short prompts and calls them the model's thinking shortcuts. Each one names a single method. The model saw plenty of papers and code on these methods in training, so naming one is often enough.

- When an API is slow and the plan is already "add a Redis cache," have it work from first principles to find whether the time goes to SQL, the network or repeated work.
- When you review a plan or code, ask for an adversarial review that hunts for counterexamples to the core assumptions.
- If you shipped three optimizations at once and the endpoint got faster, have it design an ablation test that pulls them apart. It might turn out the index alone took it from 800ms to 120ms.
- When the agent piles up Kafka, Redis and distributed locks, ask it to review the design with Occam's razor.
- When a service class hits 2,000 lines, ask it to review the responsibility boundaries for high cohesion and low coupling.

In Claude Code, once Opus 5.5 has written the plan and before it touches any code, send this as your next message.

## Source

From [Copybook](https://copybook.page/t/five-thinking-shortcuts-to-send-after-the-plan): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2110324749557784946) on 14 Oct 2026, 361 saves as of 11 Nov 2026.
