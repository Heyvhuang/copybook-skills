# Content team of 9 skill sets

Making content solo: skills for topics, writing, visuals, video, sound and scheduling, installed and tried on one topic.

## Steps

1. Copy the skill list and the prompt.
2. In Claude Code, send Opus 5.5 the skill list followed by the prompt.
3. You get: The skills you'll use installed, and one topic run through to a draft in Postiz.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Skill list

```text
Topics

1. last30days · 64K stars
Run it before you pick a topic. It takes the last 30 days of discussion about a topic on Reddit, X, YouTube, HN and TikTok, ranks it by real engagement and writes it up as a brief. Ask /last30days what's exploding in AI agents? and you get 5 to 10 topics that are heating up. Reddit and HN work as soon as it's installed; X, YouTube and TikTok need a pass through its setup wizard first. We use it too, to pull in Reddit and HN discussion when we look for topics.
mvanhorn/last30days-skill

Writing

2. marketingskills · 54K stars
For posts, landing pages and emails. There are 50 marketing skills in it, and for content these four are enough: copywriting, copy-editing, social and content-strategy.
coreyhaines31/marketingskills

3. humanizer · 55K stars
Run it last, once the draft is done. It checks the 26 signs of AI writing that Wikipedia's editors list, one by one, and rewrites the text so it sounds human without changing what it says. If a detail is missing, it stops and asks you. Give it a sample of your own writing and it'll match your voice too.
blader/humanizer

Visuals

4. baoyu-skills · 27K stars
Pick from here when you need covers, infographics or diagrams. Covers and infographics need an image model: if you have Codex installed and logged in, it'll use Codex to make the images; otherwise install baoyu-image-gen and add a key. diagram has Claude write the SVG by hand, so it works right after install. The author recommends installing only the ones you need, since installing all of them adds context on every run.
JimLiu/baoyu-skills

5. frontend-slides · 30K stars
Use this for LinkedIn carousels. It builds slides as a web page and exports them to PDF, which is what LinkedIn document posts take.
zarazhangrui/frontend-slides

Video

6. HyperFrames · 60K stars
For explainers and product demos. You write HTML and it renders an MP4; we've made several of our videos this way. If you prefer React, Remotion's official skills (remotion-dev/skills) work too, free for individuals and companies of up to 3 people.
heygen-com/hyperframes

7. video-use · 29K stars
Shot yourself on camera? Hand the footage to this. Drop the raw clips in a folder and edit by chatting with Claude Code. It cuts the ums, false starts and pauses, then color grades and burns in subtitles. After rendering, it checks every cut itself before showing you. Transcription runs on ElevenLabs, so you'll need its key.
browser-use/video-use

Sound

8. ElevenLabs official skills
For when a video needs a voiceover, music, or a version in another language. Dubbing keeps the original speaker's voice, and there are sound effects and background-noise removal too. It shares one key with video-use, and usage past the free tier is paid.
elevenlabs/skills

Publishing

9. Postiz · 37K stars
For scheduling. It covers 30+ platforms, including X, LinkedIn, TikTok and YouTube, with analytics too. The hosted version connects to Claude Code with one claude mcp add plus a login, and you can start free. Self-hosting means applying for a developer app on each platform, and Meta, YouTube and TikTok can take weeks. They also say to keep a human in the loop the whole time.
gitroomhq/postiz-app
```

## Prompt

```text
Use the list above to set up a content pipeline for me:
1. First ask me which platforms I mainly post on and whether I do video and voiceovers. Install only what I'll use.
2. Read each one's README for install steps first. For anything installed with npx skills add, add -g -a claude-code, or it may land in a folder Claude Code doesn't read. For HyperFrames, use npx hyperframes skills update to install only the core set. For baoyu-skills and marketingskills, install only the ones I'll use. Install video-use into ~/.claude/skills following its README. Connect Postiz's MCP with claude mcp add, and I'll click through the login myself. If something can only be installed with /plugin, list the commands and I'll type them. If Node, Python or ffmpeg is missing, tell me first.
3. For anything that needs an API key (ElevenLabs, image models), tell me where to get it and which environment variable to put it in, and I'll fill it in myself. You can check that it's set, but don't print the value.
4. Once everything is installed and filled in, remind me to restart Claude Code, come back here with claude --continue, and log in to Postiz under /mcp.
5. Run one topic through from start to finish: use last30days to check the last 30 days of discussion and give me 3 angles to choose from; write the draft and run it through humanizer; base the cover, carousel, video script and voiceover on that final draft; if I want video, make a short one; finally, save it as a draft in Postiz.
6. Show me each step when it's done, and move on only when I say so. Always wait for my OK before scheduling or posting anything.
```

## Background

You can make content solo and still have a whole content team. Opus 5.5 in Claude Code is the editor-in-chief, and 9 skill sets each run one job: finding topics, writing, visuals, video editing, sound and scheduling.

Send the whole list to Opus 5.5 in Claude Code, then the prompt. It'll install them one by one and do a test run.

## Source

From [Copybook](https://copybook.page/t/content-team-of-9-skill-sets-in-claude-code): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2109660366389064104) on 12 Oct 2026, 176 saves as of 9 Nov 2026. For Claude Code.
