# good-css: CSS check for a vibe-coded site

Hover stuck on phones, forms red before anyone types: 47 modern CSS techniques and a list of what your styles get wrong.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code or Codex, in your site's project.
3. You get: good-css installed, and a ranked list of CSS issues in your styles, with no code changed.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Install good-css following the README at https://github.com/vojtaholik/good-css, then read its SKILL.md and the reference files you need.

Then use it to check this project's existing styles (CSS files and Tailwind classes in components both count) for three kinds of problems:
1. Things that break on phones: hover states that stick after a tap, and tap areas smaller than 44px.
2. Things CSS can do that were built with scripts or a pile of breakpoints: dropdown menus, popovers, accordions, and layouts stitched together from several breakpoints.
3. Details: in-page links that land under the sticky nav, forms that open already full of red borders, ticking numbers that shift the text next to them, and focus rings that were removed.

Report only these three kinds and skip any the project doesn't have. Components that come from a component library don't count. For each issue, quote the original code, explain what goes wrong on which device, and suggest the smallest change, ranked by impact. Also note which browsers don't support a technique you use yet.

Show me the list of issues first. Don't change any code.
```

## Background

Highly recommend installing [good-css](https://github.com/vojtaholik/good-css) in Claude Code or Codex, then having Opus 5.5 use it to check the site you vibe-coded. It holds 47 modern CSS techniques, and with it installed, your agent tries them first whenever it writes styles.

A few on the list you can check right away:

- Tap a button on your phone and the hover effect gets stuck. Put hover styles inside `(hover: hover) and (pointer: fine)` so only devices with a mouse get them.
- Open a form and every required field is already red. Switch to `:user-invalid` so a field turns red only after someone edits it or hits submit.
- Click an in-page link and the heading lands under your sticky nav. Give `html` a `scroll-padding` as tall as the nav, and the jump lands just below it.
- A price or timer ticks and the text next to it shifts. Add `tabular-nums` so every digit is the same width.
- An icon button is too small to tap. Use a pseudo-element to grow the tap area to 44px without changing how it looks.

Send this prompt to Opus 5.5.

## Source

From [Copybook](https://copybook.page/t/check-your-vibe-coded-site-with-good-css): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2108875199164871053) on 10 Oct 2026, 1.5K saves as of 7 Nov 2026. For Claude Code and Codex.
