# 3 checks before installing a skill

Someone put 314 malicious skills on ClawHub: check the source, scan the code, question the permissions, in under five minutes.

## Steps

1. Copy the 3 checks.
2. Run them on any skill before you install it in your agent.
3. You get: In less than five minutes, you know who wrote it, what it calls out to, and what access it wants.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## 3 checks I run before installing any skill now

```text
1. source: who's the author, do they have other legit projects
2. code scan: search for curl, wget, exec, external URLs
3. permissions: does it need file system access? shell? why?
```

## Background

Someone published 314 skills on ClawHub. Every single one was malicious. Once installed, they read your MEMORY.md, SOUL.md, everything your agent remembers, leaked.

I checked my own 5 agents. Clean. But honestly, cold sweat.

Takes less than five minutes. Installing skills without these three checks is like signing a contract without reading it.

## Source

From [Copybook](https://copybook.page/t/run-3-checks-before-you-install-any-skill): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2032788846581031362) on 14 Mar 2026, 308 saves as of 24 Oct 2026.
