# Orca adapter

Orca lanes: recommended when the coordinator runs inside [Orca](https://github.com/stablyai/orca), as an Orca bot or an Orca workspace chat (SKILL.md, Runtime). They need that host: a coordinator elsewhere has nothing to deliver their mail. Lanes that need what only Herdr has still go to Herdr. Briefs, READY lines, the run record, gates and shipping stay as in SKILL.md; this page only maps the lane mechanics.

Facts below come from the Orca CLI 1.4.273 help and its bundled `orchestration` skill, read 2026-11-24, and from a trial on throwaway workers the same day (end of this page). No Orca lane has yet run brief → READY → repair → ship on a real repo. Orca's own guide: `orca skills get orchestration` (and `--reference references/<file>.md`).

Terms: a **Run** is one coordinator's set of workers; a **Task** is one piece of work in it, and a **dispatch** one attempt at a Task by one worker. A **structured** worker is a chat agent with no terminal. `antigravity` is Orca's agent id for Gemini. A **bot** is a standing Orca agent with its own chat and items; a **workspace chat** is an agent chat inside one repo workspace.

## Once per run, before the first lane

These are tests to run, not things to confirm. `O` is the Orca executable (`${ORCA_CLI_COMMAND:-orca}`).

- **Full access.** `worker-start` has no permission flag; Orca sets each agent's mode from its own settings. Start one throwaway worker per agent you will use. Have it write a file outside its worktree (and outside the temp directory) and report its own permission mode. Say the mode each agent got in the line that tells the user the runtime. If it prompts or runs in a restricted mode, stop and put it to the user as a decision; don't change Orca's or the agent's settings yourself. In the trial, Claude ran in `bypassPermissions` although the user's Claude settings said `auto`, and Gemini was launched with `--dangerously-skip-permissions`, so Orca chose those modes; Codex's own config already set `never` and `danger-full-access`, so Orca's part there is unknown.
- **Permission prompts.** A prompt reaches you as an `escalation` with its approval id. `O orchestration deny --dispatch <id> --prompt <approval_id> --reason <r>` refuses it. `O orchestration approve` (same arguments; missing from `orchestration --help`'s list) allows it once, and only when the user has turned on "Let coordinators approve worker permission prompts" on the worker's machine; a prompt the agent reserves for a person stays with the user. Approve only an action the lane's brief already covers. Anything on SKILL.md's Permission list goes to the user; when unsure, deny with the reason.
- **Account.** `O account list --agent claude` and `--agent codex` show which managed account is active for new launches. If it is not the account the user means to bill, ask the user to switch it. Never run `O account select` yourself: it changes every later launch on the machine, the user's other work included. In the first Claude worker, `claude auth status` shows the sign-in; `codex login status` shows only the sign-in method. Record only the sign-in method and whether it is the intended account, never the raw output (it holds the email and plan).
- **Codex speed tier and approvals.** Orca has no flag for either. Have the first Codex worker print `service_tier`, `approval_policy` and `sandbox_mode` from its `config.toml`. The tier a session actually uses can't be read from inside it, so if the config sets a paid fast tier, tell the user before starting more Codex lanes.
- **Run id.** The first `worker-start --spec…` creates and binds a Run, or joins the one already bound to this coordinator; the receipt names it. Record it (`O orchestration run-current --environment local`). A new coordinator session resumes it with `O orchestration run-use --environment local --id <run_id>`.
- **Record** in the run record header: host Orca (bot name or workspace) and Run id; for each lane its Task id, dispatch id and workspace name.

## Mapping

Pass multiline text with `--spec-file` or `--body-file`, never a heredoc. Keep every Run operation on this machine's Orca: pass `--environment local` on starts, lists, `repo list`, `run-current` and `run-use`. (`--on <server>` only places a worker elsewhere; see item 6 under Where Orca pays.)

| Coordinator step | Orca |
| --- | --- |
| Start a lane | `O orchestration worker-start --environment local --spec-file <run-dir>/<brief>.md --worktree new-top-level --repo id:<repoId> --base-branch <ref> --name <lane> --agent claude --model <id> --effort <e> --keep-open` (`--agent codex` likewise; `--agent antigravity --model <id>` runs Gemini, tried once). The repo id comes from `O repo list --environment local --json`. From an Orca bot add `--item <n>` for the run's item. Prefer `new-top-level`; `new-child` nests under the coordinator's own workspace and is unverified from a bot. Orca's `references/parallel-start.md` puts a start at often about 10 s (2 to 3 s in the trial); start up to 4 from one shell command, each with its own receipt and error file. A missing receipt means `O orchestration worker-list --environment local` first (add `--run <run_id>` once the Run is known; without it the list may span every Run, so match the attempt by name and time), never a blind restart. A failed start: follow its `failedStage`. |
| Watch | When idle, end the turn: `worker_done`, `question` and `escalation` mail wakes the coordinator. Never run a poller that calls `orca orchestration check`: it takes the mail, and nothing wakes you. `watch-ready.sh` doesn't call it, so it can keep running for Herdr lanes in a mixed run. |
| Collect | The mail is the wake signal. The proof is the READY line, the hand-over file and your checks (SKILL.md, Collect). Recent output: `worker-read --dispatch <id>`; it stays readable after release. |
| Lane question | `O orchestration reply --id <message_id> --body-file <f>`. Answer from the brief and the user's instructions, decide routine choices yourself and log them; ask the user only what SKILL.md says is theirs. |
| Follow-up to the same lane | `O orchestration send --to dispatch:<id> --subject <s> --body-file <f>`. A working worker gets it when its current turn ends. A finished one gets it as a follow-up Task; read the receipt, which says whether the session reopened, resumed, started fresh with prior context, or was refused (workspace or agent gone). |
| Change of course now | There is no mid-turn steer. `O orchestration worker-stop --dispatch <id>` and read its receipt. `stop_unknown` (exit 1) wins over everything else in it, `closed_agent_terminal` included, which only says Orca issued the close: read `worker-show`, report it to the user and start nothing. Only on a confirmed stop (exit 0, no `stop_unknown`) check the effect you were stopping did not happen (no push, migration or deploy), then start the new brief as a new Task, since it is different work. `--retry-of` is only for retrying a failed attempt of the same Task after its cause changed; three failed starts in one chain break the Task, and the guide forbids routing around that with a new Task. Holds keep risky operations out of briefs, so the missing steer costs tokens, not safety. |
| Stuck lane | `worker-show` (liveness, `stopReason`, `observation.agentWait`; an absent `agentWait` means unknown, not "not waiting") and `worker-read`. For an unsettled lane that shows `lost` or `unverifiable`, never start a second agent: report it. For a permission prompt, see Permission prompts above. |
| Stop | `worker-stop --dispatch <id>`, as in Change of course. |
| PRs | Lanes open their PRs and own them per the brief. `O automations watch-pr <owner/repo#n> --bot <name>` is optional: pin `--runs-in chat` with a read-only prompt, never `new` (that starts an agent outside the gate). It fires once; re-read the head and checks, then re-arm if needed. The deadline is 2 h unless `--for` or `--by`. |
| Close | After the PR ships or the review is collected, as in SKILL.md: `worker-release --dispatch <id>`. Writer lanes stay open until they ship (new worktrees stay open by default; pass `--keep-open` anyway). After ship, `O worktree rm --worktree <selector>` removes the workspace; a later `send` to that dispatch is then refused. |
| Show the user | Each worker shows in Orca's sidebar as its own workspace with its chat; tell the user the workspace names. `O worktree ps` and `worker-list` give liveness in one call. `scripts/status.sh <run-dir> <any-name>` still shows READY lines, gates and the log (it needs a session argument), but its Workers section reads Herdr only. |
| The user's decisions | From an Orca bot: one item for the run, not one per lane. `O bot item set <n> --status needs-you --comment <context> --ask <question> --option <label> …`. A new set of questions replaces any still unanswered, so send every open question that still matters in the same update. |

## Brief additions

- Completion stays in files. After the READY line and the hand-over file, the worker reports `worker_done` with `--report-path <run-dir>/handover-<lane>.md` (reviews: the review file).
- Base: `--base-branch` takes a ref; a SHA there is unverified. Orca's new worktree starts on a branch of its own naming (a configurable prefix plus `<name>`; in the trial, `<github-user>/<name>`). A writer brief checks out the lane branch at the pinned SHA as `templates/lane-brief.md` says; a review brief checks out the head it reviews and creates no branch.
- Setup: a new worktree runs the project's setup hooks unless `--setup skip` or the project turns them off, possibly beside the agent rather than before it. Four starts at once means four installs outside `heavy.sh`; when installs are heavy, pass `--setup skip`. Either way the brief checks dependencies at its head and installs through `heavy.sh` only what is still missing.

## What does not carry over

- **No `STOPPED` signal.** Orca mails you when a terminal worker exits without reporting (structured workers: unverified). A permission prompt should arrive as an `escalation` (documented, untested here); a question a worker leaves in its own chat, a prompt only a person can answer, or a quota stop may send nothing (unverified). Before an unattended stretch, an Orca bot arms one deadline wake (`O automations create … --once --by <time>`, bots only) and runs `worker-list` when it fires. A coordinator in a workspace chat has no deadline wake: run unattended lanes on Herdr (SKILL.md, Runtime) until Next test 2 has run.
- **Cloud gates** (`claude --cloud` needs an interactive terminal, `references/pipeline.md`) stay on a Herdr pane.
- **Orca Task DAGs and `gate-create`** are not used: `STATE.md` and `gate/queue.md` already hold that. Orca's "gate" is a decision gate, not the skill's merge gate.

## Still unverified

A SHA in `--base-branch`; `new-child` from a bot; whether a follow-up to a *released* worker keeps its context (a settled, still-open one did: Trial); a wake after the coordinator's turn has ended (the trial saw mail reach a running turn); whether mail reaches a fresh coordinator session after `run-use`; workers surviving an Orca restart; which account a Codex worker bills; the effort and speed tier a Codex session actually uses; more than 4 concurrent lanes; long lanes that compact; a real repo task (brief → READY → repair → ship).

## Trial

### 2026-11-24, first trial

One Run in a throwaway repo, coordinator inside an Orca workspace chat: three Tasks started from one shell (Claude first, then Codex and Gemini in parallel), `--worktree new-top-level --setup skip --keep-open`, then one follow-up Task. Each worker wrote `date -u` to a file outside its worktree, reported pwd, env, sign-in and session mode, wrote a hand-over ending in a READY line and sent `worker_done --report-path`. Seconds from the start command to the receipt and to the hand-over file, by file times (follow-up: from the follow-up brief's file time, so at most 7 s).

| Lane | Receipt | Hand-over | Full access | Sign-in and configuration |
| --- | --- | --- | --- | --- |
| Claude Opus 5.5, `--effort medium` | 3 s | 16 s | yes, `bypassPermissions`, no prompt | claude.ai subscription sign-in, default config directory |
| Codex `gpt-6.2-sol`, `--effort medium` | 3 s | 28 s | yes, `never` + `danger-full-access`, no prompt | ChatGPT sign-in, default `CODEX_HOME`; `config.toml` sets `service_tier = "default"` (active tier unverified) |
| Gemini 4 Argon (`--model gemini-4-argon-medium`, receipt shows `gemini-4-argon`, effort medium) | 2 s | 49 s | yes, `agy acp --dangerously-skip-permissions`, no prompt | agy 1.5.16 has no command that shows the signed-in account |
| Follow-up to the settled, still-open Claude worker (`send --to dispatch:`) | at once, as a follow-up Task | 7 s | — | it answered the first task's time from memory: context kept |

All three ran in Orca's `structured` mode (`worker-read --source auto` reads the transcript). Each `worker_done` reached the coordinator while its turn was still running; when idle, end the turn as the receipts say. `worker-release` closed each terminal and kept its transcript.

Effort: a live Claude worker's argv (`ps`, a later worker started with `--effort high`) carried `--effort=high --model=<id>` as passed, so `--effort` reaches Claude. The Opus worker reported "low" for a medium request; Orca's guide warns that the numeric `reasoning_effort` a model sees is not on a 0–100 scale, so that is probably a misread, unconfirmed. Codex and Gemini effort were not checked.

## Where Orca pays

From the trial and two read-only second opinions from other models (2026-11-24), ranked by gain per effort. Start times were not measured the same way on both runtimes (Orca: 2 to 3 s from each start command to its receipt; Herdr: six panes ready within 4 to 8 s of each other, `references/t3.md`), so this ranks stalls saved, not speed.

1. **Completion wakes with no watcher.** Measured: each `worker_done` reached a running turn. A wake after the turn has ended comes from Orca's guide, not this trial. For a coordinator hosted in Orca it removes the watcher that has to be re-armed after every fire (`references/lessons.md`: "The watcher lapsed after a long review and lines piled up").
2. **Repairs to the same worker.** `send --to dispatch:<id>` to a settled, still-open worker kept its context (measured, Claude only). Send repairs there; release after ship, as in Close, until a follow-up to a released worker is tested.
3. **Questions and prompts as mail.** `orchestration ask` wakes the coordinator with a worker's question; a permission prompt arrives as an escalation with its approval id, and `worker-show` names a worker parked on a prompt only a person can answer. On Herdr that is a `STOPPED` guess and a pane read. Unverified: no trial worker asked or hit a prompt.
4. **No input box to check.** Structured workers take the brief as input, so no unsent text and no first-launch dialog swallowing a task.
5. **Event wakes for shipping** (unverified). `O automations trigger-options --source github` lists `github.ci_finished`, `github.pr_conflicted`, `github.deploy_finished` and `github.comment`. They need an Orca bot and the Orca GitHub app on the repo. Your own comments, reviews and labels start nothing, while CI results, conflicts and deployments on your own commits still do; `ci_finished` and `pr_conflicted` need `subject=<PR>`, and `ci_finished` never fires on a repo with no CI checks.
6. **Lanes on a second machine** (future trial; remote lanes go to Herdr today): the largest ceiling gain and the most setup. `worker-start --on <server>` runs the worker on a paired Orca server (`orca serve`) while the Run stays here. `--spec-file` is read on this machine, so the server also needs the repo, agent sign-ins, the brief's inputs, a path the hand-over can come back by, and its own heavy-check slots. Unverified.

Stay on Herdr for: steering a working lane mid-turn (Orca mail waits for the turn to end), a per-lane account or Codex speed tier (Orca has neither flag), interactive cloud gates, and live worker status in `status.sh`.

## Next tests, in order

1. Restart Orca with a lane mid-task: does it resume, and does its mail still arrive?
2. One lane that asks, one that hits a permission prompt, one that hits its quota, with the coordinator's turn ended: which of them wake it?
3. Hand-over: a fresh coordinator session, `run-use --environment local --id <run_id>`, then a worker reports.
4. Eight lanes (two starts of four) on a real repo with `--setup skip` and `heavy.sh`, and one full lane: brief → READY → repair → ship. Time each against the same tasks on Herdr, start command to READY.
5. A GitHub event wake on one PR; a paired server with one writer lane.

Until these pass, tell the user which are still open when you recommend Orca for a long or unattended run.
