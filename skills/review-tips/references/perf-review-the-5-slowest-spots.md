# Perf review: the 5 slowest spots

Ask for faster code and you probably get a cache: timings from a profile, one matching fix each, its lines and expected speedup.

## Steps

1. Copy the prompt.
2. Send it to Claude Code in your project.
3. You get: A report on the 5 slowest spots, each with its fix and expected speedup, and nothing changed.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Do a performance review of this project:
1. Run a profile first. Find the 5 slowest spots and how much time each one takes.
2. Check each spot against the cases below and only apply the one that matches:
- It uses a cache: caching is cope for a slow design. Don't add more caches. See if it can be redesigned to be fast on its own. List the existing caches and flag which ones are hiding a slow design.
- A hot loop keeps hitting hash tables: can you replace those hash tables with a flat array? Can we make the pointers an index into the array? Can we pack the most commonly used data into upper bits of the index?
- Lots of objects, but each pass only reads one or two fields: should this be a structure of arrays instead of an array of structures (AoS → SoA)?
- Independent awaits running one after another: run them in parallel.
- Nothing matches: how do we rewrite this to better leverage data-oriented design principles?
3. For each spot, write down how much time it takes now, which case it matched, which file and lines to change, and the expected speedup.
Give me the report first. Don't change anything.
```

## Background

Tell Claude Code to "make it faster" and it'll probably add a cache. People who actually do perf work name the exact structure they want instead.

Four of the five cases are adapted from a [Jarred Sumner](https://x.com/jarredsumner/status/2117037940031496252) post: "some things I often say to claude when doing perf optimization work".

## Source

From [Copybook](https://copybook.page/t/profile-the-5-slowest-spots-instead-of-adding-a-cache): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2117342228767281487) on 2 Nov 2026, 849 saves as of 9 Nov 2026. For Claude Code.
