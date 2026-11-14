# Mod ideas from your last 20 sessions

Requests you repeat, commands you stop or undo, how you check changes: ranked by how much each would help, your words quoted.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code, in a project you use a lot.
3. You get: Mod ideas, each with what it should show; nothing is built until you pick.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this guide: https://claude.dev/blog/getting-started-with-claude-code-mods/

Then use it to go through my last 20 sessions (this project's .jsonl logs under ~/.claude/projects/) and see how I use you day to day. Find three kinds of things worth turning into a mod:
1. Things I keep asking you, or asking you to do. Each mod in the guide answers one question, like how full the context is. Pick out the questions and requests I repeat across sessions, with counts and my exact words, then decide whether each fits a readout above the prompt, a pane beside the conversation, or a /command.
2. Commands that make me nervous: ones I stopped partway, rejected, or had you undo afterwards.
3. How I check your changes: asking you to list the files you changed, paste the diff, or explain a change.

For each idea, give it a name, quote my words, and write a few 'What it should show' lines in the style of the guide's token-weather prompt. If a status line or a setting can already do it, say so, and don't force it into a mod. Rank the ideas by how much they'd help me, and tell me how to keep a mod around once it's built.

Show me the ideas first. Don't build anything until I pick.
```

## Background

Have Opus 5.5 go through your last 20 Claude Code sessions, and it can tell you **which mod you most need** to build for yourself.

A mod is a small feature you add to Claude Code yourself, and you don't need to write any code. Describe what you want to see and Claude writes it **in one turn**. For example, showing how full your context is, or which files it just changed, right on your screen.

## Source

From [Copybook](https://copybook.page/t/mod-ideas-from-your-last-20-sessions): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2115549175110676753) on 28 Oct 2026, 359 saves as of 4 Nov 2026. For Claude Code.
