# Pre-launch site check: 20 page items

A vibe-coded site about to go live: design, mobile, every state, real-user flows and launch details, fixed in one pass.

## Steps

1. Copy the prompt; when you need it, copy the line below too and add it at the end.
2. Send it to Opus 5.5 in Claude Code, in your site's project.
3. You get: 5 subagents check the 20 things, then the main session fixes everything in one pass.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Before you ship a vibe-coded site, have Opus 5.5 send out 5 subagents to check these 20 things, then fix them all in one pass:

Consistent design
- Write a DESIGN.md first, and make every color, font size, spacing and corner radius follow it
- Keep the palette restrained and the type hierarchy clear
- Make every button, card and input of the same kind look alike
- Too flat? Add emphasis. Too crowded? Cut
- Keep text readable on both dark and light backgrounds

On mobile
- No sideways scrolling, and nothing spilling off the screen
- Add a mobile menu
- Make buttons big enough to tap
- Keep the layout intact when the text is enlarged

Every state
- Give loading, empty and error states a proper screen
- Give every button feedback, with its own hover, pressed and disabled look
- Show form errors right where they happen, plus submitting, success and failure messages
- Add transitions to modals, dropdowns and tab switches

Use it like a real user
- Click through the core flows, like sign-up and checkout, from start to finish
- Find buttons that do nothing and links that are broken
- Make sure the whole thing works with just a keyboard

Before launch
- Say what you do in one line on the home page
- Give each page one main button you want people to click
- Give every page a title, a description and a favicon
- Delete all placeholder text
```

## Line to add at the end

```text
Send one subagent per group to check it without editing anything. Then fix everything yourself from their lists, so no two agents edit the same file. If a group is more complex, raise that subagent's effort. Show me the list of issues first, don't change anything until I confirm, and when you're done, give me before-and-after screenshots.
```

## Background

Before you ship a vibe-coded site, have Opus 5.5 send out 5 subagents to check these 20 things, then fix them all in one pass.

For effort, follow Anthropic's cost guide: medium is for well-scoped daily work. The default medium is enough for these 20 fixes; raise it for the harder ones. Thariq tested it: turning effort up mostly buys more verification and edge-case testing.

Send the whole list to Claude Code. When you need it, add the line at the end.

## Source

From [Copybook](https://copybook.page/t/check-20-things-before-shipping-a-vibe-coded-site): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2103977414711767244) on 26 Sep 2026, 6.9K saves as of 24 Oct 2026. For Claude Code.
