# Parallel PR checks with claude --cloud

PRs wait their turn for one machine's checks: each head runs your gate in its own cloud session and gets a PASS or FAIL comment.

## Steps

1. Copy the task template, then the start command.
2. In your repo, save the template as cloud-check.md and run the start command in your terminal.
3. You get: A PASS or FAIL comment on each PR, naming the head and the main commit it was checked against.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Task template

```text
Cloud check for PR #<N> at head <SHA>. Run this repo's gate on that exact commit and report. Change no file, push nothing, merge nothing.

1. Run: git fetch origin main pull/<N>/head. Check out <SHA> detached. If the fetched PR head is not <SHA>, post the comment in step 6 as FAIL with "head moved" and stop.
2. Run: git merge-base --is-ancestor origin/main <SHA>. If it fails, the head does not contain the latest main: post the comment as FAIL with "merge main first" and stop.
3. Install dependencies from the lockfile, then run the gate: <GATE COMMAND>
4. If a tool refuses to run as root (Postgres initdb does), create an unprivileged user, give it the checkout, and run the gate as that user with the same PATH and proxy variables.
5. If a step fails, run the steps after it by hand and report each one. If a step cannot run in this environment, say which and why, apart from failures in the code.
6. Post exactly one comment on PR #<N>, with the GitHub tools or gh api (gh pr and gh issue commands are refused in a cloud session). First line: "Cloud check (#<N> on <SHA>, main <the origin/main commit>): PASS" or the same line ending in FAIL. PASS only when every step ran and passed. Then one row per step with its result and time, the gate's exit code, and the first 60 lines of output from any failing step.
```

## Start command

```bash
pr=123
sha=$(gh pr view "$pr" --json headRefOid --jq .headRefOid)
claude --model haiku --permission-mode auto --cloud "$(sed -e "s/<N>/$pr/g" -e "s/<SHA>/$sha/g" cloud-check.md)"
```

## Every open PR at once

```bash
for pr in $(gh pr list --json number,isCrossRepository --jq '.[] | select(.isCrossRepository | not) | .number'); do
  sha=$(gh pr view "$pr" --json headRefOid --jq .headRefOid)
  claude --model haiku --permission-mode auto --cloud "$(sed -e "s/<N>/$pr/g" -e "s/<SHA>/$sha/g" cloud-check.md)"
done
```

## Read the result

```bash
gh pr view 123 --json comments --jq '.comments[].body | select(startswith("Cloud check"))'
```

## Background

Your gate script checks one PR at a time on your machine, and every other PR waits. `claude --cloud` starts a Claude Code session on a fresh cloud VM, so each open PR can have its own session: it checks out that exact head, runs your gate and posts the result as a PR comment. The sessions run side by side and your machine stays free for other work.

Before the first run you need Claude Code signed in on a plan with [cloud sessions](https://code.claude.com/docs/en/claude-code-on-the-web), gh signed in, the Claude GitHub App installed on the repo, and a cloud environment whose setup script installs what your gate needs.

Put your own gate in place of `<GATE COMMAND>`, the one command that must pass before you merge. A gate over about 30 minutes needs `BASH_DEFAULT_TIMEOUT_MS` raised in the environment. Leave `<N>` and `<SHA>` as they are: the start command fills them in.

The other flags go before `--cloud`, and the task follows `--cloud` directly. Each call prints a link to its session and returns in a few seconds, so the loop starts every check before the first one finishes. Run the commands in a terminal: `--cloud` refuses to start when its output is piped, as it is in an agent's shell tool. An agent can wrap the call in `script -q /dev/null`, which gives it a terminal.

A check counts only for the head its first line names, and only while that head contains the latest main. A new push, or a new commit on main, means a new check. The comment is not a GitHub status, so nothing stops a merge without one: read it before you merge.

The sessions run without asking before each command. Each session runs the PR's code with your GitHub access and the cloud environment's variables. Claude's GitHub proxy refuses branch deletions and tag pushes but lets a push update any branch, so protect main and require a review to merge: that is what stops a push or merge there. The loop skips PRs from forks; check one of those only after you have read its code. Sessions share your plan's usage limits, so ten at once spend ten checks' worth. A small model is enough to run a script and report; move up a size only if it misreads failures.

## Source

From [Copybook](https://copybook.page/t/parallel-pr-checks-with-claude-cloud-sessions), published on 24 Nov 2026. For Claude Code.
