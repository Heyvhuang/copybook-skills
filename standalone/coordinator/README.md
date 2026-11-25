# Coordinator skill for Claude Code and Codex

Two skills that turn one agent session into a coordinator for a fleet of Claude Code and Codex workers running in [Herdr](https://herdr.dev), T3 Code, Orca or Paseo. The coordinator never writes code itself. It splits the work into lanes (one worker, one branch, one brief), picks a model and effort for each, checks what comes back, follows the project's gate and release process, and brings you only the decisions that are yours. For batch releases it tests the ready PRs together and pushes each batch once. It picks the lane runtime by where it runs: Orca workers inside Orca, T3 Code child tasks inside T3 Code, Paseo agents inside Paseo, Herdr workers everywhere else (`skills/coordinator/SKILL.md`, Runtime).

It was distilled from a three-day production run: about 160 PRs, 107 lane briefs, 118 hand-overs, 166 batch test runs and a 1,484-line run record. Every rule in `skills/coordinator/references/lessons.md` comes from something that went wrong on that run. Made by [@Voxyz_ai](https://x.com/Voxyz_ai); the sanitized run is in `skills/coordinator/references/example-run.md`. Not affiliated with Anthropic, OpenAI or Herdr.

**Quick start**

- Needs: Herdr 0.9.5+ (a terminal workspace that runs and watches many coding agents at once), unless the coordinator runs inside Orca, T3 Code or Paseo; Claude Code and Codex CLI signed in; a git repo with the GitHub CLI (`gh`).
- Install: `npx skills@latest add Heyvhuang/copybook-skills --skill coordinator --skill parallel-goal-fleet`, both skills.
- Say: "You are the coordinator for this run. Goal: close issues #12 to #18, one PR each, CI green. Run directory: ../myapp-fleet" The coordinator picks the lane runtime from where it runs; name one ("Use Herdr for the lanes") only to override it.

Workers run with full access. Read the next section before the first run.

| Skill | What it does |
| --- | --- |
| `skills/coordinator/` | The coordinator role: runtime, model table, lane briefs, READY lines, project gates, shipping, permissions, overnight runs, release packets |
| `skills/parallel-goal-fleet/` | The Herdr mechanics underneath: sessions, starting and resuming workers, dispatch, quick second opinions, remote machines, cleanup |

## Read this first: workers run with full access

Workers start without permission prompts, so a run can go on overnight. Herdr workers get it from launch flags: Claude with `--permission-mode bypassPermissions`, Codex with `-s danger-full-access -a never`. The flags are on each worker's launch command; nothing changes your global Claude Code or Codex settings, and your other sessions keep their own permissions. A worker can edit any file and run any command your user account can.

Use it only on a machine and repositories where you accept that. To keep permission prompts, delete those flags from `skills/coordinator/SKILL.md` and both `references/herdr.md` files; the coordinator then answers each prompt in the lane's pane. Orca lanes ignore these flags: Orca sets each worker's mode from its own settings, so keeping prompts there is a change in Orca; T3 child tasks run with the access T3 Code gives them. Paseo lanes take the mode saved in the profile the coordinator picks for them (with no profile: Claude `bypassPermissions`, Codex `full-access`); to keep prompts there, save the profile with a prompting mode or ask the coordinator for one.

The skill still asks you before production-branch pushes without a covering grant, production database changes, migrations, money, privacy and deletion releases, spending, production settings, anything published to other people, and deleting remote data. A passing gate is evidence, not permission.

What the bundled scripts do: `heavy.sh` queues heavy checks into a few machine-wide slots and `watch-ready.sh` watches the run directory for READY lines and, given a Herdr session, for lanes that stop without one; neither makes a network call. `status.sh` redraws a read-only progress board every 20 seconds from the run directory and Herdr; given a repo path, it also reads that repo's remote main with `git ls-remote`, its only network call. `gemini.mjs` is optional and only runs when you turn it on for a run: it sends the prompt file and images you pass it to the Vercel AI Gateway (`ai-gateway.vercel.sh`), which forwards them to Google, using your `AI_GATEWAY_API_KEY`; a few cents per call; change the model with `GEMINI_MODEL`.

## Requirements

- Herdr 0.9.5 or later, unless the coordinator runs inside Orca, T3 Code or Paseo and no lane needs Herdr (SKILL.md, Runtime)
- Claude Code CLI and Codex CLI, both signed in; git and the GitHub CLI (`gh`)
- Workers run on your own Claude and Codex accounts and count against your plans' limits. Check your plan's terms before long unattended runs, and don't run it on a shared login. If your plan keeps going on paid credits after its quota, tell the coordinator before an unattended run whether it may use them and where to stop.
- Models: the example run used Claude Opus 5.5 and Sonnet 5.5 and Codex gpt-6.1-sol and gpt-6-astra (16 Nov 2026). Any models your account offers work. The coordinator takes its IDs and efforts from `skills/coordinator/references/models.md`; `parallel-goal-fleet` on its own starts from the two in its `SKILL.md`. Or name a model in your prompt: your choice wins, and the run record shows what each lane ran on.
- Optional: [T3 Code](https://github.com/pingdotgg/t3code), an open-source desktop app for Claude Code and Codex, the recommended runtime when the coordinator runs inside it (`skills/coordinator/references/t3.md`); [Orca](https://github.com/stablyai/orca) 1.4.273 or later, likewise (`skills/coordinator/references/orca.md`); [Paseo](https://paseo.sh) 0.17.4 or later with Paseo tools turned on, likewise (`skills/coordinator/references/paseo.md`); a Vercel AI Gateway key and Node 18+ for the Gemini second reader

## Install

```bash
npx skills@latest add Heyvhuang/copybook-skills --skill coordinator --skill parallel-goal-fleet
```

Pick both skills when it asks: `coordinator` needs `parallel-goal-fleet`. Or copy the two folders under `skills/` into `~/.claude/skills/` (Claude Code) or `~/.codex/skills/` (Codex).

Then check the workers once:

1. If you use Codex hooks, open Codex once in your project and trust them if it asks. Do it again whenever `~/.codex/hooks.json` changes, or every new pane loses its first task to the hook-review dialog.
2. Start one Claude worker and one Codex worker in Herdr with a one-line task each (inside Orca, T3 Code or Paseo, the coordinator runs the first-run checks in `references/orca.md`, `references/t3.md` or `references/paseo.md` instead). The first bypass launch of Claude Code asks you to confirm once; after that neither should stop on a dialog.

## Use

In your project, tell a Claude Code or Codex session:

```text
You are the coordinator for this run. Goal: <what done means, and the check that proves it>. Run directory: ../<project>-fleet
```

Keep the run directory outside the repo: the run record holds your words and approvals, which shouldn't end up in a commit. The coordinator writes the run record there, starts only the lanes the work needs, and wakes up when a lane writes its `<LANE>-READY <PR> <head>` line (in Paseo the lane's finish report wakes it, and the READY line is for acceptance). Watch Herdr workers in a Herdr tab or with `herdr --session <name>`; Orca workers appear as workspaces in Orca's sidebar, Paseo agents in the Subagents panel beside the coordinator's chat, T3 child tasks as links in the thread.

For a single task that only needs a few workers and no gates, `parallel-goal-fleet` alone is enough.

## Defaults you will probably change

- Model table (`skills/coordinator/references/models.md`): Opus for front end, Codex Sol for back end, gates and shipping, Codex Astra for risky reviews, Sonnet for lists. Codex reviews front-end files but never edits them. Fable is left out to save quota; `max` effort only when you ask.
- Heavy checks share 2 machine-wide slots (`HEAVY_SLOTS`).
- Overnight runs stop new work at a quota threshold you give (40% left on the original run).

## Known gaps

- Measured on one Mac with Herdr 0.9.5, Codex CLI 0.169 and Claude Code 2.1.28x. Herdr and both CLIs change fast; check `--help` when a flag fails.
- Steering and queueing a busy worker follow each CLI's documented keys (`skills/coordinator/references/herdr.md` §3, read 18 Nov 2026). Sending Claude Code's Ctrl+X chords through Herdr (`ctrl+x` in Herdr's key names), and whether `agent prompt` to a busy Claude worker queues every time, were not tested; read the pane after each send.
- T3 Code behaviour past about 10 concurrent lanes, and long lanes that compact, were not tested.
- Orca lanes were tried on throwaway workers only (full access, sign-in, follow-ups; 24 Nov 2026). They take their permission mode from Orca's and each agent's own settings, not from launch flags, so the flag advice above does not apply to them. An Orca restart mid-lane, more than 4 lanes and a full brief-to-ship lane were not tested (`skills/coordinator/references/orca.md`, Next tests).
- Paseo lanes were tried in one run (25 Nov 2026): worktrees, a Claude lane on a second account, finish reports waking the idle coordinator, a heartbeat wake, and reviewers on three providers (a Codex reviewer in plan mode could not write files). Error and permission reports, steer on a working lane, the Codex speed tier, idle release, a daemon restart and a full brief-to-ship lane were not tested (`skills/coordinator/references/paseo.md`, Next tests).
- The release-packet template assumes a Postgres-style database with migrations; adapt it to your stack.

## License

MIT, see [LICENSE](LICENSE).
