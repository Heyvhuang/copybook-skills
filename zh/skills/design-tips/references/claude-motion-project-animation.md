# Project animation by the Claude Motion guide

What in your project is worth animating: storyboards by Anthropic's Motion guide, your pick built in HyperFrames.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code, in your project.
3. You get: Storyboards of what's worth animating; the one you pick becomes a 1080p MP4 made with HyperFrames.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this guide: https://support.claude.com/en/articles/17454997-get-started-with-claude-motion

Then follow Claude Motion's approach and go through this project's README, landing page, onboarding flow, recent release notes and any charts in it. Find three kinds of things worth turning into an animation:
1. A flow one screenshot can't explain, like the steps a new user takes to get started.
2. A change that falls flat as a bare number, like the new version's speed compared with the old one.
3. The new feature from the latest release that's most worth showing.
If the project doesn't have one of these, just say so. Don't force it.

For each idea, follow the guide: say who it's for, where it will play and how long it runs, then write a storyboard with how many seconds each scene lasts and which words, numbers and screenshots appear on screen. Use only real content from the project. Rank the ideas by how useful they'd be to me.

After I pick one, build it as a code animation with HyperFrames (install it first if it isn't installed), with all the text, numbers and timings kept in one place. Later, when I say 'slow down the second scene' or 'change this number to 18%', change only that one thing. Render a draft first, grab one frame per second and look through them, fix the problems, then export a 1080p MP4.

Show me the storyboards first. Don't build anything until I pick.
```

## Background

Anthropic published its full [getting-started guide](https://support.claude.com/en/articles/17454997-get-started-with-claude-motion) for Claude Motion. Because every animation is code, you can change one word, one number or the length of one scene, and everything else stays untouched. You can have Opus 5.5 follow its approach to go through your project, find the things most worth animating, and build them in Claude Code.

Motion doesn't use a video model. It animates only your text, charts, shapes and images. In Claude Code, Opus 5.5 writes the same kind of code with [HyperFrames](https://hyperframes.dev), and it even renders the MP4 on its own. The guide suggests you say who it's for, where it will play and roughly how long it should run, and attach your own report, data or screenshots.

Send this prompt to Opus 5.5.

## Source

From [Copybook](https://copybook.page/t/animate-your-project-the-claude-motion-way): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2108543002830360775) on 9 Oct 2026, 1.4K saves as of 7 Nov 2026. For Claude Code.
