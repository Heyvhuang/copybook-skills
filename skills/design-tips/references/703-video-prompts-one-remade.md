# 703 Opus 5.5 video prompts, one remade for you

A product video like the viral ones: the 5 of 703 prompts that fit your product, your pick remade as one HTML file.

## Steps

1. Copy the prompt.
2. Send it to Claude Code in your product's project.
3. You get: An HTML animation of your product, saved in the project; record the page to get a video.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read data/videos.json in https://github.com/yihui-dev/awesome-opus5-5-videos and use only the entries where prompt_partial is false. First read this project's README to understand the product, then pick the 5 entries from motion, explainer, 3d or interactive that would best introduce it, and list their original post links so I can watch them first. Once I choose, open that entry's prompt file, copy the block under Prompt, swap the subject for my product, keep the original pacing and frame structure, and render it as a single HTML file I can open directly, saved in this project.
```

## Background

The prompts behind 703 viral Opus 5.5 videos, all in one repo. Games, 3D scenes, explainers, motion graphics. 496 come with the full prompt: copy one into Claude Code and start making it. Every one of these videos is Opus 5.5 writing the animation as code, mostly Canvas, SVG, Three.js and shaders.

The 703 fall into four groups:

- 369 motion graphics
- 117 3D scenes
- 116 explainer animations
- 101 games and interactive pieces

Each one links to the original post, so you can watch the result before you pick. For the other 207, the creator shared only part of the prompt, and the file says so. Opus 5.5 gives you an HTML page; to get a video, record the page.

The repo: https://github.com/yihui-dev/awesome-opus5-5-videos

## Source

From [Copybook](https://copybook.page/t/remake-an-opus-5-5-video-prompt-for-your-product): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2113284251386851617) on 22 Oct 2026, 214 saves as of 29 Oct 2026. For Claude Code.
