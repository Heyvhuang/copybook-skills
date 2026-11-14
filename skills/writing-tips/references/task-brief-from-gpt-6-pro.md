# Engineer's task brief from GPT-6 Pro

Before a task goes to Codex: GPT-6 Pro finds what you haven't thought through and writes a brief an engineer could take.

## Steps

1. Copy the prompt and fill in what you want to do.
2. Give GPT-6 Pro your ideas, screenshots, relevant code and constraints, then paste it.
3. You get: GPT-6 Pro asks what you haven't settled, then writes a self-contained task brief for Codex.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
I want to do this: [DESCRIBE WHAT YOU WANT TO DO IN ONE SENTENCE].

Assume an engineer who can solve problems independently will take over, but they haven’t seen our conversation. Using the materials I’ve provided, first help me clarify what problem I’m trying to solve, whether any requirements conflict, and what missing information could affect the approach. Ask me about decisions I need to make. Don’t turn assumptions into confirmed requirements.

Once you have enough information, write a task brief I can send directly to that engineer. Include the necessary background, deliverables, and any project location, starting branch, and change boundaries already established in the materials. Define specific checks and what counts as passing. If the materials don’t establish the files, paths, or test commands, mark those as needing confirmation when the engineer takes over. Don’t invent them.

Make the brief understandable without reading our conversation. Leave implementation details to the engineer’s judgment. Don’t prescribe every step or expand the scope. At the end, output only the task brief.
```

## Background

Before you start coding, have GPT-6 Pro point out what you haven't thought through. Don't ask Pro to "optimize my prompt". Ask it to "write a task brief I can hand directly to an engineer".

Asking a model to write a prompt for AI may lead it to underestimate the agent doing the work and spell out every step. Framing it as an assignment for an engineer tells it to write for someone who can make independent decisions but lacks the project context.

Read the brief and make sure it reflects what you meant. Then give it to Codex, along with the materials it needs, and let it get to work.

## Source

From [Copybook](https://copybook.page/t/ask-gpt-6-pro-for-an-engineer-task-brief): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2097369374453571975) on 8 Sep 2026, 1.5K saves as of 15 Sep 2026. Last check: works on GPT-6 Pro, the day it was posted. For Codex.
