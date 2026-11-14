# huashu-art-motion: animation in 35 art styles

You want Van Gogh, Monet or Bauhaus moving: drawn in code, and a delivery check rejects any film where almost nothing moves.

## Steps

1. Copy the install command, then the prompt.
2. Run the command, then send the prompt to Opus 5.5 in Claude Code.
3. You get: A 15-second animation in the style you pick, checked by its QA script and a subagent.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install command

```text
npx skills add alchaincyf/huashu-art-motion
```

## Prompt

```text
Use huashu-art-motion to make me a 15-second animation. The skill's docs are in Chinese; read them and talk to me in English.
1. First check for uv, ffmpeg and Playwright Chromium, and tell me how to install anything that's missing.
2. Ask me what it's about, who it's for, and whether it's landscape or portrait. From the material layer in references/风格配方/INDEX.md, pick 3 styles that fit, three-star ones first. Redesign the composition for my subject in all three, each different from the others, and don't copy the room from the samples. Show me one still frame of each to choose from.
3. Once I pick, give each scene one main action plus two motif loops from that style's card. For Van Gogh, that's the starry sky curling into swirls and the lamp's halo spreading outward. If there's music, use the skill's BPM synthesis and put the motion on the beat.
4. If people need to appear, ask me first: my own character art, frames from an image model, or only hands and figures seen from behind.
5. After rendering, follow the skill's own QA steps: run its QA script first, then send a subagent that took no part in making it to watch only the finished film and find problems, have it write its findings into the 审片/ folder, and deliver with its delivery script. If anything comes up red, fix it and re-render before giving it to me.
```

## Background

Install huashu-art-motion and Opus 5.5 can draw animations in 35 art styles with code. Van Gogh's starry sky swirls. Dalí's clocks drip. And its delivery script rejects any film where almost nothing moves.

You can just ask for an animation in the style of Van Gogh, Monet or Bauhaus, an explainer animation to go with your voiceover, or a character walking through one famous painting after another. Hand it a reference animation and it first breaks down the cuts, the beat and what moves where in the frame, then recreates it in code.

Within 10 minutes of installing it, Opus 5.5 made a demo video (in the original post) from its 35 built-in styles. It runs from cave painting 40,000 years ago all the way to 2026. The room, the cat and the girl never change; only the style does.

17 that work for any subject: products, data, stories

- Van Gogh, Matisse cut-outs, Seurat pointillism, Impressionism
- Analytic Cubism, Lichtenstein pop art, Bauhaus, Russian Constructivism
- Ghibli watercolor backgrounds, Makoto Shinkai light, Chinese ink wash
- 8-bit pixel art, vaporwave neon, 2026 flat illustration
- Pompeii mosaic, early ray-traced CGI, Rembrandt chiaroscuro

18 for time travel, tributes and art-history speedruns

- Monet's water lilies, Klimt's golden period, Munch, Dalí
- Hopper, Picasso's blue period, Mucha's Art Nouveau
- Keith Haring, Kusama polka dots, Jack Kirby comics, 1930s rubber hose cartoons
- Cave painting, Egyptian tomb murals, Greek black-figure pottery, Dunhuang murals
- Chinese shadow puppets, Gothic illuminated manuscripts, Renaissance sfumato

Each style spells out what moves in the picture. The eyes on Klimt's robe blink in turn, Hopper's hard-edged patch of sunlight slides slowly across a face, and the 8-bit question block pops out a coin.

9 explainer styles

- For math and AI concepts, use 3Blue1Brown, where one shape morphs into the next
- For data, use finance charts: axes first, then the data, and label only one thing
- For UI steps in a software tutorial, use the keynote look: light-spot background, frosted-glass cards, big numbers
- To draw relationships as you narrate, use the whiteboard, where the pen tip reveals the line art bit by bit
- For a collage of graphics and info, use the Vox explainer look: clippings, red lines, highlighter
- Kurzgesagt, flat with no outlines, moving between tiny and huge scales
- Storytime, cutting to reaction close-ups and leaving a beat for the joke
- Kinetic type, with the key word slamming into the frame
- Presenter-led finance explainers, where you supply the character yourself

The music is synthesized in code too, note by note on a BPM grid. When a film is done, it runs its QA script, then sends an agent that took no part in making it to watch only the finished film and find problems. The delivery script also blocks two more things: 0.3+ seconds of blank frames mid-film, and a blue-purple background in over 30% of the film, a palette it counts as AI slop.

The skill has a tier just for Claude Opus 5.5 or stronger models, where it can combine the libraries itself and write its own renderers. All 35 styles are star-rated, and the 20 with three stars are recognizable at a glance and ready to use.

The skill's docs are in Chinese; the prompt below has it read them and talk to you in English.
Rendering video needs uv, ffmpeg and Playwright Chromium.
If you want people on screen, use your own character art or connect an image model to make the frames. Without either, it only draws hands and figures seen from behind.

https://github.com/alchaincyf/huashu-art-motion

Once it's installed, send this to Opus 5.5 in Claude Code.

## Source

From [Copybook](https://copybook.page/t/animate-in-35-art-styles-with-huashu-art-motion): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2109690569563746755) on 12 Oct 2026, 3.8K saves as of 9 Nov 2026. For Claude Code.
