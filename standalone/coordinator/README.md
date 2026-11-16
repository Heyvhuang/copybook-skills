# Coordinator skill for Claude Code and Codex

Two skills that turn one agent session into a coordinator for a fleet of Claude Code and Codex workers running in [Herdr](https://herdr.dev). The coordinator never writes code itself. It splits the work into lanes (one worker, one branch, one brief), picks a model and effort for each, checks what comes back, tests ready PRs together in batches, ships each batch with one push, and brings you only the decisions that are yours.

It was distilled from a three-day production run: about 160 PRs, 107 lane briefs, 118 hand-overs, 166 batch test runs and a 1,484-line run record. Every rule in `skills/coordinator/references/lessons.md` comes from something that went wrong on that run. Made by [@Voxyz_ai](https://x.com/Voxyz_ai); the sanitized run is in `skills/coordinator/references/example-run.md`. Not affiliated with Anthropic, OpenAI or Herdr.

**Quick start**

- Needs: Herdr 0.9.5+ (a terminal workspace that runs and watches many coding agents at once), Claude Code and Codex CLI signed in, a git repo with the GitHub CLI (`gh`).
- Install: `npx skills@latest add Heyvhuang/copybook-skills --skill coordinator --skill parallel-goal-fleet`, both skills.
- Say: "You are the coordinator for this run. Goal: close issues #12 to #18, one PR each, CI green. Use Herdr for the lanes. Run directory: ../myapp-fleet"

Workers run with full access. Read the next section before the first run.

| Skill | What it does |
| --- | --- |
| `skills/coordinator/` | The coordinator role: runtime, model table, lane briefs, READY lines, batch gates, shipping, permissions, overnight runs, release packets |
| `skills/parallel-goal-fleet/` | The Herdr mechanics underneath: sessions, starting and resuming workers, dispatch, quick second opinions, remote machines, cleanup |

## Read this first: workers run with full access

Workers start without permission prompts, so a run can go on overnight: Claude with `--permission-mode bypassPermissions`, Codex with `-s danger-full-access -a never`. The flags are on each worker's launch command; nothing changes your global Claude Code or Codex settings, and your other sessions keep their own permissions. A worker can edit any file and run any command your user account can.

Use it only on a machine and repositories where you accept that. To keep permission prompts, delete those flags from `skills/coordinator/SKILL.md` and both `references/herdr.md` files; the coordinator then answers each prompt in the lane's pane.

The skill still asks you before production-branch pushes without a covering grant, production database changes, migrations, money, privacy and deletion releases, spending, production settings, anything published to other people, and deleting remote data. A passing gate is evidence, not permission.

What the bundled scripts do: `heavy.sh` queues heavy checks into a few machine-wide slots and `watch-ready.sh` watches the run directory for READY lines; neither makes a network call. `status.sh` redraws a read-only progress board every 20 seconds from the run directory and Herdr; given a repo path, it also reads that repo's remote main with `git ls-remote`, its only network call. `gemini.mjs` is optional and only runs when you turn it on for a run: it sends the prompt file and images you pass it to the Vercel AI Gateway (`ai-gateway.vercel.sh`), which forwards them to Google, using your `AI_GATEWAY_API_KEY`; a few cents per call; change the model with `GEMINI_MODEL`.

## Requirements

- Herdr 0.9.5 or later
- Claude Code CLI and Codex CLI, both signed in; git and the GitHub CLI (`gh`)
- Workers run on your own Claude and Codex accounts and count against your plans' limits. Check your plan's terms before long unattended runs, and don't run it on a shared login.
- Models in the default table: Claude Opus 5.5 and Sonnet 5.5, Codex gpt-6.1-sol and gpt-6-astra. To use others, change the model IDs in `skills/coordinator/SKILL.md`, `skills/coordinator/references/models.md`, `skills/coordinator/references/herdr.md`, `skills/parallel-goal-fleet/SKILL.md` and `skills/parallel-goal-fleet/references/herdr.md`.
- Optional: [T3 Code](https://github.com/pingdotgg/t3code), an open-source desktop app for Claude Code and Codex, as a fallback runtime (`skills/coordinator/references/t3.md`); a Vercel AI Gateway key and Node 18+ for the Gemini second reader

## Install

```bash
npx skills@latest add Heyvhuang/copybook-skills --skill coordinator --skill parallel-goal-fleet
```

Pick both skills when it asks: `coordinator` needs `parallel-goal-fleet`. Or copy the two folders under `skills/` into `~/.claude/skills/` (Claude Code) or `~/.codex/skills/` (Codex).

Then check the workers once:

1. If you use Codex hooks, open Codex once in your project and trust them if it asks. Do it again whenever `~/.codex/hooks.json` changes, or every new pane loses its first task to the hook-review dialog.
2. Start one Claude worker and one Codex worker in Herdr with a one-line task each. The first bypass launch of Claude Code asks you to confirm once; after that neither should stop on a dialog.

## Use

In your project, tell a Claude Code or Codex session:

```text
You are the coordinator for this run. Goal: <what done means, and the check that proves it>. Use Herdr for the lanes. Run directory: ../<project>-fleet
```

Keep the run directory outside the repo: the run record holds your words and approvals, which shouldn't end up in a commit. The coordinator writes the run record there, starts only the lanes the work needs, and wakes up when a lane writes its `<LANE>-READY <PR> <head>` line. Watch the workers in a Herdr tab or with `herdr --session <name>`.

For a single task that only needs a few workers and no gates, `parallel-goal-fleet` alone is enough.

## Defaults you will probably change

- Model table: Opus for front end, Codex Sol for back end, gates and shipping, Codex Astra for risky reviews, Sonnet for lists. Codex reviews front-end files but never edits them. Fable is left out to save quota; `max` effort only when you ask.
- Heavy checks share 2 machine-wide slots (`HEAVY_SLOTS`).
- Overnight runs stop new work at a quota threshold you give (40% left on the original run).

## Known gaps

- Measured on one Mac with Herdr 0.9.5, Codex CLI 0.169 and Claude Code 2.1.28x. Herdr and both CLIs change fast; check `--help` when a flag fails.
- Whether a busy Claude worker queues a new prompt reliably is not confirmed.
- T3 Code behaviour past about 10 concurrent lanes, and long lanes that compact, were not tested.
- The release-packet template assumes a Postgres-style database with migrations; adapt it to your stack.

## License

MIT, see [LICENSE](LICENSE).
