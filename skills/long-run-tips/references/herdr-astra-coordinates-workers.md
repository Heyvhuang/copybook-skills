# Herdr: Astra coordinating Claude Code workers

Your Claude Code subscription, used from Codex: Astra runs up to 10 Opus workers through Herdr and hands them the heavy work.

## Steps

1. Copy the commands, then the herdr-desktop skill prompt, then the delegation workflow prompt.
2. Send them to Astra in Codex Desktop in order, and sign in to Claude Code when asked.
3. You get: Astra coordinates up to 10 Claude Code workers on Opus 5 through Herdr while you stay in Codex.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Commands

```bash
brew install herdr
npx skills add herdrdev/herdr --skill herdr -g
```

## Prompt: create the herdr-desktop skill

```text
Use the official Herdr docs and the Skill we just installed to create a coordination Skill called herdr-desktop. Keep the main conversation in Codex Desktop and use the Herdr CLI to manage background workers. Don’t require me to operate inside a Herdr terminal.

Start a separately named Herdr background session for this task, explicitly targeting the session and working directory. Check whether Claude Code CLI is installed. If it’s missing, install it. If authentication is needed, ask me to sign in.

After authentication, start one Opus 5 worker with reasoning effort explicitly set to xhigh. Give it a read-only task: inspect the project and explain its main entry points. Wait for it to finish and read back its actual response to confirm that task dispatch and result retrieval work. If the model or configuration is unavailable, tell me. Don’t silently substitute another.

Save the verified startup, dispatch, wait, and result-reading procedures in the Skill. Don’t modify project code during setup.
```

## Prompt: delegation workflow

```text
From now on, use this workflow:

You are the coordinator.

→ Handle project understanding, planning, task decomposition, integration, and final review.

→ When a task needs substantial implementation, debugging, test fixes, or multi-file changes, delegate it to Claude Code through herdr-desktop. For frontend work, have it refine the layout, visual details, and actual interactions.

Use Opus 5 for workers, with reasoning effort explicitly set to xhigh.

Briefly explain the division of work, then start independent tasks in parallel. Choose concurrency based on the task, machine load, and available allowance, up to 10 workers. You don’t need to use all 10.

Give each task a clear objective, working directory, necessary context, deliverable, and completion criteria. Use separate worktrees for parallel code changes. You own the integration.

Send follow-up feedback to the original worker whenever possible and continue its existing conversation. Don’t start over every round.

After a worker finishes, inspect the actual changes yourself and run the necessary checks after integration. For page changes, open the browser and check them. When independent review would help, have another worker review the work.

Don’t treat a task as finished just because another agent says it is.

At the end, show me the result, what was verified, and any unresolved issues. Release task resources that are no longer needed while preserving the work and records needed to continue.
```

## Background

You can use your Claude Code subscription from Codex. Astra can coordinate up to 10 Claude Code workers through Herdr, all running Opus 5. Hand off the heavy implementation work to Claude Code, including polishing your pages' layout, interactions and visual details. You keep working in Codex Desktop while Herdr manages Claude Code in the background.

**1. Install Herdr and its skill.** Open Codex Desktop, select Astra and ask it to run these two commands (Mac). Then have Astra confirm that both Codex and Claude Code can find the skill.

**2. Have Astra finish the setup.**

**3. Sign in to your Claude Code account.** Astra checks Claude Code's login status. If needed, authenticate with the account you use for your Claude Code subscription.

**4. Tell Astra how to delegate.**

A few tips:

1. Save the delegation instructions from step 4 in herdr-desktop too, so you can invoke the skill at the start of future tasks.
2. Pair the skill with a clear end goal, for example: "Finish this pricing page, keep it consistent with the existing site, and check the mobile layout and plan switching."
3. Each account still has its own usage limits. Adjust concurrency to the task and remaining allowance.
4. For long tasks, keep a record of progress, key decisions and next steps. When switching conversations, check the actual state before continuing.

It works the other way around too: Claude Code coordinates and Codex executes. Swap the roles and their settings.

## Source

From [Copybook](https://copybook.page/t/let-codex-astra-run-claude-code-workers-with-herdr): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2102382418984415420) on 22 Sep 2026, 1.1K saves as of 20 Oct 2026. Last check: works on Astra with Opus 5 workers, the day it was posted. For Claude Code and Codex.
