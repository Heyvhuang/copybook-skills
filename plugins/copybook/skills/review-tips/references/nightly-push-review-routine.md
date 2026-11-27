# Nightly routine reviewing the day's pushes

Today's pushes to main, reviewed while you sleep: a draft PR per bug with a test that fails first, in the cloud, laptop closed.

## Steps

1. Copy the routine prompt.
2. In the repo you want checked, type /schedule in Claude Code and paste it.
3. You get: Draft PRs for the bugs it can prove, and a handoff note to read in the morning.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Run every day at 1:07 AM on Opus 5.5 with no connectors attached. Save the instructions below as the prompt, word for word.

First install dependencies and run the full test suite. Note which tests were already failing. If the tests can't run, or there are none, write down what's missing and stop.

Then look at the commits pushed to the default branch in the last 24 hours. If there are none, end the run. Skip any bug that a claude/ branch is already fixing.

Only look for real bugs. Ignore style and naming. To call something a bug, you must be able to point to what a comment, the docs, a type, or an existing test says. If a change in behavior looks intentional, just note it. Don't fix it.

For each bug, write a failing test first. Make sure the failure message points to that bug, and rule out a broken test or an environment problem. Then change the code until the test passes, touching only what you must, and run the full suite again. Open one draft PR per bug with your evidence, three at most.

Never delete, change, or skip existing tests. Push only to claude/ branches. Don't merge anything.

Finish with a handoff note: the commits you checked, the PRs you opened, and anything that looked like a bug but couldn't be proven.
```

## Background

Opus 5.5 is really good at automation, so before you go to bed, put it on the night shift too.

Set up a Claude Code routine and every night it goes back over the code you pushed to main that day. For each bug it finds, it opens a draft PR with a test that fails first and only passes after the fix. It runs in the cloud, so it keeps going with your laptop closed.

Once it's saved, do a test run with `/schedule run`. In the morning, open that run on the Routines page on the web and read the handoff note. Green in the run list only means it finished.

## Source

From [Copybook](https://copybook.page/t/review-the-days-pushes-with-a-nightly-claude-code-routine): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2105434062676431306) on 30 Sep 2026, 387 saves as of 28 Oct 2026. For Claude Code.
