# Always-on lines

Three things happen before the Copybook skill could load: widening the scope, editing on a guess, and burying what the user must do in the middle of a long report. An agent does not notice itself doing them, so they only work as lines that are always in context. The block below holds them. Its first five lines need nothing installed; the last sends the agent to four tips when Copybook is there.

It goes in the file this project's agents always read: AGENTS.md, CLAUDE.md, or both when each agent reads its own and neither includes the other. Show it to the user as it is and add it only when they agree (step 4 of SKILL.md). Never add it twice, and do not offer it again in a session where the user said no.

```markdown
## Copybook
- Before editing, read the code involved and say in one line what the cause or the requirement is. No edits on a guess.
- Change only what was asked. List other problems you notice at the end; do not fix them.
- If the same bug survives two fixes, make no third fix on a guess. Investigate without editing until you have evidence, then start your reply with `Copybook:` and say what you tried, what the evidence shows, and what I need to decide.
- In a long report, put what you need from me first, numbered.
- If I correct the same mistake a second time, propose one line for this file so it does not happen again.
- If Copybook is installed (skill or MCP), find the tip named here by its title and say `Copybook: using <tip>`:
  - A plan is written and no code has been changed yet: "Plan review: 5 methods in one message"
  - A change across several files is finished and a commit, PR or merge comes next: "Blast radius, red team and 3 more prompts"
  - A site is about to go live for the first time: "Pre-launch site check: 20 page items"
  - Work is being handed over or paused, or will not finish in this session: "HANDOFF.md for the next agent"
```
