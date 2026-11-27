# Repeated PR comments as AGENTS.md rules

A reviewer keeps flagging the same things: 50 recent PRs scanned, issues ranked by count, your picks written into AGENTS.md.

## Steps

1. Copy the prompt, and fill in your code folder and the reviewer's GitHub username.
2. Send it to Codex, then choose which rules to add.
3. You get: That reviewer's repeat issues, ranked, and the rules you pick added to ~/.codex/AGENTS.md.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Use gh to scan the 50 most recent PRs in each GitHub repo under [CODE DIRECTORY]. Find the issues [REVIEWER GITHUB USERNAME] keeps flagging. Rank them by frequency and link the relevant PRs. Wait for my approval, then add only the rules I choose to ~/.codex/AGENTS.md.
```

## Background

Run this in Codex. Codex reads `~/.codex/AGENTS.md` at the start of every run, so those rules no longer depend on the reviewer repeating them.

## Source

From [Copybook](https://copybook.page/t/turn-repeated-pr-review-comments-into-agents-md-rules): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2095951726452847071) on 4 Sep 2026, 1.6K saves as of 2 Oct 2026. For Codex.
