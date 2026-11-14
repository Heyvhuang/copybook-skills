# DESIGN.md from sites you like

Pages look AI-made since Opus hasn't seen what you like: 3-5 screenshots become a DESIGN.md; add taste-skill and Impeccable.

## Steps

1. Copy the prompt, then the commands that install the two skills.
2. Send the prompt to Claude Code with 3 to 5 screenshots, and run the commands in your project root.
3. You get: A DESIGN.md in your project root, imported into CLAUDE.md, that every page after follows.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
These are screenshots of sites I like. Don't touch any code yet:
1. For each one, tell me what it does well: layout, typography, color, spacing, white space.
2. List what they have in common, ask me which parts I want, and wait for my answer before going on.
3. Write a DESIGN.md in the project root based on what I pick, with real values: font sizes, weights, color codes, spacing, corner radius. Mark anything you can't tell from the screenshots as an estimate. Don't make it up. Keep it short, one screen at most.
4. Import DESIGN.md into the root CLAUDE.md with an @ line, not inside backticks. Then add a rule: after every page you finish, run /impeccable polish.
```

## Commands: install the two skills

```bash
npx skills add Leonxlnx/taste-skill --skill design-taste-frontend
npx impeccable install
```

## Background

Opus 5.5 can make top-tier web design, as long as you show it top-tier design first. If your pages still look AI-made at a glance, it probably hasn't seen the kind of design you like.

1. Pick 3 to 5 sites you like on Godly, Refero or One Page Love, drag the screenshots straight into Claude Code, and have it tell you what makes each one look good.
2. Turn the parts you pick into a DESIGN.md and import it into CLAUDE.md. Every page after that follows it.
3. Install two design skills:
   - taste-skill (90k+ stars): use it while building, so its pages stop looking like templates.
   - Impeccable (70k+ stars): finish each page with `/impeccable polish`. Run its install in your project root, then `/impeccable init` in Claude Code.

When you send the screenshots, add this prompt.

## Source

From [Copybook](https://copybook.page/t/show-opus-5-5-sites-you-like-before-it-designs): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2106474370860548341) on 3 Oct 2026, 1.4K saves as of 1 Nov 2026. For Claude Code.
