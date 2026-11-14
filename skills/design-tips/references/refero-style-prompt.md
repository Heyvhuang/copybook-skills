# Refero style prompt: design plan before code

Pages that could fit any startup: a Refero style as reference, a design plan you approve, then DESIGN.md and screenshot checks.

## Steps

1. Copy the prompt and put your Refero style URL in it.
2. Send it to Claude Code or Codex in your project.
3. You get: A design plan to approve, then DESIGN.md, the build, and screenshots checked against it.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Use <REFERO_STYLE_URL> as the design reference for this project. Do not copy its brand, wording, or full-page layout.

Before writing code, give me a design plan:

→ the page’s audience and single goal
→ 4 to 6 color tokens
→ display and body typefaces
→ the layout concept and an ASCII wireframe
→ one signature element
→ what you kept from the reference, what you changed, and why

Redo it if the same plan would work unchanged for another startup.

After I approve it, save the final plan to DESIGN.md, then implement it. When finished, capture desktop and mobile screenshots. Check color, typography, spacing, and layout against DESIGN.md.
```

## Background

2,000+ complete design systems for Claude Code and Codex, all in one site: [Refero Styles](https://styles.refero.design). Open one and you get:

- DESIGN.md
- Tailwind v4
- CSS variables
- design tokens
- type, color, spacing, components, and dos and don'ts

Pick a Refero style close to your product. Anthropic's frontend-design skill adds a useful rule before code: choose an aesthetic direction, then reject any plan that could work unchanged for another startup.

## Source

From [Copybook](https://copybook.page/t/refero-style-prompt-with-a-design-plan-first): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2087178102505926740) on 11 Aug 2026, 141 saves as of 8 Sep 2026. For Claude Code and Codex.
