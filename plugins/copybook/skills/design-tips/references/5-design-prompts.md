# 5 design prompts, from references to polish

A site that looks like every other AI site: a DESIGN.md from 10 real sites, 3 mockups to choose from and a harsh 1 to 10 score.

## Steps

1. Copy a prompt: Reference Hunter, Three Mockups, AI-Look Ban, Stranger Judge or Polish Pass.
2. Send it to Claude Code in your project, the Stranger Judge to a brand new chat with a screenshot.
3. You get: Pages that follow your DESIGN.md, built with shadcn/ui and Magic UI and checked at 375px wide.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: The Reference Hunter

```text
Before you design anything, find 10 real websites in my niche that look great. Screenshot them and tell me what makes each one work: layout, type, colors and spacing. Save it as DESIGN.md so every page follows it.
```

## Prompt: The Three Mockups

```text
Make 3 completely different mockups on one page, each based on a different reference, so I can pick one. Don't build anything until I choose.
```

## Prompt: The AI-Look Ban

```text
No Inter, no purple gradients, no glowing buttons, no serif headline with one word in italic, no four stat cards in a row. If it looks like every other AI site, start over.
```

## Prompt: The Stranger Judge

```text
You've never seen this site before. Score it 1 to 10 against [3 sites I admire]. List everything that looks AI-made, worst first. Be harsh. Then tell me the 3 changes that would get it to a 9.
```

## Prompt: The Polish Pass

```text
Use shadcn/ui for every component and Magic UI for the small animated details. Then check every page at 375px wide and fix spacing, alignment and hover states before you call it done.
```

## Background

5 Claude Code design prompts that feel illegal to know.

AGENTS.md is how to build it, DESIGN.md is how it should look.

Paste the Stranger Judge into a brand new chat with a screenshot.

## Source

From [Copybook](https://copybook.page/t/five-design-prompts-from-references-to-polish): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2125560137129890274) on 25 Nov 2026, 305 saves as of 26 Nov 2026. For Claude Code.
