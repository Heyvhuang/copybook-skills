# 8 frontend reference sites for CLAUDE.md

Stuck on style, components, motion, a demo video or polish: 8 sites sorted by that, saved so Claude Code knows which to use.

## Steps

1. Copy the prompt under the eight sites.
2. Send it to Claude Code, and confirm the section it shows you before it writes it.
3. You get: A Frontend references section in ~/.claude/CLAUDE.md, so Claude Code knows when to use each site.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Add a section called Frontend references to ~/.claude/CLAUDE.md. Use it only when building a new page, when I say something looks bad, or when I name one of these sites. For small changes, just do the work:
- Style: pick a DESIGN.md that fits the product from styles.refero.design or VoltAgent/awesome-design-md on GitHub. Put it in the project root and add an @ import for it in the project's CLAUDE.md, so from then on everything follows its colors, typography and spacing.
- Components: check 21st.dev first, and call its MCP directly if it's installed. It has a free usage limit, so tell me what you're looking for before you call it. Then check component.gallery to see how mature design systems handle the same component.
- Motion: get a ready-made prompt or React code from kinetics.colorion.co.
- Demo videos: I'll pick reference videos on whatships.com and send them to you. Tile the frames into one image to see the pacing and transitions, then build it with HyperFrames (hyperframes.dev).
- If it still feels off when it's done: run it through polish and distill from Impeccable (impeccable.style).
The project's existing design system and components come first. Outside references only fill in what hasn't been decided yet. If an MCP, skill or command-line tool you need isn't installed, ask me whether to install it, and don't imitate it yourself. If you can't read a page's actual content, stop and ask me to paste it in. Don't fill anything in from memory. Every time you use an outside reference, tell me which one and what you changed. Show me what you'll add first, and don't write it until I confirm.
```

## Background

Opus 5.5 is already strong at frontend. Give it these 8 sites and it feels like cheating: 2,000+ design styles from real product sites, 12,000+ components and templates, and 153 motion effects that come with prompts. You can feed all of it straight to Opus.

Sorted by where you get stuck:

**No idea what style to go for**

- [Refero Styles](https://styles.refero.design): each product site's colors, typography and spacing, written up as a DESIGN.md for AI to read. Pick one, drop it into your project and have Opus follow it.
- [awesome-design-md](https://github.com/VoltAgent/awesome-design-md): a GitHub collection of DESIGN.md files for 74 brands, with 118k stars. Open source under MIT.

**Components look rough**

- [21st.dev](https://21st.dev): React and Tailwind components and templates. Connect its MCP and Claude Code can search it on its own. Copying and installing has a free usage limit.
- [Component Gallery](https://component.gallery): look up any component and see how 95 design systems handle it.

**Motion feels flat**

- [Kinetics](https://kinetics.colorion.co): spring-physics animations. For each one you can copy the CSS, the React, or a ready-made AI prompt.

**Need a demo video**

- [whatships](https://whatships.com): 2,000+ product launch videos. Pick one in your category, send it over, and have Opus tile its frames into one image and match it.
- [HyperFrames](https://hyperframes.dev): Claude Code writes the video in HTML, and HyperFrames renders it to MP4.

**Done, but something still feels off**

- [Impeccable](https://impeccable.style): a set of design commands you install in Claude Code. bolder, distill and polish turn "make it look better" into specific changes.

Send this to Claude Code so it remembers the list.

## Source

From [Copybook](https://copybook.page/t/give-opus-5-5-eight-frontend-reference-sites): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2104284941437784139) on 27 Sep 2026, 1.7K saves as of 25 Oct 2026. Last check: works on Opus 5.5, 19 Nov 2026. For Claude Code.
