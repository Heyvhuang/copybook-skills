# Models and effort

The one place for exact model IDs and effort in a coordinator run; in that run it replaces parallel-goal-fleet's model and effort defaults. The table holds the defaults the example run used, as written on 16 Nov 2026, with that run's reasons. They are an example, not a ranking: put in the models your account offers, and change a row when a run has shown how a model does, never just because a newer one came out. Herdr launch flags: SKILL.md (Runtime) and `references/herdr.md` §0; T3 option ids: `references/t3.md`; Orca flags: `references/orca.md`; Paseo fields and the user's profiles: `references/paseo.md`.

## Overrides

- The user's explicit choice wins: a model for one lane, or a policy for the run ("Opus for every review"). Write it in the run record with where it came from.
- Write the model and effort each lane actually starts on in the Lanes table (`Kind / model / effort`), and update the cell if the lane restarts on another.
- A fallback (end of "Reaching each model") goes in the record with its reason; never swap models silently.

## Defaults (example run, 16 Nov 2026)

| Work | Model / effort | Why |
| --- | --- | --- |
| Front end, design drafts, UI polish, logo, motion | Claude Opus 5.5 (`claude-opus-5-5`), high; xhigh for design drafts or the judging lane | Opus writes the design directly from the first step; Codex never edits front-end files. |
| Back end, SQL, migrations, payments, MCP | Codex `gpt-6.1-sol`; xhigh when hard or risky, else high | Strong at back-end work, and the GPT quota went further. |
| Review of risky changes or difficult cross-module diagnosis | Codex `gpt-6-astra`, xhigh when warranted | Raise effort for money, sign-in or permissions, outbound messages, durable writes to external systems or production, privacy, or costly cross-module failures. Name the exact head, affected paths and shared callers, and why they need deeper review. |
| Routine review, test-only follow-ups, scans, audits | Codex `gpt-6.1-sol`, high | Start here. Apply the risk row if a test change alters the evidence for a required check on a sensitive path. Codex may review front-end lanes; it never edits them. |
| Gates, ship lane, mechanical follow-ups | Codex `gpt-6.1-sol`, medium (Opus 5.5 medium for front-end files) | Long, mechanical work. |
| Lists, extraction, formatting | Claude Sonnet 5.5 (`claude-sonnet-5-5`), medium | Cheap volume. |
| Second reader for design and copy (optional) | Gemini 4 Argon through `scripts/gemini.mjs`, or a second Claude reviewer | Read-only feedback on the proposed work. |

Fable was left out to save quota. `max` only when the user asks; an Opus max round took over an hour on a loaded machine.

For money and auth, the example run used two reviewers on different models because each caught a serious defect the other missed. Adopt that per run when the stakes justify it.

Codex flags inherit the host's sandbox and network settings; `--add-dir` adds a writable directory, it does not make a reviewer read-only. With full access, "read-only" (reviewers, the second reader) is something the brief asks for and the coordinator checks in the diff.

## Quota

Weekly quotas are shared by every project on the machine. Claude Code usage shows on a worker's status line or `/usage`; Codex shows `weekly NN% left`. For unattended runs ask the user for a stop threshold (the example run stopped new work at 40% left).

Some plans keep running on paid credits once the quota is used up. Before an unattended run, agree with the user whether lanes may use credits and where they stop (an amount, or none at all), and write it with the run's grant. Once a run is on credits, say so in the record and in progress reports.

## Reaching each model

| Model | Herdr | T3 Code | Orca | Paseo |
| --- | --- | --- | --- | --- |
| Claude | `--kind claude`, `--model <id>` | `claudeAgent` child task, option `effort` | `--agent claude --model <id> --effort <e>` | `create_agent` `provider: "claude/<id>"` (or a custom Claude provider for another account), `settings.thinkingOptionId` |
| Codex | `--kind codex`, `-m <id>` | `codex` child task, option `reasoningEffort` | `--agent codex --model <id> --effort <e>` (no speed-tier flag: `references/orca.md`) | `create_agent` `provider: "codex/<id>"`, `settings.thinkingOptionId`, speed tier in `settings.features.service_tier` |
| Gemini (a report-only reader through Antigravity's `agy`) | `--kind agy -- --model gemini-4-argon-<low/medium/high> --dangerously-skip-permissions` (measured: one query task, Nov 2026) | `antigravity` child task, option `thinking_level` (low, medium, high) (measured: one query and one commit lane, Nov 2026) | `--agent antigravity --model <id>` (measured once: `references/orca.md`, Trial) | `create_agent` `provider: "antigravity/<id>"`, the profile's `settings.modeId` (`full-access` with no profile) (measured once: `references/paseo.md`, Trial) |

Antigravity's FAQ warns that third-party agents driving `agy` on consumer plans can lead to account suspension; `scripts/gemini.mjs` through the Vercel AI Gateway (Gemini, below) is the alternative.

When a model is out of reach (quota, outage, provider disabled): Codex Astra review → Codex Sol xhigh plus a second Claude reviewer, flagged in the record; second reader → `scripts/gemini.mjs` if you set it up, else a second Claude reviewer, else decide alone and mark the decision for the user's confirmation; front-end work never falls back to Codex.

## Gemini (optional)

Use the optional second reader for feedback. For copy, ask it to check wording and tone in the languages used. For visual review, give it the screenshots and the brief, and choose a model that accepts images. Give either reviewer the applicable rules and the run's taste notes (`<run-dir>/taste.md`).

Run `node <skill>/scripts/gemini.mjs <prompt.md> <out.md> [images…]` to send text and images through the Vercel AI Gateway, with no tools. Set `GEMINI_MODEL` to an available Gateway model ID for the review and use `AI_GATEWAY_API_KEY` for access. Use the helper only where the user agreed to the cost.

## Images

Follow the image-review rule the run sets. The example run had Claude and Gemini both pass each generated image before it went on the site; if one of them couldn't review, the image waited. Generation costs credits: stay inside the budget the user gave. Generate through the project's own image account, never another product's; if a lane used the wrong one, save the outputs, delete what it created there, and switch.
