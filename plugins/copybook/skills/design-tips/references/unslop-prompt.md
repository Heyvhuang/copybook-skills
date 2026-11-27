# Unslop prompt for pages that look AI-made

Pages that scream AI at first glance: every slop sign listed, a five-line direction for your OK, then fixes pass by pass.

## Steps

1. Copy the prompt, or the install command for the full skill.
2. In your project, send the prompt to Claude Code, or run the install in a terminal.
3. You get: The page without its AI look, with features, content and section order untouched.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Take the AI look out of this page. Don't touch features, content or section order. Only change the craft.

1. Audit: list every sign of AI slop and where it is. Start with purple gradients, glows, gradient text, emoji labels, "New ✨" badges, all-caps labels with wide letter spacing, animations that never stop, spacing that's bigger here and smaller there.

2. Direction: before you change anything, write a five-line direction and wait for my OK:
Product: one sentence on what it does and who it's for
Character: two or three concrete words, not clean, modern, sleek, minimal or premium
World: the setting or material this product naturally belongs to
Focus: only one or two spots get rich color and detail; everything else stays quiet
Signature: one small detail only this product would have

3. Passes: once I confirm, fix it in this order, one thing per pass, finishing the whole page before starting the next: spacing, color, icons, copy, type, layout, details, visuals, motion.
- Spacing: everything on a 4px grid, things of the same kind the same size
- Color: one slightly tinted neutral scale, three text levels, one accent color. No hue gradients, glows or colored shadows
- Icons: swap emoji for one set of line icons, same size and stroke width
- Copy: no exclamation marks, no "Welcome back!" headings, no words like seamless or supercharge
- Type: font weights 400 and 500 only
- Motion: remove pointless looping animations, transition-all and hover scale-ups

4. Check: swap in another company's product name. If the page still makes sense, it isn't distinctive enough yet. Push World and Signature further.
```

## Install command

```bash
npx skills add heydamir/unslop
```

## Background

A dashboard unslop video just hit 1.5M+ views. A designer did it by hand. Now AI can do the same for Claude Code's UIs: audit like a lead designer, fix pass by pass until nobody can tell AI made it.

If that's still not enough, install the full skill. It'll even make the before/after video for you:

## Source

From [Copybook](https://copybook.page/t/unslop-prompt-for-pages-that-look-ai-made): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2116515537496993856) on 31 Oct 2026, 240 saves as of 7 Nov 2026. For Claude Code.
