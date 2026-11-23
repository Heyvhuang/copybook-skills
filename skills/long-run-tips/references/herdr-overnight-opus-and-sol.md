# Herdr overnight: Opus 5.5 builds, Sol reviews

One stuck step eating your whole night: at most 3 attempts per step, then its error recorded and the next independent step begun.

## Steps

1. Copy the commands, then the CLAUDE.md rule.
2. In a terminal, run the commands, then save the rule to the CLAUDE.md in your project.
3. You get: Opus 5.5 works overnight, and a step is done only when verify passes and Sol signs off.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Commands

```bash
brew install herdr
npx skills add herdrdev/herdr --skill herdr -g
```

## CLAUDE.md rule

```markdown
For every step: plan, build, verify, fix. A step is done only when verify passes. Max 3 attempts per step, each with a specific change. Save progress after every pass. If a step still fails, record the error, mark it blocked and move to the next independent step.
```

## Background

Opus 5.5 + GPT-6.1 Sol is insane for overnight work.

**1. Install Herdr and give Claude Code its skill.**

**2. Run herdr in your project.** One pane: `claude --model claude-opus-5-5`. The pane next to it: `codex -m gpt-6.1-sol`.

**3. Save this to CLAUDE.md** so one stuck step can't eat your whole night.

**4. Tell Opus the Codex pane is its reviewer:** after each step, it sends Sol the diff through Herdr, and the step isn't done until Sol signs off.

**5. In the Opus pane, type `/goal` and what "done" means tonight,** then `ctrl+b q` to detach. Keep the lid open and go to sleep.

## Source

From [Copybook](https://copybook.page/t/run-opus-5-5-overnight-with-a-sol-reviewer-in-herdr): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2122072146411438294) on 15 Nov 2026, 661 saves as of 22 Nov 2026. For Claude Code and Codex.
