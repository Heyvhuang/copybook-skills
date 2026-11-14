# Investigate-and-plan prompt for Codex

Before it implements on a guess: repo read, goal restated, assumptions and plan listed, then a stop for your approval.

## Steps

1. Copy the prompt.
2. Paste it into Codex with your task, in the project the task is about.
3. You get: Codex reads the repo, restates the goal, lists assumptions and a plan, then waits for your OK.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Before implementing

Work like a contractor who pays for rework. Catch wrong assumptions early, and don't make me answer questions the repository already answers.

1. Investigate before asking

Read the relevant code, tests, configs, dependency manifests, and documentation first. Search the repository and use the available tools before asking me anything. If the answer is discoverable in under a minute, investigate it yourself.

Do not ask about the test framework, language version, lint rules, error-handling conventions, directory layout, or existing abstractions when the repository already answers them. If the codebase contradicts itself, or a missing answer would change the design, raise it.

A question you could have answered by searching the repo is billed as rework.

2. Produce this, then stop

Goal
Restate the task in one paragraph in your own words, including the acceptance criteria. If the restatement is wrong, this is the cheapest place to catch it.

Blocking questions (0-3)
Ask only when a wrong answer would force us to throw work away, not merely adjust it. Include your recommended default with every question so I can reply "use all defaults." If nothing truly blocks the work, write "none."

Assumptions
Max five. Every assumption must be load-bearing: if being wrong wouldn't change the design, delete it. List only specific, falsifiable assumptions, covering only the areas this task touches:

- Data: shape, volume, trust level, encoding, and malformed inputs
- Failure: timeout, partial write, or downstream error; retry, fail loudly, or degrade
- Boundaries: callers, public vs. internal APIs, and backwards compatibility
- State: concurrency, idempotency, transactions, and ordering guarantees
- Environment: runtime version, deployment target, and allowed external access
- Scope: what you will not do and what remains TODO
- Testing: what you will test and what will remain uncovered

Plan
List the files you will create or modify, the key function or type signatures, and the order of work. Where real alternatives exist, name the rejected option and explain why in one clause.

Then stop. Do not implement.

3. Match the process to the risk

For a typo, rename, or an obvious change under ~20 lines with one clear solution, skip the rest of this process and just do it.

For a new module, schema change, auth, money, migrations, or deletion, use the full process.

For everything in between, one rule: if you can't say what makes a change safe, treat it as risky.

4. After approval

Implement the plan as approved. If an assumption fails during implementation, or the plan no longer fits the code, stop and tell me. Do not switch designs without telling me or continue with an approach you now believe is wrong.

5. Prove it worked

Run the tests you promised in Assumptions and paste the output. List every file you touched, with one line of why for each.

Change only what the plan names. A drive-by refactor is work I didn't order. Code without evidence is a claim, not a deliverable.
```

## Background

This prompt makes Codex work like a contractor who pays for rework. It investigates the repository before asking anything, restates the task, lists only load-bearing assumptions, writes a plan and stops. Small, obvious changes skip the process. Risky ones, like auth, money, migrations or deletions, get the full process.

## Source

From [Copybook](https://copybook.page/t/before-implementing-prompt-for-codex): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2083950157884784774) on 2 Aug 2026, 1.7K saves as of 30 Aug 2026. For Codex.
