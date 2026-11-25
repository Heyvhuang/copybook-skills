---
name: writing-tips
description: "Writing · 5 tips: Orwell's rules, one-line de-AI prompt, README rewrites, task briefs."
disable-model-invocation: true
---

# Writing · 5 tips

Copybook's 5 tips on writing, most saved first. Each tip's text, where it goes and what the user should get are in its file in references/.

- If the user names a tip, use that tip. If they describe a task, choose the tip that best meets their goal and constraints from those that work with the agent doing the work. If several fit equally well, choose one. Tell the user in one sentence which tip you picked and why, then read its file and follow it. If another tip also fits and would materially change the approach or result, name it and say how it differs.
- If the user said nothing, show them the list below (each tip's name and what it does) and ask which to use.
- If none fits, say so and suggest copybook, which looks through all 149 tips.

| Tip | What it does |
| --- | --- |
| [Orwell's 6 writing rules for CLAUDE.md and AGENTS.md](references/orwells-6-writing-rules.md) `orwells-6-writing-rules` | Banning AI words one by one never ends: 6 rules from 1946 for your global rules file, plus prompts for docs, PRs and reports. |
| [Engineer's task brief from GPT-6 Pro](references/task-brief-from-gpt-6-pro.md) `task-brief-from-gpt-6-pro` | Before a task goes to Codex: GPT-6 Pro finds what you haven't thought through and writes a brief an engineer could take. |
| [One line against AI prose](references/one-line-against-ai-prose.md) `one-line-against-ai-prose` | 'It's not X, it's Y' is gone and it still reads like AI: Anthropic's Fable 5.1 guide has a more direct one-line prompt. |
| [README rewrite prompt and Impeccable polish](references/readme-rewrite-and-polish.md) `readme-rewrite-and-polish` | Rewrite the whole README for first-time readers when a full rewrite is requested. Single-section edits stay local. |
| [Content team of 9 skill sets in Claude Code](references/content-team-of-9-skill-sets.md) `content-team-of-9-skill-sets` | Making content solo: skills for topics, writing, visuals, video, sound and scheduling, installed and tried on one topic. |
