# TasteSkill v2 AI-look check

Pages that look AI-made at a glance: every tell at desktop, tablet and phone widths, FAIL before WARN, code untouched.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code or Codex, in your site's project.
3. You get: Every issue with its page, width and element, and the smallest fix, with no code changed.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Install taste-skill by following the README at https://github.com/Leonxlnx/taste-skill (the install name is design-taste-frontend), then read its skill file and scripts.

Then run this project locally and run inspect.mjs once each on the homepage and the main landing pages: inspect.mjs <local URL> --out .taste-skill/inspect/<page name>. Look at the screenshots it saves. Only check public-facing pages; skip dashboards and table pages. If Node 22 or Chrome is missing, tell me first.

For each issue, say which page, which width and which element (quote the report), and give the smallest fix. List FAIL items before WARN items.

Show me the list first. Don't change any code.
```

## Background

Highly recommend installing the new TasteSkill v2 in Claude Code or Codex, then having Opus 5.5 use it to give the site you vibe-coded a checkup. It came out two days ago. It opens your pages at desktop, tablet and phone widths and lists every AI-website tell they hit.

A few on the list you can check right away:

- A small all-caps line above the headline, like FEATURES
- Sections numbered 01 / 02 / 03
- Monospace body text and buttons, anywhere outside code
- Gradients, hairline borders, and shadows that sit there even without hover
- Cream backgrounds with terracotta, or any violet or indigo
- Fewer than 4 real pictures (SVG drawings don't count), or fewer than 8 things that move

New tests: blind judges gave pages built with it 7.7 and pages without it 7.8, nearly a tie. It still came first on 2 of the 3 briefs.

Send this to Opus 5.5 and it'll list every issue with the page and element it's on.

## Source

From [Copybook](https://copybook.page/t/check-your-vibe-coded-site-with-tasteskill-v2): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2110777729658581409) on 15 Oct 2026, 1.3K saves as of 12 Nov 2026. For Claude Code and Codex.
