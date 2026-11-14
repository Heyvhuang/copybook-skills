# The job worth a dynamic workflow

Which job is worth many agents: repo-wide checks, migrations or fix loops, planned on one directory with at most 10 agents.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code, in your project.
3. You get: Opus 5.5 picks the job most worth a dynamic workflow and plans it on one directory, then waits.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read these two docs:
https://code.claude.com/docs/en/workflows
https://platform.claude.com/docs/en/managed-agents/multiagent-orchestration
We'll run this as a dynamic workflow in Claude Code. From the second doc, only borrow how it splits and reviews the work.

Then go through this project's code, issues and recent commits, and find three kinds of work that fit a dynamic workflow:
1. Checks that need to cover the whole repo, like hunting for bugs or finding missing permission checks.
2. Migrations that touch many files, like moving from JavaScript to TypeScript.
3. Fixes you have to repeat until they pass, like a pile of type-check errors. Stop if two rounds in a row make no progress.
If the project doesn't have one of these, just say so. Don't force it.

Pick the one most worth doing and plan it on a single directory first, with no more than 10 agents for now. Give each piece of work one agent, and pair each piece with a second agent that reviews it and looks for what the first one missed. One agent failing must not fail the whole run; list anything that didn't get covered. If you pick a check, hand every issue it reports to another agent to pick apart, and only count the ones that hold up.

Show me in writing which one you picked, how many phases it has and how many agents it sends out. Don't start the workflow or change any files until I confirm.
```

## Background

Anthropic published the full official docs for dynamic workflows in Managed Agents. They planted 70 bugs in a 116K-line codebase. Across three runs, a single agent found 14, 15 and 27. A Managed Agents workflow ran three times and found 66 every time. You can have Opus 5.5 follow the docs to go through your project, pick the job most worth splitting across many agents, and run it as a dynamic workflow in Claude Code.

In a dynamic workflow, Claude writes the plan first, hands the work to many agents in phases, then combines the results. Managed Agents bills at API rates. Claude Code has dynamic workflows too, on every paid plan, and they count toward your plan's usage (on Pro, turn them on in /config first). A single run can send out up to 1,000 agents, and every one of them uses your limits, so start with one directory. /workflows shows how many tokens each agent has used, and you can stop the run at any time.

Send this prompt to Opus 5.5.

## Source

From [Copybook](https://copybook.page/t/pick-a-job-for-a-dynamic-workflow-in-claude-code): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2109237583704445140) on 11 Oct 2026, 670 saves as of 8 Nov 2026. For Claude Code.
