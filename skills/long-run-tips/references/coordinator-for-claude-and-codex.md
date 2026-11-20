# Coordinator skill for Claude Code and Codex

For work that takes several agent sessions, a coordinator runs Claude and Codex in Herdr and checks changes before release.

## Steps

1. Copy the install command and the first prompt.
2. In a terminal, run the install, then send the prompt to Claude Code or Codex in your project.
3. You get: A coordinator runs Claude and Codex in Herdr and follows your project's checks and release process.

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

## First prompt

```text
You are the coordinator for this run. Goal: <what done means, and the check that proves it>. Use Herdr for the lanes. Run directory: ../<project>-fleet
```

## Background

Two skills turn one Claude Code or Codex session into a coordinator for a fleet of workers running in [Herdr](https://herdr.dev). The coordinator never writes code itself. It splits the work into lanes (one worker, one branch, one brief), picks a model and effort for each, checks what comes back, follows the project's gate and release process, and brings you only the decisions that are yours. For batch releases it tests the ready PRs together and pushes each batch once.

It was distilled from a three-day production run: about 160 PRs, 107 lane briefs, 118 hand-overs and 166 batch test runs. It needs Herdr 0.9.5 or later, Claude Code and Codex CLI signed in, and a git repo with the GitHub CLI. The source is in [Heyvhuang/copybook-skills](https://github.com/Heyvhuang/copybook-skills/tree/main/standalone/coordinator), with a README on what each script does.

The model choices it ships with are an example from that run. Swap in the models your account offers and keep the same workflow.

Workers run with full access: they start without permission prompts and can edit any file and run any command your user account can. Use it only on a machine and repositories where you accept that.

## Source

From [Copybook](https://copybook.page/t/coordinator-skill-for-claude-code-and-codex): [posted on X by @Voxyz_ai](undefined) on 16 Nov 2026. For Claude Code and Codex.
