# Codex computer use as a local MCP server

A fast browser for Claude Code: ChatGPT's computer use as a local MCP server, clicking pages and comparing live with local.

## Steps

1. Copy the prompt, and fill in your live URL and local URL.
2. Send it to Claude Code on your Mac, then again in the new session it asks for.
3. You get: Opus 5.5 in Claude Code clicks through pages and compares live and local screenshots.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up Codex's computer use as an MCP server for you on my Mac:
1. If there's already an MCP server called codex-cu and it works, skip to step 3.
2. Otherwise, open the .mcp.json in the newest version folder under ~/.codex/plugins/cache/openai-bundled/unified-computer-use/ (if it's not there, search ~/.codex for a .mcp.json that contains cua_repl). Copy cua_repl's command, args and env exactly, and register it as codex-cu with claude mcp add-json --scope user. Then stop and tell me to start a new session, and I'll send this again.
3. It can only control apps I've approved in Codex. If you hit "not approved", tell me which app to approve in Codex, and don't switch to another app to get around it. Don't use browser backends like chrome or the in-app browser. Control the browser as a normal app.
4. Test: in a browser I've approved, open a new tab and load [live URL] and then [local URL, e.g. http://localhost:3000]. Take a screenshot of each and list what's different. If a URL is missing or the local server isn't running, ask me first. Don't type passwords or tokens, don't click submit, pay or send buttons, don't touch tabs I already have open, and close the tab you opened when you're done.
5. Once I confirm the differences, fix the local code and compare screenshots again.
```

## Background

Hot take: the best browser for Opus 5.5 is Codex's computer use. I always thought it only worked inside Codex. Turns out it's just a local MCP server in the ChatGPT Mac app, and Claude Code can connect to it: Opus 5.5 writes the code and uses it to click through pages and take screenshots.

Codex's computer use is one of the things I use most right now, and it's really fast. I use it all the time for browser testing: open the live site and the local version, compare what's different, then have it fix things. Claude's built-in browser has never worked well for me, and now I can use this from Claude Code too.

It can only control apps you've approved in Codex, and Terminal is blocked outright. It's unofficial, so a ChatGPT update could break it any time, but right now it's ridiculously good. Send this to Claude Code.

## Source

From [Copybook](https://copybook.page/t/use-codex-computer-use-in-claude-code): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2106866954908635425) on 4 Oct 2026, 1.1K saves as of 1 Nov 2026. For Claude Code and Codex.
