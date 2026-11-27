# Outdated CLAUDE.md and AGENTS.md review

Agents follow an outdated CLAUDE.md over your code: its old instructions identified, and a rule that puts code first.

## Steps

1. Copy the prompt and the paper's link, then the one-sentence rule.
2. Send the prompt and the paper's link to Claude Code, and add the rule to ~/.claude/CLAUDE.md.
3. You get: Each outdated instruction quoted with its potential impact and the smallest change, before edits.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Read this paper and review my project's CLAUDE.md and AGENTS.md against the existing code. Identify instructions the code no longer follows.

For each issue, quote the original instruction, explain its potential impact, and suggest the smallest change needed. List any proposals involving safety, permission boundaries, or reduced verification separately for me to decide. Show me the recommendations first. Don't modify anything yet.
```

## Global CLAUDE.md rule

```text
When a repository's documentation and its existing code disagree, follow the conventions used in the existing code, and in your final reply point out each inconsistency you found between the documentation and the code.
```

## Background

Researchers published a paper on why Claude Code and Codex keep getting misled by outdated CLAUDE.md and AGENTS.md files. You can ask Claude Code to use it to review the old rules in your project.

Your code moved from print to logging long ago, but CLAUDE.md still says "Use print() for progress messages". You ask Claude Code to add a feature, and it writes in its reply that the two don't match, then uses print anyway. That's an example from the paper: across 40 projects like this, it happened in 79 of 80 runs.

In 441 company repos, 73.8% of AI config files like CLAUDE.md were committed once and never touched again. Yours is probably one of them.

Send this prompt and the paper's link to Claude Code: https://arxiv.org/abs/2610.30571

Then add the paper's one sentence to your global ~/.claude/CLAUDE.md (for Codex, ~/.codex/AGENTS.md). In the paper, it moved the agents from following the existing code 4.2% of the time to 91.4%, and every test passed.

## Source

From [Copybook](https://copybook.page/t/review-outdated-claude-md-rules-against-your-code): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2124880659889938848) on 23 Nov 2026, 216 saves as of 26 Nov 2026. For Claude Code and Codex.
