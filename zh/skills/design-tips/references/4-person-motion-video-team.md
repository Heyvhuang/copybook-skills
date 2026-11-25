# 4-person motion video team

A motion video in Claude Code: breakdown, storyboard and review subagents around a main session on HyperFrames; you direct.

## Steps

1. Copy the prompt.
2. Send it to Claude Code.
3. You get: A motion video team in ~/.claude/agents.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up a motion video team in ~/.claude/agents that I can use for every product video. If HyperFrames isn't installed, install it first following hyperframes.dev.

1. reference-breaker (effort: medium): use ffmpeg to pull one frame per second from the reference video I give you, tile them into one image to look at, and break down the pacing, type, colors and transitions into a shot list plus HyperFrames starter code. Break down only; don't build.
2. storyboarder (effort: medium): from the shot list, make 3 storyboard options with a few key frames each, tiled into one image for me to pick from. After I pick one, use npx hyperframes snapshot to make one still per scene.
3. The main session builds the video: write each scene in HyperFrames, and if there's no music, synthesize a track with Python. Render a draft with npx hyperframes render --quality draft first, and render the final only after I approve.
4. film-reviewer (effort: high): use ffmpeg to pull one frame per second and review it second by second. List problems as P0, P1 and P2 (P0 must be fixed). Review only; don't edit. The main session fixes every P0 before showing me.

Every subagent needs Bash and must be able to view images. Before starting, ask me for the reference video, logo, colors, fonts and product screenshots. Show me the contents of the files you'll create, then explain the flow in words a 10-year-old could follow. Don't write anything until I confirm.
```

## Background

Everyone's posting motion videos made with Opus 5.5. To make one yourself in Claude Code, give it a 4-person team, with each subagent owning one part end to end:

- Breakdown (medium): tile frames from a reference video you love into one image, pull out its pacing, type and transitions, and write them up as HyperFrames code. Find references on [whatships.com](https://whatships.com), which has 2,000+ product launch videos
- Storyboard (medium): lay out 3 storyboard options in one image for you to pick from, then make one still per scene for the one you choose
- Build (main session, high): write every scene as HyperFrames code, add music, and render a draft before the final
- Review (high): watch the render second by second and list the problems by severity, without touching anything

You just call the shots like a director: "slow this part down by half", "cut right here", "zoom in on the button".

## Source

From [Copybook](https://copybook.page/t/make-motion-videos-with-a-4-subagent-team): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2104194355556671987) on 27 Sep 2026, 1.4K saves as of 25 Oct 2026. For Claude Code.
