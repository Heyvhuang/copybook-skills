# Market read before you build

Advice with no research behind it: 25-40 competitors indexed, recurring complaints ranked, then where your direction will die.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5, with what you want to build in the blank.
3. You get: Two files in market/, then the strongest case for your chosen direction and where it will die.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
I want to build ___. No advice yet:
1. Find 25–40 competitors in this category and read each one's pricing page, case studies and docs. In market/index.md, write one line per company: who it sells to, how it charges, what it leads with.
2. Then read 100+ user reviews and forum complaints. Rank the complaints that keep coming up by how often they appear, each with its source, and save them to market/complaints.md.
3. Using only this material, answer: what do the winners in this market know but would never admit to customers? Which assumptions does the whole industry take for granted, and when would each one stop holding?
4. Once I settle on a direction, first make the strongest case for it like a top VC would, then tell me where it will die. Finally, list 3 questions I should take to real customers.
```

## Background

Opus 5.5 can give you a 10-year veteran's market read, as long as you let it read the market first.

## Source

From [Copybook](https://copybook.page/t/market-read-before-you-build): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2119142844212629752) on 7 Nov 2026, 173 saves as of 14 Nov 2026.
