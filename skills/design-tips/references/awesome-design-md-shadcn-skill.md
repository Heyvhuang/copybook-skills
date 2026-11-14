# awesome-design-md and the shadcn skill

Pages still look like default shadcn: a Stripe or Linear style DESIGN.md, every component restyled, a design system page too.

## Steps

1. Copy the command that installs the shadcn skill, then the prompt.
2. Run the install, then send the prompt to Claude Code with your DESIGN.md's Raw link.
3. You get: A new Next.js project restyled to that DESIGN.md, ending with a design system page.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install the shadcn skill

```bash
npx skills add shadcn/ui
```

## Prompt

```text
Use the shadcn skill to start a new Next.js project, build a design system from this DESIGN.md, and finish with a design system page. Download the file into the project before you read it: <Raw link>
```

## Background

Does every page Claude Code builds still look like default shadcn? If you want the feel of Stripe or Linear, use these two together:

1. [**awesome-design-md**](https://github.com/VoltAgent/awesome-design-md). Pick the look you want here first. It's an open-source repo with 120K stars: DESIGN.md files written in the style of 74 products, including Stripe, Linear, Vercel and Notion. They're community-written interpretations of each brand's style. Colors, fonts, spacing, corner radius, shadows, plus what to do and what to avoid, are all in there for an agent to read.
2. **The official shadcn skill**. Hand it the one you picked. It starts a new project without touching your existing code, installs every component, and restyles the whole set to match that DESIGN.md. When it's done, you get a design system page: colors checked for contrast, every state of every component laid out, and do's and don'ts side by side.

Once it's installed, open the DESIGN.md you picked on GitHub, click Raw to copy its link, and send this to Claude Code.

Not happy with it? Pick another one and run it again. Once one fits, have Claude Code move the theme and components into your project, and make it your own from there.

## Source

From [Copybook](https://copybook.page/t/restyle-shadcn-from-a-design-md): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2109388573711512054) on 11 Oct 2026, 538 saves as of 8 Nov 2026. For Claude Code.
