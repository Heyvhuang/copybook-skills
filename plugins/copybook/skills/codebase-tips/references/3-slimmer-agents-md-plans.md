# 3 slimmer AGENTS.md plans side by side

AGENTS.md past 200 lines gets followed less: 3 slimmer versions, each more aggressive, nothing lost, shown before changes.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 with the Claude Code memory docs and the Codex AGENTS.md docs.
3. You get: Three restructure plans side by side with line counts and KiB before and after, then a PR.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read these two docs, then read my AGENTS.md (and CLAUDE.md, if the project has one) and the files it imports, and give me three ways to restructure them:
1. Delete instructions that do nothing: things Opus already does, and things it can tell from the code. Merge duplicates, and list any contradictions so I can choose.
2. Keep only the rules needed every time in the root AGENTS.md, under 200 lines. Move rules that only matter for one folder into that folder's own AGENTS.md, and other details into separate files. For both, say in the main file where they are and when to read them. Don't use @ imports for detail files, and keep the line in CLAUDE.md that imports AGENTS.md.
Have three subagents each write one version, each more aggressive than the last. This step is proposals only, so don't change any files. For each version, list what was deleted, where things moved, and the main file's line count and size in KiB before and after. Don't lose a single useful rule. Show me the three versions side by side first, I'll pick one, and then open a PR.
```

## Background

Claude Code's docs say to keep each AGENTS.md under 200 lines, since the longer it gets, the less Claude follows it. Codex reads 32 KiB at most by default and skips anything past that.

Every time you start a session, Codex and Claude Code read your AGENTS.md into context, and it comes along on every turn after that. After slimming, only the main file gets read every time, and the rest only when the agent gets to that folder or needs it.

What the official docs add:

- Codex reads them once, when the session starts: the global one, plus every one from the project root down to the folder you launched in. It won't automatically reread them when you move to another folder.
- Claude Code loads a subfolder's AGENTS.md only when it reads a file in that folder. So rules that only matter for one folder belong in that folder's own AGENTS.md.
- In Claude Code, @ imports only make the file look tidier. Imported files still load in full at launch, so they save zero tokens.
- In Claude Code, every installed skill's name and description takes up context on every turn. Run /skill-doctor to see what each one costs and how often it gets used.
- In Claude Code, run /doctor prompt-audit (v2.1.283 or later). It finds instructions written for older models, references to files that don't exist, and files that contradict each other, and changes nothing until you say yes.

Send this prompt to Opus 5.5 with the two docs: [Claude Code memory](https://code.claude.com/docs/en/memory) and [Codex AGENTS.md](https://learn.chatgpt.com/docs/agent-configuration/agents-md).

## Source

From [Copybook](https://copybook.page/t/slim-your-agents-md-with-three-restructure-plans): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2107939019091005836) on 7 Oct 2026, 781 saves as of 4 Nov 2026. For Claude Code and Codex.
