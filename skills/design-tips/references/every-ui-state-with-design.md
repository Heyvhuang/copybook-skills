# Every UI state mocked up with /design

Before any app code changes: default, loading, empty, error and success on separate artboards, from a design reference repo.

## Steps

1. Copy the prompt and fill in the page and the requirements files.
2. Run /design in Claude Code and send the prompt with the reference repo link.
3. You get: Static mockups of each state on separate artboards, before any app code changes.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Create static UI mockups for [page or feature]. First, read [requirements files and relevant pages] in the current project, and follow its existing design system and components. Then browse the reference repository below, choose a suitable DESIGN.md, and read it in full. Use it to inform layout, typography, and visual styling that the project hasn’t already defined.

Use my project’s content and functionality, and make the primary actions and feedback clear. Alongside the default view, use separate artboards for any loading, empty, error, and success states relevant to this feature. Show me the design first. Don’t modify the application code yet.
```

## Background

Claude Design already has a strong eye for design. Now that it's built into Claude Code, I think this is going to be huge for frontend work. You can discuss a feature, have Claude Design create the UI mockups, and refine them all in the same development conversation.

One tip that works really well in Claude Design: attach a design reference repo as context when you write your prompt. With the same prompt and model, the difference with and without a reference is noticeable. I used voltagent/awesome-design-md, which had 116.2k stars when I posted. You don't have to use this one; other suitable design references work too. It's especially worth trying if you're a solo builder or on a small team.

Once you have access to /design in Claude Code, run the command and give it your requirements, this prompt, and the reference link: https://github.com/VoltAgent/awesome-design-md

## Source

From [Copybook](https://copybook.page/t/mock-up-every-ui-state-with-claude-design-in-claude-code): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2100341922749374950) on 16 Sep 2026, 386 saves as of 14 Oct 2026. For Claude Code.
