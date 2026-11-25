# Dashboard redesign: 2 skills, 2 prompts

Dashboards that look AI-made on sight: ui-ux-pro-max and frontend-design in one redesign prompt, then a four-angle review.

## Steps

1. Copy both install blocks, then the redesign prompt and the parallel review prompt.
2. Run the installs in Claude Code, send the redesign prompt with your pages in {}, then the review.
3. You get: A redesigned page, checked from four angles in a real browser and fixed until it clears the bar.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install ui-ux-pro-max

```text
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@ui-ux-pro-max-skill
```

## Install frontend-design

```text
/plugin marketplace add anthropics/skills
/plugin install example-skills@anthropic-agent-skills
```

## Prompt: redesign

```text
Using /ui-ux-pro-max and /frontend-design, redesign {these new pages} for this project. Full creative freedom, but it must be visually striking and interactive, with motion and hidden easter eggs. First search for 2026 design trends and apply them.
```

## Prompt: parallel review

```text
Treat making {these pages} not look AI-made as one complete goal, not the next small fix. Split it into independent pieces and spawn a parallel agent for each, every agent with its own goal, deliverable, and pass bar. 1, does it look AI-made: the three templates, purple gradient, emoji icons. 2, detail: spacing, contrast 4.5:1, hover, cursor. 3, typography: a real point of view or default system fonts. 4, responsive plus keyboard focus and reduced motion. Run them at once, merge the results, resolve conflicts, render it in a real browser and check the screenshots, fix, pass again, and don't stop until it clears the bar.
```

## Background

I ask Claude Code or Codex for a dashboard and it comes out looking AI-made on sight. It goes wrong two ways. One is sameness: the same three templates on rotation. Two is sloppy detail: emoji for icons, buttons with no hover, AI purple gradient on everything.

The fix is two free skills and two prompts.

ui-ux-pro-max takes your requirements and returns a full design system: colors with hex, fonts with Google Fonts links and a pre-delivery checklist (no emoji as icons, cursor-pointer on anything clickable, 150-300ms hover transitions, 4.5:1 text contrast, no AI purple gradients).

frontend-design is Anthropic's own skill. It pulls the AI off its template defaults and names the three looks they all fall into. Once installed it picks a direction first, critiques its own plan, throws out anything it would do for any other project, then writes code.

Name both skills in the prompt or they won't fire. Swap `{}` for your pages.

Once it's built, split the review across parallel agents, each on one angle. One pass over everything stays shallow.

## Source

From [Copybook](https://copybook.page/t/stop-ai-looking-dashboards-with-two-design-skills): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2071928115052335364) on 30 Jun 2026, 1.3K saves as of 28 Jul 2026. For Claude Code and Codex.
