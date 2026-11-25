# State machine check: wrong transitions in red

Bugs between a feature's states: every state from UI to server on one HTML page, then a numbered list with file, line and why.

## Steps

1. Copy the prompt, then the /goal prompt.
2. Send the prompt to Claude Code or Codex in your repo, then the /goal prompt once the chart is drawn.
3. You get: An HTML chart with the wrong transitions numbered, then fixes with tests and a redrawn chart.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Treat the repo as read-only. Pick the feature with the most states and draw every state and transition it has, from the UI to the server, as a single HTML page that fits on one screen. Mark the transitions that shouldn't happen in red and number them. Underneath, list the file, the line and why each one is wrong. For any you can reproduce, write a small script and run it.
```

## /goal prompt

```text
/goal Fix every red transition on the state chart: each one has a test that failed before the fix and passes after it, the full test suite passes, and the redrawn chart has no red left, or every red one still there says why it needs my call.

→ Group the red ones first. Anything that touches the same file goes in one group. Send one subagent per group, each in its own worktree, all working in parallel
→ Each subagent first writes a test that reproduces the problem, then changes the code, and hands back the diff, the test command and its output
→ Check each group yourself. It doesn't count as fixed until you've seen the test output. Once everything is merged, run the full test suite again yourself

Don't push, don't release, and don't touch a single line of code unrelated to the red ones. If a group gets stuck, note it and move on to the next.

At the end, give me:
→ What got fixed, one line each on what changed
→ What didn't, where it's stuck and what you need from me
→ The redrawn chart, side by side with the original
```

## Background

One ordinary email signup form, drawn as a state machine, has 47 states and 12 bugs.

Have Claude Code or Codex draw the state machine hiding in your code too.

Once it's drawn, give it this /goal to send out subagents and fix the red ones in parallel.

## Source

From [Copybook](https://copybook.page/t/state-machine-check-for-wrong-transitions): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2118780460545532415) on 6 Nov 2026, 143 saves as of 13 Nov 2026. For Claude Code and Codex.
