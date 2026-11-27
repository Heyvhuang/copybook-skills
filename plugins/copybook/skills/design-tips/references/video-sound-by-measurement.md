# Video sound by measurement: beats and loudness

Opus 5.5 can't hear its own soundtrack: beats from librosa, the grid checked below 120 Hz, loudness measured on the MP4.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code, in the project with your video.
3. You get: Sound effects and licensed music on the beat, and 5 timestamps to check with headphones.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Add sound to this video. You can't hear, so measure every step and don't go by feel. Install ffmpeg and librosa first if they're missing.
1. Use licensed music: a track I give you, or one under Mixkit's free license. Note the source and the license. Don't synthesize the music or the sound effects in code.
2. Find the beats with librosa. It sometimes locks onto the off-beat, so plot the waveform below 120 Hz against the beat grid and zoom in on a few bars. If the kick drums don't line up, shift the whole grid.
3. Put the big moves, like scene cuts and titles appearing, on the beat. If you can change the animation, change it. If you can't, move where the music starts.
4. Give every cut and big move one ready-made sound effect file: whoosh for movement, pop for things appearing, click for clicks, typing sounds for typing. Use the project's existing sound library first, like the one HyperFrames ships with, and ask me if there isn't one.
5. If there's a voiceover, it's the loudest thing, and the music drops while someone talks. Sound effects sit above the music. Aim for about -16 LUFS overall with peaks below -4 dBFS, so nothing clips after AAC compression or on a phone speaker in mono. Measure the exported MP4 with ffmpeg's ebur128. Don't measure the WAV.
6. Use ffmpeg to grab one frame before and after every cue from the exported MP4, and plot a waveform to compare. Then pick 5 timestamps for me to check with headphones. Don't tell me it sounds good.
```

## Background

If you still think Opus 5.5's motion videos sound like cheap electronic beeps, try this prompt.

A few days ago I was scoring a video and librosa locked onto the off-beat. The whole beat grid was 0.22 seconds off, and I only caught it by plotting the waveform below 120 Hz against the grid.

## Source

From [Copybook](https://copybook.page/t/add-sound-to-a-video-by-measuring-not-guessing): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2109358372873183564) on 11 Oct 2026, 1.5K saves as of 8 Nov 2026. For Claude Code.
