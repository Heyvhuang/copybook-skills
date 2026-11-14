# Project instructions from your sessions

Background you re-explain every new session: pulled from your last 20 sessions and written up as project instructions.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code, from the repo you work in.
3. You get: Project instructions you can paste straight in, built from the background you keep re-explaining.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this doc: https://code.claude.com/docs/en/claude-projects

Then check my last 20 sessions (the .jsonl files in this repo's folder under ~/.claude/projects/, only what I typed myself) and my recent commits against it, and find three kinds of things:
1. Work that keeps producing new tasks: bugs fixed again and again in the same code, or migrations and features that took several sessions to finish. Using the doc's 'When to use a project' section, pick the one most worth turning into a project and explain why. Based on how hard it is, tell me how to set Thread model and Thread effort. Then pick one small, real task and write it as a first message I can send straight into the project conversation.
2. Background I re-explain every time I start a new session: the target branch, how to run tests, how to name PRs, what to ask me about first. List how often I said each one, with my exact words. Following the five points in the doc's 'Write project instructions' section, write instructions for that project that I can paste straight into Project instructions. Mark anything that only applies to this repo, like build commands, for the repo's CLAUDE.md.
3. Things I keep correcting you on: anything I've said two or more times that isn't already in the instructions. Quote my exact words and turn each into one line I can send straight into the project conversation: 'Remember: …'

For every item, quote my words or the commit, and say what I'd no longer have to repeat or fix once it's in place.

Show me the list and the project instructions first. Don't change anything yet.
```

## Background

Anthropic shared its full guide to Claude Code Projects, and every Pro and Max user on the waitlist got in the same day. You can have Opus 5.5 follow it to go through your recent sessions and turn the background you re-explain every time you start a new session into a set of project instructions.

In a new project, every thread runs on Opus at high effort by default, which uses up your plan fastest. When you hit your limit, a thread doesn't end. It waits for the limit to reset and keeps going on its own. Without a word from you, it starts using your next usage window. So before you send a batch of work, check Thread model and Thread effort in the project settings, and give work that doesn't need Opus a smaller model or lower effort.

Send this prompt to Opus 5.5.

## Source

From [Copybook](https://copybook.page/t/write-claude-code-project-instructions-from-your-sessions): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2108635045527515434) on 9 Oct 2026, 490 saves as of 6 Nov 2026. For Claude Code.
