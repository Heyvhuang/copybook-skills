---
name: model-tips
description: "Models and cost · 23 tips: model pairings, effort, cache timing, leftover quota."
disable-model-invocation: true
---

# Models and cost · 23 tips

Copybook's 23 tips on models and cost, most saved first. Each tip's text, where it goes and what the user should get are in its file in references/.

- If the user names a tip, use that tip. If they describe a task, choose the tip that best meets their goal and constraints from those that work with the agent doing the work. If several fit equally well, choose one. Tell the user in one sentence which tip you picked and why, then read its file and follow it. If another tip also fits and would materially change the approach or result, name it and say how it differs.
- If the user said nothing, show them the list below (each tip's name and what it does) and ask which to use.
- If none fits, say so and suggest copybook, which looks through all 143 tips.

| Tip | What it does |
| --- | --- |
| [Luna Max as a Codex subagent](references/luna-max-as-a-codex-subagent.md) `luna-max-as-a-codex-subagent` | Bounded delegated work at max reasoning: a luna_worker custom agent, checked against your Codex version, diff shown first. |
| [/advisor: Opus 5.5 works, Fable on call](references/advisor-fable-on-call.md) `advisor-fable-on-call` | Fable quota idle while Opus 5.5 does the work: Fable called in before a plan, when an error repeats and before 'done'. |
| [Old-rules review for Astra, by OpenAI's guide](references/old-rules-review-for-astra.md) `old-rules-review-for-astra` | Rules from older models make Astra over-read or stop early: the triggers, required reading, checks and stop rules to cut. |
| [Setup review by Anthropic's model guide](references/setup-review-by-the-model-guide.md) `setup-review-by-the-model-guide` | Explore burning big-model quota on every file read: wrong-model subagents and ill-fitting effort found, a config fix each. |
| [5 /goal prompts for leftover Codex quota](references/leftover-quota-5-goal-prompts.md) `leftover-quota-5-goal-prompts` | Quota unused before it resets: a UI/UX audit, a clickable code map, measurable speedups, a workspace and a Codex cleanup. |
| [Cache countdown in the status line](references/status-line-cache-countdown.md) `status-line-cache-countdown` | The cache expires without warning: the status line shows minutes left, then what the next message re-caches. |
| [Fable 5 plans, Codex builds the backend](references/fable-plans-codex-builds.md) `fable-plans-codex-builds` | Fable 5 burns tokens fast: planning and frontend stay with it, the backend goes to Codex by /goal; a redesign prompt too. |
| [Setup review by the Opus 5.5 cost guide](references/setup-review-by-the-cost-guide.md) `setup-review-by-the-cost-guide` | Settings carried over from Opus 5 cost more on 5.5: effort, subagents, MCP servers and CLAUDE.md checked, a small fix each. |
| [Think-carefully cleanup for Opus 5.5](references/think-carefully-cleanup.md) `think-carefully-cleanup` | Opus 5.5 already thinks before it answers: rules that push extra thinking, dole out steps or stop to confirm, quoted with a fix. |
| [hillclimb: a cheaper Claude API feature](references/hillclimb-a-cheaper-feature.md) `hillclimb-a-cheaper-feature` | Your costliest Claude API feature: a test set first, then cheaper models and lower effort step by step while accuracy holds. |
| [Fable 5.2 agent tree with Opus 5.5 and Haiku](references/fable-5-2-agent-tree.md) `fable-5-2-agent-tree` | Picking a model and effort per role: Haiku 5.5 finds files and runs tests, Opus 5.5 edits code, Fable on high only if stuck. |
| [Codex: GPT-6.1 Sol main, medium subagents, Astra review](references/gpt-6-1-sol-main-astra-reviews.md) `gpt-6-1-sol-main-astra-reviews` | Astra eats a week's quota: 6.1 Sol on high as orchestrator, on medium for 3 subagents, Astra only to review big changes. |
| [/advisor: Sonnet 5.5 works, Opus on call](references/advisor-opus-on-call.md) `advisor-opus-on-call` | \$20 plan on Opus 5.5 by default: Haiku reads code, looks up docs; Opus advises before plans, on repeat errors, before 'done'. |
| [Fable 5.2 plans, Opus 5.5 or Codex builds](references/fable-5-2-plans-opus-builds.md) `fable-5-2-plans-opus-builds` | Fable 5.2 burns tokens fast: planning stays with it, the hardest parts may too, the rest goes to an Opus 5.5 subagent or Codex. |
| [Old-rules review for Fable 5.2](references/old-rules-review-for-fable-5-2.md) `old-rules-review-for-fable-5-2` | Rules hard-coded for older models work against Fable 5.2: delegation, think-less, style-limit and 'never' lines quoted with a fix. |
| [3 habits burning your Claude Code usage](references/3-habits-burning-your-usage.md) `3-habits-burning-your-usage` | Keep hitting the usage limit: 7 days of session logs scanned, the 3 costliest habits and their share, rules to plug them. |
| [Fable main, Opus subagents: 3 settings](references/fable-main-opus-subagents.md) `fable-main-opus-subagents` | Fable quota going fast: 3 settings send reading and lookups to half-price Opus subagents; Fable keeps the judgment. |
| [Setup check: OpenAI's 5 cheap-harness rules](references/openais-5-cheap-harness-rules.md) `openais-5-cheap-harness-rules` | Is your setup as cheap as OpenAI's harness: pass or fail on each of its 5 rules, with the file and the one thing to change. |
| [Codex: Astra without default subagents](references/astra-without-default-subagents.md) `astra-without-default-subagents` | Astra burns quota faster than Sol: default-subagent rules gone, one line so it does the task and the checks itself. |
| [Opus 5.5 main model, medium subagents](references/opus-5-5-main-medium-subagents.md) `opus-5-5-main-medium-subagents` | Usage that lasts longer: Opus 5.5 as main model, Opus 5.5 on medium as default subagent; hard-coded model IDs found first. |
| [GPT-6 Pro plan in Chat, handed to Codex](references/gpt-6-pro-plan-handed-to-codex.md) `gpt-6-pro-plan-handed-to-codex` | Plans made blind to your code and logs: connected to ChatGPT, GPT-6 Pro plans from real PRs and records, then briefs Codex. |
| [Token waste audit for Claude Code on Opus 5.5](references/claude-code-token-waste-audit.md) `claude-code-token-waste-audit` | Where your setup wastes tokens each turn: measured, each instruction line marked Keep, Move or Cut, applied on your OK. |
| [Rules check for Sol and Luna after Astra cleanup](references/rules-check-for-sol-and-luna.md) `rules-check-for-sol-and-luna` | Rules trimmed for Astra can drop checks Sol and Luna still need: Astra finds what was lost, each model's rules kept apart. |
