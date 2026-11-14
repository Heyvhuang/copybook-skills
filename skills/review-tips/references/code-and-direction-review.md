# Code and direction review prompts

Code too complicated, or busy a long time with no clear direction: one finds what needn't exist, one rechecks the direction.

## Steps

1. Copy the code review prompt, the direction prompt, or both.
2. Paste the code review into Codex and the direction review into a chat that knows your background.
3. You get: A short list of changes worth making, or a ranked view of what matters most for your direction.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: code review

```text
Goal: [the problem this project or feature needs to solve]
Review scope: [directory, module, or current changes]

Review this implementation from first principles. Start with the goal and the constraints it must satisfy. Don’t assume the existing design is correct.

Which parts are unnecessarily complex? Which decisions rely on untested assumptions? What can be removed without losing required behavior, and what could be simplified afterward?

List up to 5 changes worth making. For each, include the code location, supporting evidence, what we would lose by changing or removing it, and how to verify the change. If you’re unsure whether anything still depends on it, flag that for confirmation.

First decide whether something needs to stay, then consider simplifying it. Discuss optimization only where there is an actual performance problem. Don’t invent changes just to fill a report.

For now, return the list only. Do not edit files. After I choose the items to proceed with, make only those changes in a separate worktree. Preserve security and compatibility requirements, verify the relevant tests and key user flows, and report anything still unverified. If nothing is worth changing, say so.
```

## Prompt: direction review

```text
My current situation: [work, active projects, main goals, and limits on time and resources]

Using this conversation, any past context you can actually access, and the material I provide, help me reassess my direction for the next 3–5 years.

Identify the 3–5 bottlenecks, risks, or opportunities that matter most to my progress, ranked by importance. Review what I’m spending time on: what is worth continuing, what should be paused, and what needs a small experiment first?

Support each judgment with specific evidence and separate facts from inferences. Don’t treat a one-off complaint as a lasting trait or pretend you’ve read conversations you cannot access.

Account for existing responsibilities, practical constraints, and opportunity costs. Explain what to do, what I would have to give up, and what results should make me reconsider.

Give me a first step for the next 30 days, the progress I should look for within 90 days, and criteria for judging whether the direction is working after a year.

Finish by choosing the single change most worth making now.

If you’re missing information that would materially change your advice, ask me only the most important question first. Wait for my answer before continuing.
```

## Background

Try having Astra take another look at code you've already written and plans you've already made. Start with one question:

“If you were starting over today with the same goal, what would you still need to keep?”

Code getting more complicated? Check what doesn't need to exist. Fill in the goal and scope first.

Been busy for a long time, but unsure where all that work is taking you? Use this in a conversation where you've already shared your background. If needed, fill in more context first:

## Source

From [Copybook](https://copybook.page/t/recheck-your-code-and-direction-from-first-principles): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2096282210148266004) on 5 Sep 2026, 531 saves as of 12 Sep 2026. For Codex.
