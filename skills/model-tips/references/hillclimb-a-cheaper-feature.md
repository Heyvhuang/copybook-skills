# hillclimb: a cheaper Claude API feature

Your costliest Claude API feature: a test set first, then cheaper models and lower effort step by step while accuracy holds.

## Steps

1. Copy the prompt.
2. Send it to Claude Code in the project that calls the Claude API.
3. You get: Your costliest Claude API call, stepped down to cheaper models and effort while accuracy holds.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this guide: https://claude.dev/blog/automating-eval-design-and-hillclimbing/

Then list every place in this project that calls the Claude API, estimate which one costs the most, and let me pick one. Use build-eval from the claude-api skill to build a test set for it, and tell me roughly what it will cost in API fees before you run anything.

Once I've approved the test cases and the grading, run hillclimb on a new branch. The goal is to keep accuracy and cut cost. You can try lower effort and cheaper models, including Sonnet 5.5. The report should spell out three things:
1. What changed at each step, and how accuracy and cost per call moved.
2. Which cheaper setups got things wrong, and where.
3. Which sentences were removed from or added to the prompt.

Show me the report first. Don't merge anything until I confirm.
```

## Background

Anthropic published a guide where they had Claude tune an AI feature round by round, and the same job ended up costing about 1/5 as much, with higher accuracy. You can have Claude Code follow it and put any feature in your product that calls the Claude API through the same process, with two commands.

It takes three steps. First, cut the extra steps and contradictory rules from the prompt. Then step down to cheaper models and lower effort, one level at a time. Finally, add the rules that were missing. Every step is checked against a set of cases it has never seen, and any change that lowers accuracy gets rolled back. In the end, accuracy went from 78.6% to 90.5%. The new Sonnet 5.5 is close to Opus 5.5 in capability but cheaper and faster, so if you want to use it, measure it the same way first.

Send this prompt to Claude Code.

## Source

From [Copybook](https://copybook.page/t/hillclimb-a-claude-api-feature-to-cut-its-cost): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2104710877505089920) on 28 Sep 2026, 1.7K saves as of 26 Oct 2026. For Claude Code.
