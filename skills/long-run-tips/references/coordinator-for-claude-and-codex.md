# Coordinator skill for Claude Code and Codex

A job too big for one agent session: a brief per lane with boundaries and a done check, then Claude and Codex lanes run in Herdr.

## Steps

1. Copy the prompt. For the fleet, copy the install command and the fleet prompt too.
2. Send the prompt with your goal to Claude Code or Codex in your repo.
3. You get: Briefs to approve before a lane starts; run them yourself or hand them to the coordinator in Herdr.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Before anyone writes code, plan this job as its coordinator. Goal: <what done means, and the check that proves it>.
1. Read the repo and restate the goal in one line.
2. Split the work into lanes that can run apart: one lane, one branch, one brief. Name the files each lane owns, so no two lanes edit the same file.
3. Write each lane's brief: its goal, the references it needs, what it must not touch, the base commit, the checks that prove it done, and the line it ends on when ready.
4. Say what you will check when each lane comes back, using this project's own tests and release steps.
5. List the decisions that are mine: anything that spends money, publishes, changes production or can't be undone.
Stop there and show me the briefs before any lane starts.
```

## Install command

```bash
npx skills@latest add https://copybook.page --skill coordinator --skill parallel-goal-fleet
```

## Fleet prompt

```text
You are the coordinator for this run. Goal: <what done means, and the check that proves it>. Use Herdr for the lanes. Run directory: ../<project>-fleet
```

## Background

The prompt works in one Claude Code or Codex chat with nothing installed. Before anyone writes code, it reads the repo and turns your goal into lanes, each with a brief, the files it owns, what it must not touch and the check that proves it done, then lists the decisions that are yours.

Two skills take the same plan further: they turn one session into a coordinator for a fleet of workers running in [Herdr](https://herdr.dev). The coordinator never writes code itself. It splits the work into lanes (one worker, one branch, one brief), picks a model and effort for each, checks what comes back, follows the project's gate and release process, and brings you only the decisions that are yours. For batch releases it tests the ready PRs together and pushes each batch once.

It was distilled from a three-day production run: about 160 PRs, 107 lane briefs, 118 hand-overs and 166 batch test runs. The source is in [Heyvhuang/copybook-skills](https://github.com/Heyvhuang/copybook-skills/tree/main/standalone/coordinator), with a README on what each script does. The model choices it ships with are an example from that run. Swap in the models your account offers and keep the same workflow.

The fleet needs Herdr 0.9.5 or later, Claude Code and Codex CLI signed in, and a git repo with the GitHub CLI.

Workers run with full access: they start without permission prompts and can edit any file and run any command your user account can. Use it only on a machine and repositories where you accept that.

## Source

From [Copybook](https://copybook.page/t/coordinator-skill-for-claude-code-and-codex), published on 16 Nov 2026. For Claude Code and Codex.
