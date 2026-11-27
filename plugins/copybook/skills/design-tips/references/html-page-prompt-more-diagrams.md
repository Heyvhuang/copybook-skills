# HTML page prompt: less text, more diagrams

Claude Code's HTML pages are a wall of text: diagrams built to fit, real photos and data, the screen checked before publishing.

## Steps

1. Copy the prompt.
2. Send it to Claude Code with your ask for an HTML page.
3. You get: An HTML page you understand at a glance, its extra detail in tooltips and toggles.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
The goal is an artifact that makes you think "nice" the moment you open it, and that you understand at a glance.

Keep the text light and use more diagrams. AI tends to explain everything in prose, but lots of text is hard to read. Don't settle for stock parts like text placed in cards; build each diagram from scratch to fit its content. In exchange for less text, put the extra detail in tooltips and toggles. Get the information across, while keeping the UI/UX simple and easy to follow. If needed, group things to keep cognitive load down (3–5 items at a time is right for people).

Go get the materials yourself. For people, photos (round avatars, etc.); for services, real screenshots with marks or labels added; for numbers, real data from primary sources. Add links too. Pages built only from shapes and text all look the same. Numbers you can't verify stay out of the body, and are marked "unverified" in a note.

Before publishing, look at the actual screen and fix anything broken or hard to read.
```

## Background

"Every HTML page Claude Code makes me is a wall of text. Two glances and I want to close it."

AI makes these 4 mistakes every time:

1. Explains everything in paragraphs
2. Just stuffs text into card after card
3. Lines up dozens of things in a row
4. Ask it for a diagram or a shorter version, and all the information gets cut

The prompt has one line for each.

## Source

From [Copybook](https://copybook.page/t/make-html-pages-you-get-at-a-glance): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2125333638136938823) on 24 Nov 2026, 729 saves as of 25 Nov 2026. For Claude Code.
