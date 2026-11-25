# Vibe-coding cleanup: 5 Codex /goal prompts

Half your quota left at reset: dead code, duplicates and unneeded dependencies cut; scheduled tasks and old worktrees sorted.

## Steps

1. Copy one of the 5 /goal prompts: dead code, duplicates, dependencies, scheduled tasks or worktrees.
2. Paste it into Codex in your project before your quota resets.
3. You get: Tested changes on a new branch Codex doesn't push, or sorted lists and a cleanup script you review.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: dead code

```text
/goal Find the code in this repo that nothing uses anymore, and prove it's really unused before you delete it.

→ Functions, classes, components and exports that nothing calls
→ Files and directories that no entry point references
→ Branches that can never run, feature flags hard-coded off, and whole blocks of commented-out code

For each one, show the evidence first: the repo-wide search results, whether it's reachable from an entry point, and whether any test uses it. Anything you're unsure about (dynamic imports, calls by string name, public APIs) goes on a separate list and stays.

Delete on a new branch. Run the tests and the build after each batch, and if anything breaks, restore that batch. Don't push, and don't merge the branch.

At the end, give me:
→ How many files and lines you deleted
→ What you kept, and why
→ The test and build results
```

## Prompt: duplicate implementations

```text
/goal Find the places in this repo where the same thing is written several times, and merge each into one.

→ Functions and helpers with different names that do the same job
→ Near-identical components, request wrappers and validation logic
→ Code that was copy-pasted and then tweaked a little in each place

For each group, say which version you're keeping and why, then point every other call site at it. Only merge code that behaves exactly the same. List anything with small differences and show it to me at the end.

Work on a new branch and run the tests after each group. Don't push, and don't merge the branch.

At the end, give me:
→ How many groups you merged, and how many lines that saved
→ The ones with differences that you didn't merge
→ The test results
```

## Prompt: dependencies you don’t need

```text
/goal Check every dependency this project installs and remove the ones it doesn't need.

→ Installed but never used in the code
→ Used for one or two small features you could write yourself in a few dozen lines
→ Two libraries doing the same job

Delete the unused ones outright. For the ones you can write yourself, write the replacement and add tests first, then remove the dependency. Where two do the same job, keep one and move every call over to it. List any big dependency you're unsure about and let me decide at the end.

Work on a new branch and run the tests and the build after each change. Don't push, and don't merge the branch.

At the end, give me:
→ Which dependencies you removed, and how much smaller the install got
→ What you wrote yourself, and how many lines each
→ What you kept, and why
```

## Prompt: scheduled tasks

```text
/goal List every scheduled task I've set up: cron and launchd jobs on this machine, scheduled workflows in CI, and scripts in the project that run on a timer.

For each one, write down:
→ What it does and how often it runs
→ How many times it ran in the last month, and how many times it failed
→ Whether anyone actually uses what it produces
→ Whether it overlaps with another task

Sort them into "keep", "change how often" and "turn off". Don't change any settings. At the end, give me the list and how to turn each one off.
```

## Prompt: old sessions and worktrees

```text
/goal Do a read-only scan of ~/.codex and this project's worktrees. Look at sizes only and don't open any file contents.

→ Old session logs, with sizes totaled by month
→ Worktrees that are already merged or no longer in use, and whether their branches have unpushed changes
→ Build output and caches that regenerate on their own after you delete them

Sort them into "safe to remove" and "let me review first". Any worktree with unpushed changes always goes under "let me review first". Don't delete anything. Write a cleanup script for the "safe to remove" group only, and I'll review it before I run it. In the script, remove worktrees with git worktree remove.

At the end, tell me how much space this would free up in total.
```

## Background

If you still have half your quota left when it resets, you’re throwing away days of Astra and Sol.

Use `/goal` to squeeze every last bit out of it and clean out what months of vibe coding piled up: dead code nothing calls, the same logic written several times over, dependencies you don’t need, old sessions and worktrees hogging your disk, or even scheduled tasks that have been running for nothing.

## Source

From [Copybook](https://copybook.page/t/five-goal-prompts-to-clean-up-after-vibe-coding): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2118357672106029272) on 5 Nov 2026, 3.9K saves as of 12 Nov 2026. For Codex.
