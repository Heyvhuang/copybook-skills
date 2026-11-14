# Internet Archive public-domain clips and music

A shot needing old film or old records: the Internet Archive's free API searched, public-domain items only, each one logged.

## Steps

1. Copy the rule.
2. Add it to Claude Code in the project where you edit videos.
3. You get: Files in media/, trimmed to the part used, and a line in credits.txt for each item.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Rule

```text
When you need old film clips or old record music, read http://archive.org/developers/ first, then search http://archive.org/advancedsearch.php, adding collection:prelinger for films and collection:78rpm for music. Only use items whose licenseurl field contains publicdomain, and skip any item without a licenseurl. Download to media/, trim to the part you use, and log each item's identifier, title and licenseurl in credits.txt.
```

## Background

The Internet Archive holds 17M+ video items and 14M+ audio items, and its search API is free and works without an account. Of those, 1,876 old films and nearly 70,000 78rpm records are marked public domain.

If you edit videos with Claude Code, it'll go find footage or music on archive.org whenever a shot needs it.

## Source

From [Copybook](https://copybook.page/t/pull-public-domain-footage-and-music-from-the-internet-archive): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2113732191209365933) on 23 Oct 2026, 162 saves as of 30 Oct 2026. For Claude Code.
