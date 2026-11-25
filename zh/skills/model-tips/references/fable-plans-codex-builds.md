# Fable 5 plans, Codex builds the backend

Fable 5 burns tokens fast: planning and frontend stay with it, the backend goes to Codex by /goal; a redesign prompt too.

## Steps

1. Copy the split-the-work prompt; the frontend redesign prompt is optional.
2. Send it to your Fable 5 main session in Claude Code.
3. You get: Fable 5 stays on planning and frontend, and backend work goes to Codex with /goal.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: split the work

```text
to save tokens, keep this main session (fable 5) on planning and frontend tasks, its visual output and ideas are worth the price. for backend and heavier implementation, write a clear spec and dispatch to codex (gpt-5.5 xhigh) with /goal to execute, my quota there sits unused anyway. you may keep the hardest parts in this session.
```

## Prompt: frontend redesign

```text
redesign {your page, e.g. pricing page} for this project. full creative freedom, but it has to be visually striking and interactive, with motion effects and a hidden easter egg. search 2026 design trends first and use them.
```

## Background

Fable 5 burns tokens fast, but write the prompt like this and it's workable. The main session stays on planning and frontend, where its visual output and ideas are worth the price. Backend and heavier implementation go to Codex with `/goal`.

A frontend design prompt I've been testing that works well. Swap in your own page.

## Source

From [Copybook](https://copybook.page/t/keep-fable-on-planning-and-send-backend-to-codex): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2065142760915472691) on 11 Jun 2026, 2.5K saves as of 22 Jul 2026. Last check: works on Fable 5, the day it was posted. For Claude Code and Codex.
