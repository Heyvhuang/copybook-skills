# 4 starting points for a code-only animation

An animation you love, a one-line idea, a character image or an art style: a prompt for each, one HTML file rendered, plus sound.

## Steps

1. Copy the prompt for your starting point.
2. Send it to the model with your video, image or topic.
3. You get: An animation written entirely in code, rendered from one HTML file.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt: reverse-engineer it

```text
Reverse-engineer this video into HyperFrames code, then make a more creative version from a designer's point of view.
```

## Prompt: one sentence, high effort

```text
Make a playable 3D racing game that runs in my browser, and make it look as good as you can.
```

## Prompt: from a character image

```text
Here's the main character. Turn it into a 30-second animated short about [TOPIC]: playful, with a clear ending, made to post on X. Skip synthesized sound effects and use real audio samples from my machine.
```

## Prompt: a specific art style

```text
In a single HTML file with vanilla JS and Canvas, make a pixel-art cat chasing fireflies. Draw on a low-res canvas first, like 160×90, then scale up by whole numbers. Use a small fixed palette and no anti-aliasing. Animate with a choppy 10 fps pixel feel, in four phases: idle, stalk, pounce, land. Loop it seamlessly.
```

## Background

Those code-only animations all over the timeline come down to four approaches, each with a prompt you can copy:

- Found an animation you love: have it reverse-engineer it
- Just have an idea: one sentence, high effort
- Have a character image: a screenshot and a few lines
- Want a specific art style: spell out the spec

Found an animation you love? Drop the video in with the prompt.

That's how I made mine: two messages, and the second one just asked it to change the story and polish the look. Everything lives in one index.html, rendered to MP4 with HyperFrames. About an hour start to finish, roughly $14 at API prices.

Just have an idea? Set /effort to max or xhigh, then give it one sentence:

Leave the ideas and the details to it. It can run for over an hour, and it uses the most of your limits.

Have a character image? Paste it in with a few lines:

The fastest ones are done in under 20 minutes. Swap in screenshots and the repo of your own app, and you get a product intro video.

Want a specific art style? Spell out the spec. For pixel art, for example:

How to do the sound:

- Code only: have it synthesize the score with the Web Audio API or a Python script, timed to the story beats
- Not happy with it: have it redo the score a few more times, using real instrument sounds
- Samples: local audio samples, licensed music, or ElevenLabs for sound effects

## Source

From [Copybook](https://copybook.page/t/four-ways-to-make-a-code-only-animation): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2102805198838321649) on 23 Sep 2026, 589 saves as of 21 Oct 2026. For Codex.
