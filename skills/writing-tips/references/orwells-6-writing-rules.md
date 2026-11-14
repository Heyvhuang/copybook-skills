# Orwell's 6 writing rules

Banning AI words one by one never ends: 6 rules from 1946 for your global rules file, plus prompts for docs, PRs and reports.

## Steps

1. Copy the six writing rules; the prompts under them are optional.
2. Paste the rules into your global CLAUDE.md or AGENTS.md.
3. You get: Docs, PR text and reports in plain words in every session, without banning words one at a time.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

The six numbered rules in the first block quote George Orwell’s 1946 essay *Politics and the English Language*. Copybook’s licenses exclude this quotation. See the [third-party license notice](../../../LICENSE-NOTICES.md).

## Global CLAUDE.md / AGENTS.md rules

```markdown
Writing rules, from Orwell, 1946. These govern prose: docs, PR text, messages. Never touch code or technical terms; swap in everyday words only where precision survives.
1. Never use a metaphor, simile or other figure of speech which you are used to seeing in print.
2. Never use a long word where a short one will do.
3. If it is possible to cut a word out, always cut it out.
4. Never use the passive where you can use the active.
5. Never use a foreign phrase, a scientific word or a jargon word if you can think of an everyday English equivalent.
6. Break any of these rules sooner than say anything outright barbarous.
Review every prose output against these rules before delivering.
```

## Prompt: rewrite text that existed before the rules

```text
Rewrite this text applying the six writing rules in CLAUDE.md. First list every violation: each stale phrase, each long word with its short replacement, each cuttable word, each passive construction. Then give the rewrite. Keep every fact, number and name unchanged.
```

## Rule: PR descriptions and commit messages

```markdown
For every commit message and PR description: state what changed and why in plain words. No achievement language, no comprehensive, no robust. Apply the six writing rules before delivering. A reviewer should know what this does in one read.
```

## Prompt: landing page copy

```text
Rewrite this landing page copy under the six writing rules in CLAUDE.md. One concrete claim per line. Short words, active voice. Run the swap test on every line: if a competitor could paste it unchanged onto their page, rewrite it or delete it.
```

## Rule: readable progress reports

```markdown
Report progress in plain sentences: what changed, what failed, what comes next. No emoji checkmarks, no Successfully, no Perfect, no wall of bullets. Start with three lines; add detail only when it changes the next action.
```

## Background

Stop telling Claude Code or Codex "no em dashes", "stop saying delve" or "don't sound like AI". You never gave it a writing system. Every README, PR description and landing page ships in the same AI voice, and you ban words one at a time.

Orwell wrote the fix in 1946: six rules. Paste them into your global CLAUDE.md / AGENTS.md and every session picks them up. Global means it applies to every repo. Give one project its own voice with a project-level CLAUDE.md when you need to.

What it does to a sentence. Before: "Comprehensive error handling has been implemented across all API endpoints to ensure robust and reliable performance." After: "We added error handling to every API endpoint." Comprehensive, robust, reliable and ensure are gone, the passive turned active, and 16 words went down to 8 with the same facts.

## Source

From [Copybook](https://copybook.page/t/orwell-writing-rules-for-claude-md-and-agents-md): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2078857039116156978) on 19 Jul 2026, 12K saves as of 16 Aug 2026. For Claude Code and Codex.
