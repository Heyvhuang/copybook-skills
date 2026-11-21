# /learn-taste: design corrections as rules

You keep fixing the same design mistakes: each correction in a session turned into a strict rule with reasoning.

## Steps

1. Copy the install command, then the prompt.
2. Run the command in your project, then paste the prompt into Claude Code at the end of a session.
3. You get: Each design correction from this session and your last 3, proposed as a strict rule with reasoning.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install learn-taste

```bash
npx skills@latest add emilkowalski/skills --skill learn-taste
```

## Prompt

```text
/learn-taste look at my last 3 sessions too, I keep fixing the same things
```

## Background

Highly recommend installing `/learn-taste` in Claude Code.

Simply put, it collects every design correction you made during a session and turns each one into a strict rule with reasoning, so the next agent doesn't make the same mistake. A great time saver if you correct your agent often.

Install it, then run one line at the end of a session.

## Source

From [Copybook](https://copybook.page/t/turn-design-corrections-into-rules-with-learn-taste): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2121286973067522492) on 13 Nov 2026, 340 saves as of 20 Nov 2026. For Claude Code.
