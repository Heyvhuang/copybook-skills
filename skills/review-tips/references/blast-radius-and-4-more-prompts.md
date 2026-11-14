# Blast radius, red team and 3 more prompts

'Fix this bug' hands you defaults: what your diff touches, an end-to-end goal, a red-teamed plan, a user walk, a thinking budget.

## Steps

1. Copy the one of the five prompts that fits your task.
2. Fill in the brackets and send it to Codex or Claude Code in your project.
3. You get: The model uses its own judgment on the task instead of handing you defaults.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: blast radius

```text
i'm about to change [file/module]. don't write any code yet.
use codebase memory to map the repo into one graph, read my uncommitted diff, map every change to the functions it touches, and return: each function, its downstream blast radius, and a risk level.
once it's ranked by risk, act at three levels of authority:
L1 low risk, just do it: local, covered by tests.
L2 medium risk, isolate it: one revertible commit per change, with before/after.
L3 high risk, propose only: anything touching an interface, data, or a shared dependency, give me the plan, don't touch it.
then tell me where it's most likely to break before i merge.
```

## Prompt: parallel goal

```text
i have a few independent tasks to push at once: [task A], [task B], [task C].
for these, set yourself an end-to-end goal: take the whole plan to done, until architecture, implementation, tests, review and the final result all clear the bar. split the goal into independent parts, spawn as many parallel agents as it takes to finish faster, and give each agent its own goal with its expected deliverable, verification and done criteria. schedule them in parallel, keep tracking progress, synthesize what comes back, resolve conflicts, keep implementing, verify live after every important step, review when it matters, commit when it's ready, and give a final summary. verification has to cover the real end-to-end path, including browser/computer use, clicks, keyboard, and whatever else it takes. don't stop after partial progress unless you're blocked by missing credentials, destructive ambiguity, or conflicting requirements.
```

## Prompt: red team your plan

```text
before you write the first line of this plan, be my red team. your judgment is the primary weapon. treat my plan as a hypothesis to attack.
first play my plan back in full to confirm you got it right, then open fire.
assume it already failed six months from now and work backward to the three most likely reasons: which assumption i took as true without checking, which failure case i never considered, where i got optimistic to save effort, and whether there's a simpler way to the same goal.
for each, give the trigger, the cost, and one minimal experiment that could falsify it early.
end with a verdict: ship it / run which experiment first then ship / tear it down.
```

## Prompt: real user walk

```text
open [url] with browser/computer control and actually walk each of these real user paths end to end, no reading the code and guessing: [sign up], [checkout], [change settings].
at every step really click, type, wait, screenshot, and log anything that would trip up someone opening it for the first time: slow loads, errors, copy that makes no sense, buttons you can't find, unclear state, data lost on back.
output a report ranked by severity, each with repro steps + the root cause you judge + a suggested fix, then fix it yourself and walk it again to confirm no regression.
treat me as someone opening it for the first time who's never read the code.
```

## Prompt: thinking budget

```text
don't rush to solve. first set the budget: is this a quick lookup, medium reasoning, or deep thinking that may need an experiment to verify, and say why you judged it that way.
before you start, lay it out: what information you're missing, where i wasn't clear, and the single most fragile hidden assumption here.
once i confirm, solve at the level you set; on the deep ones, give intermediate results step by step so i can stop you anytime.
don't paper over a two-hour problem with a two-second answer, and don't write an essay for a one-lookup question.
```

## Background

Don't open with "build this feature", "fix this bug" or "refactor this". Feed it like that every day and it hands you defaults every day, then you nitpick it line by line. It can judge, and you only let it type.

Also drop old lines like "you are an expert", "think step by step" and "don't make things up". The new model plans, checks itself and re-reads on its own, and those lines only drag it back to old behavior.

## Source

From [Copybook](https://copybook.page/t/five-prompts-that-let-the-model-judge): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2074894179000311845) on 8 Jul 2026, 1.4K saves as of 5 Aug 2026. For Claude Code and Codex.
