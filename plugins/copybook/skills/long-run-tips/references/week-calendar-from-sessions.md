# Week calendar from Claude Code sessions

A week of sessions you can't recall: local logs as an HTML calendar, no-commit sessions flagged, and a 3-line weekly report.

## Steps

1. Copy the prompt.
2. Send it to Claude Code, and confirm the files it shows you.
3. You get: A week-calendar subagent that turns your session logs into an HTML calendar and a 3-line report.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Set up a subagent that only builds weekly calendars:

1. Create week-calendar in ~/.claude/agents: model: opus, effort: medium, memory: user. Preload the design skills I have installed (for example impeccable). Give it Bash so it can run git log and the script that builds the calendar. It only writes files to ~/.calendar/ and its own memory.
2. The first time, it asks me what style I like: dark or light, one accent color, color by project or by task type, and whether the week starts on Monday or Sunday. It saves my answers to memory and follows them every time.
3. The calendar is one HTML file. The script writes the data straight into it, so it opens with a double-click. Use this week's session logs: Claude Code's are in ~/.claude/projects/ (skip the subagents folders), and if I use Codex, add ~/.codex/sessions/. Before writing the script, open one file to check the fields. Convert times to my local time zone, and use the cwd in each record to tell projects apart. One block per session; start a new block after any gap longer than 30 minutes. Clicking a block shows the project, start and end time, the model used, the session title (if there isn't one, sum up my first typed message in 3 to 5 words), my first typed message, and my commits and changed files in that repo during that time (skip folders that aren't git repos). Sessions that stopped without a single commit get a red outline and also go in a separate list. At the top, total this week's hours per project, counting parallel sessions only once. Keep everything local.
4. Add a rule to ~/.claude/CLAUDE.md: when I say "what did I do this week" or "write my weekly report", have week-calendar regenerate the calendar first, then write a 3-line weekly report from it: what I mainly got done this week, which project took the most time, and which no-commit sessions to pick up first next week.

Show me the contents of the files you'll create or change, then explain the whole flow in words a 10-year-old could follow. Don't write anything until I confirm.
```

## Background

A week of Claude Code sessions is too much to remember. Every weekend, have Opus 5.5 vibe-code a quick weekly calendar from your local session logs.

Then give it a subagent that only builds weekly calendars:

- Name it week-calendar, set its effort to medium, and preload a design skill
- The first time, it asks which colors you like and whether to color by project or by task, and saves that to memory. After that, every calendar follows it
- Call it when you want to look back on the week or write a weekly report. It regenerates the calendar and writes up a 3-line weekly report for you
- The calendar shows four things: when you worked each day, what each session did, which sessions stopped without a single commit, and how many hours each project took this week

Send this prompt to Claude Code.

## Source

From [Copybook](https://copybook.page/t/turn-a-week-of-sessions-into-a-calendar): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2106746160211980427) on 4 Oct 2026, 2K saves as of 1 Nov 2026. For Claude Code.
