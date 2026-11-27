# Codex: GPT-6.1 Sol main, medium subagents, Astra review

Astra eats a week's quota: 6.1 Sol on high as orchestrator, on medium for 3 subagents, Astra only to review big changes.

## Steps

1. Copy the prompt.
2. Send it to Codex in your project.
3. You get: 6.1 Sol leads on high, three subagents run on medium, and Astra only reviews big changes.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up my Codex to match this tree:
→ Main session: default to `gpt-6.1-sol` on high reasoning effort. It breaks down tasks, delegates, integrates, and verifies. Handle simple tasks directly; don't delegate them.
→ Three project-level custom agents, each with model `gpt-6.1-sol` and model_reasoning_effort `medium`: explorer reads code, worker edits code and runs tests, researcher looks up docs. Reuse fitting ones if they exist, and create only the missing ones.
→ reviewer: also a project-level custom agent, with model `gpt-6-astra` and model_reasoning_effort `xhigh`. Call it only before a big change ships. It reports problems and doesn't edit code.
→ Put the delegation rule in AGENTS.md: when spawning a subagent, set `fork_turns` to `"none"` or pass only the last few turns. If `fork_turns` is omitted or set to `"all"`, the subagent inherits the main session's model and effort and can't override them, and the tree stops working.

Before changing anything, check:
→ Roles other than the reviewer that still use `gpt-6-astra` or an older Sol (like `gpt-6-sol` or `gpt-5.6-sol`). List them.
→ Roles moving to 6.1 Sol with effort set to `none` or `minimal`: change them to `low` (6.1 Sol supports neither), then compare the results.
→ Model assignments written only in AGENTS.md: check recent subagent session logs to confirm which model each role actually ran.

If you can't select a model in the tree, stop and ask me. Show me the changes first, and wait for my OK before writing anything.
```

## Background

OpenAI launched GPT-6.1 Sol, and for coding it can replace Astra outright at 1/5 the price. OpenAI also announced the same day that 20x Pro is being cut to 10x. I honestly don't dare use Astra anymore. Switch to 6.1 Sol before Astra eats your whole week.

6.1 Sol is already in Codex. Set it up like this: 6.1 Sol runs the root orchestrator and all three subagents, and Astra only does an independent review before a big change ships. Reasoning effort comes from OpenAI's DeepSWE chart: 6.1 Sol scores highest on high, and going up to xhigh or max actually scores lower, so the orchestrator runs on high. Medium scores only about 2 points lower than high and costs over 30% less per task, so the subagents run on medium.

Send this prompt to Codex.

## Source

From [Copybook](https://copybook.page/t/switch-codex-to-gpt-6-1-sol-with-an-astra-reviewer): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2105012597796057438) on 29 Sep 2026, 1.1K saves as of 27 Oct 2026. For Codex.
