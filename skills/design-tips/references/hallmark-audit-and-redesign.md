# Hallmark: audit and redesign AI-looking pages

A tiny label above every heading gives AI away: one command lists what's wrong with a page, another rebuilds it, content kept.

## Steps

1. Copy the install command, then the audit or the redesign command.
2. Run the install in a terminal, the audit and redesign in Claude Code, or in Codex with $ for the /.
3. You get: A list of what's wrong first; a redesign keeps your content, links and forms.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install command

```bash
npx skills add nutlope/hallmark -g
```

## Command: audit a page

```text
/hallmark audit ./index.html
```

## Command: redesign a page

```text
/hallmark redesign ./src/app
```

## Background

Claude Code pages have a tiny label sitting above every heading. One look and you know AI made them.

There's a design skill made for exactly this. It just shipped v2.

For a page you've already built, start by having it list what's wrong:

If you then want the whole page rebuilt, it keeps your content, links and forms:

Swap in your own file or folder path. In Codex, replace the leading / with $.

## Source

From [Copybook](https://copybook.page/t/audit-and-redesign-ai-looking-pages-with-hallmark): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2114039214660850098) on 24 Oct 2026, 185 saves as of 21 Nov 2026. For Claude Code and Codex.
