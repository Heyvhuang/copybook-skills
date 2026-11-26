# Coordinator skill for Claude Code and Codex

A job too big for one session, or several parallel agents overwriting each other on one repo: a brief with boundaries per lane.

## Steps

1. Copy the install command and the fleet prompt. With nothing installed, copy the prompt alone.
2. Run the install command in your repo, then send the fleet prompt with your goal to Claude Code.
3. You get: A coordinator that splits your goal into lanes, runs the workers and brings you only your decisions.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install command

```bash
npx skills@latest add https://copybook.page --skill coordinator --skill parallel-goal-fleet
```

## Fleet prompt

```text
Use the coordinator skill for this run. Goal: <your goal>. Define what done means and the check that proves it. You can merge PRs that pass review and checks. Ask me before deploys, migrations, payments or deleting data.
```

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

## Background

The install adds two skills that turn one session into a coordinator for a fleet of Claude, Codex and Gemini workers, running by default in [Orca](https://github.com/stablyai/orca), [T3 Code](https://github.com/pingdotgg/t3code) or [Paseo](https://paseo.sh) when the coordinator runs inside one of them and in [Herdr](https://herdr.dev) otherwise. The coordinator never writes code itself. It splits the work into lanes (one worker, one branch, one brief), picks a model and effort for each, checks what comes back, follows the project's gate and release process, and brings you only the decisions that are yours. For batch releases it tests the ready PRs together and pushes each batch once.

The fleet needs Claude Code and Codex CLI signed in, a git repo with the GitHub CLI, and Herdr 0.9.5 or later unless the coordinator runs inside Orca, T3 Code or Paseo and no lane needs Herdr (remote machines, interactive cloud gates). Gemini lanes are optional.

To run the lanes in Herdr wherever the coordinator runs, add `Use Herdr for the lanes.` to the prompt.

Workers run with full access by default: they start without permission prompts and can edit any file and run any command your user account can. Use it only on a machine and repositories where you accept that.

Without installing anything, the prompt below plans the same job in one Claude Code or Codex chat. Before anyone writes code, it reads the repo and turns your goal into lanes, each with a brief, the files it owns, what it must not touch and the check that proves it done, then lists the decisions that are yours.

Copybook ships with this coordinator. Its run of 25 to 26 Nov 2026 merged 10 changes after 16 review rounds, 3 of which sent the change back, at a median 28 minutes from the last commit to the merge. [The record](/coordinator#record) lists each change. The source is in [Heyvhuang/copybook-skills](https://github.com/Heyvhuang/copybook-skills/tree/main/standalone/coordinator), with a README on what each script does. The model choices it ships with are an example. Swap in the models your account offers and keep the same workflow.

## Source

From [Copybook](https://copybook.page/t/coordinator-skill-for-claude-code-and-codex), published on 16 Nov 2026. For Claude Code and Codex.
