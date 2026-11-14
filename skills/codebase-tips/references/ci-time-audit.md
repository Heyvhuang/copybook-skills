# CI time audit: 150 runs, 9 checks

Code takes minutes, then each PR waits on CI: the 5 slowest jobs split into queue, setup and run, and the line to change per fix.

## Steps

1. Copy the prompt.
2. Send it to Claude Code or Codex in your repo.
3. You get: A report of where your CI time goes and what each fix would save, with nothing changed yet.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Audit this repo's CI:
1. Use gh to pull the last 150 CI runs and split each job's time into three parts: waiting in the queue for a machine, setup (checkout, installing dependencies, restoring the cache), and actually running the task. List the 5 slowest jobs and how many seconds each part takes.
2. Check these 9 things one by one: queueing on the default runners; slow lint; slow typechecking; tests that aren't sharded, or machines that are too small; every test file reloading the whole app; slow setup (cache misses, clones that aren't blobless, more parallel tasks than cores); jobs that don't run in parallel; every PR running the full test suite; no local checks before push.
3. For each problem, tell me how many seconds it costs now, which line of which file to change, and roughly how much it would save. List the ones that cost more money (new runners, bigger machines) or run fewer tests separately for me to decide.
Give me the report first. Don't change anything.
```

## Background

Claude Code and Codex can push dozens of PRs a day now. Writing the code takes minutes, and the rest of the time goes to waiting on CI, the checks and tests GitHub runs every time you push.

Nine changes took each PR's CI from up to 40 minutes down to 2. One step was having an agent pull the last 150 CI runs and split every job into three parts: waiting for a machine, setup, and actually running. That alone showed that half the test jobs weren't using the dependency cache at all, a bug that had been sitting there for a whole year.

Find out where your CI time goes first, then cut it down one piece at a time.

## Source

From [Copybook](https://copybook.page/t/audit-where-your-ci-time-goes): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2116636332344889391) on 31 Oct 2026, 1.2K saves as of 7 Nov 2026. For Claude Code and Codex.
