# REA: take apart another app's feature

A feature you like and can't see how it's built: taken down layer by layer, each finding with evidence, then a plan for your own.

## Steps

1. Copy the install command, then the prompt.
2. Run the command in a terminal, pick your agent, restart it, then send the prompt to Opus 5.5.
3. You get: Your agent works out how a feature is built, with evidence, and plans your own version.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install command

```bash
npx rea-agents setup
```

## Prompt

```text
I want to use REA to figure out how a feature in some software works.
1. First ask me which app and which feature I want to study, then have me say whether it's my own, open source, or software whose terms allow reverse engineering. If I can't say, don't start.
2. Work out what kind of program it is first. If you need Hopper, Ghidra or IDA, tell me which one is missing and where to get it. Don't install it yourself.
3. Back every finding with evidence: which file, which function or address. Keep what you saw separate from what you're guessing. At the end, explain it all in words a 10-year-old could follow.
4. Once it's clear, tell me the minimum pieces I'd need to write to build something similar in my own project, without copying its code. Show me the plan first, and only start writing after I agree.
```

## Background

Highly recommend adding REA to Claude Code or Codex. The name stands for Reverse Engineer Anything. See a feature you like in another app? Have your agent take it apart to see how it's built, then build your own version in your project. It's been #1 on GitHub's daily trending two days running and is past 60K stars: https://github.com/morluto/rea

The apps on your computer are finished products. Think of a baked cake: you can taste it, but you can't see the recipe. REA hands your agent the tools made for taking software apart. It works down layer by layer, shows you where each finding comes from, and then walks you through the recipe. You can point it at desktop apps, websites and Android apps. Ask it things like:

- "How does this notes app show search results the moment I start typing?"
- "Why does text copied from Notion keep its formatting when I paste it somewhere else?"
- "How does this old game work out that ring of bullets?"
- "Our company's 10-year-old internal tool lost its source code years ago. What is it actually doing?"

Take apart your own software and open-source code as much as you like. For anyone else's, check the terms first, since many forbid reverse engineering. Don't bring it cracking or license-bypass jobs; the model will most likely refuse anyway. Run the install command in your terminal, pick your agent when it asks, and restart it. Then send the prompt to Opus 5.5.

## Source

From [Copybook](https://copybook.page/t/reverse-engineer-a-feature-with-rea): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2109297975013081587) on 11 Oct 2026, 1.5K saves as of 8 Nov 2026. For Claude Code and Codex.
