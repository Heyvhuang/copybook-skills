# 7 role prompts from idea to done

Still walking a senior AI through every step: tech lead, requirements, debugging, performance, frontend, backend, reviewer.

## Steps

1. Copy the prompt for the role you need.
2. Swap in your task where the brackets are and send it to Claude Code or Codex.
3. You get: The agent works in that role from start to finish instead of waiting for every step.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: tech lead

```text
I want to complete this: [TASK OR AGREED PLAN].

Pick up from the current state and keep going until [THE FINAL RESULT I CAN SEE, USE, OR CHECK].

Read the relevant files to understand the project. Look up information you need. Use the tools available to you.

Own the work from start to finish: understand the task, implement it, run it, check it, and fix what fails. Don’t stop after every step to ask whether you should continue.

For anything involving a page, use the available browser tools, including the built-in browser, to open it and actually use it. Click the buttons, fill in the forms, and complete the flows a user would follow. Fix any problems you find, then go back and check again.

For larger tasks, you can delegate independent parts to other available agents. You are responsible for bringing the results together and making sure the whole thing works.

Keep moving within the agreed scope. Ask me when you need a decision, additional access, or a change in scope.

At the end, show me the finished result. Tell me how to use it, what you checked, and what remains unfinished.
```

## Prompt: requirements lead

```text
I want to build [IDEA]. Here’s what I have so far: [NOTES, SCREENSHOTS, REFERENCES, OR PROJECT].

First, help me clarify who will use it, what problem it solves, where the user starts, and what they should get at the end.

Find the things I haven’t considered that could affect the result. Look up anything you can answer from the materials yourself. For decisions I need to make, ask the most important question first. Don’t dump a questionnaire on me.

Once we’ve worked through it, write a task brief I can hand directly to another engineer. They should understand what to do, what is out of scope, what constraints apply, and what “done” looks like without reading our conversation.

Flag anything we haven’t settled. Don’t turn your assumptions into confirmed requirements.

Leave implementation decisions to the engineer. Show me the brief for approval first.
```

## Prompt: debugging engineer

```text
Here’s the problem: [PROBLEM].

Steps I took: [STEPS].
Expected result: [RESULT].
Screenshots or errors: [MATERIALS].

First, follow my steps to reproduce it. Find the cause, then fix it. After the fix, repeat the same steps to confirm the problem is gone and that nearby functionality still works.

Tell me what caused it, what you changed, and how you verified the fix.

If you haven’t found the cause, keep investigating. If you can’t reproduce it from my steps, tell me what else you need. Don’t just hide the error.
```

## Prompt: performance engineer

```text
[PAGE OR FEATURE] is slow when [USAGE SCENARIO].

Find out where the time is going before changing anything. Don’t mistake simpler code for faster code.

Compare before and after using the same actions and data, and confirm the results are still correct. Tell me what changed and whether the changes introduced any other problems.

Don’t claim an improvement you haven’t measured.
```

## Prompt: frontend engineer

```text
Build [PAGE] using [REFERENCE IMAGE OR DESIGN REQUIREMENTS], keeping it consistent with the rest of the project.

Check more than the normal state. What happens with no data, while loading, when something fails, or when the text is unusually long? Does it still work on a phone?

Open the finished page and check the UI first: do the layout, fonts, colors, and spacing match the reference?

Then check the UX: can users find the buttons, fill in the forms easily, tell whether an action worked, and understand what to do next when something goes wrong?

Fix the problems you actually find and show me screenshots of the result.

Don’t assume the page is finished just because the code runs.
```

## Prompt: backend engineer

```text
Make [FEATURE] work all the way through.

When the user does [ACTION], they should get [RESULT]. Follow the project’s existing approach and connect the data that needs to be read, saved, or updated.

Actually try it. Does the normal flow succeed? What happens with invalid input, missing permissions, a failure halfway through, or a second click?

Confirm that what the page shows matches the data actually saved, and that existing features still work.

Tell me how to try it and which scenarios you tested.

Consider the developer experience (DX), too: how to call the API, what parameters to send, and how to investigate errors. Give the next person an example they can run directly.
```

## Prompt: reviewer

```text
Independently review this change: [CHANGE OR TASK LOCATION].
The original requirement was: [REQUIREMENT].

Don’t rely on the implementer’s summary of what they completed. Inspect the result yourself. Look for missed requirements, user actions that could cause failures, and changes that break previously working features.

Run whatever checks you can. For each issue, explain how it occurs, what impact it has, and where the problem is.

Report the issues before changing anything. If you find nothing worth fixing, say so. Don’t invent findings to fill a list.
```

## Background

Stop telling Claude Code or Codex “do this,” “write code” or “fix this bug.” You're still treating a senior AI like an intern who needs you to walk it through every step. Let it handle requirements and technical delivery, too.

These 7 prompts cover the key roles from idea to finished work. Copy, paste, and swap in your task.

Tech lead: end-to-end (E2E) delivery.

Requirements lead: figure out what to build before building it.

Debugging engineer: find out why it breaks, then fix it.

Performance engineer: find out where the time is going.

Frontend engineer: get the UI right and the UX working.

Backend engineer: make what happens behind the button actually work.

Reviewer: take a fresh look for problems that were missed. Give this one to a separate conversation or review agent.

## Source

From [Copybook](https://copybook.page/t/seven-prompts-for-senior-roles-from-idea-to-done): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2101355643882065971) on 19 Sep 2026, 1.1K saves as of 17 Oct 2026. For Claude Code and Codex.
