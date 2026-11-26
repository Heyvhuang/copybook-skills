# Paseo adapter

Paseo lanes: recommended when the coordinator runs inside [Paseo](https://paseo.sh), as a Paseo agent chat with the Paseo tools (SKILL.md, Runtime). They need that host: finish reports go to the agent that created the lane, so a coordinator elsewhere has nothing to wake it. Lanes that need what only Herdr has still go to Herdr. Briefs, READY lines, the run record, gates and shipping stay as in SKILL.md; this page only maps the lane mechanics.

Sources, named after each fact: **[docs]** the pages at paseo.sh/docs (cli, mcp, orchestration-workflows, agent-profiles, custom-providers), read 2026-11-25; they state no version. **[CLI]** `paseo --help` and `paseo <command> --help`, CLI 0.17.4. **[MCP]** the Paseo MCP tool schemas as a Paseo 0.17.4 agent sees them. **[source]** Paseo 0.17.4's source, read but not run. **[trial]** this skill's first Paseo run, 2026-11-25 (Trial, below). A fact with none of these is marked unverified. No Paseo lane has yet run brief → READY → repair → ship on a real repo.

Terms: a **provider** is an agent backend with its own account (`claude`, `codex`, or a custom one); a **profile** is a named provider, model, mode, thinking level and features bundle the user saved for one kind of work, with a "When to use" note [docs]. A **workspace** is a local checkout or a Paseo-managed worktree [MCP]. A lane is one Paseo agent.

## Once per run, before the first lane

`P` is the Paseo CLI (`$PASEO_CLI`, else `paseo`). The MCP tools below reach a Paseo agent when the user has Paseo tools turned on in Paseo's settings [trial].

- **Host.** `PASEO_AGENT_ID` set means this process descends from a Paseo agent; `PASEO_WORKSPACE_ID` is its workspace [docs]. Child processes inherit it [source], so a Herdr pane started from a Paseo agent has it too: the host is Paseo only when `create_agent` is also in this session's tool list. Without the tools, ask the user to turn them on or use Herdr; lanes started with `P run` are not known to report back. A `paseo` on PATH or a running daemon (`P status`) only means Paseo is installed [docs, CLI].
- **Profiles.** `list_profiles` returns each profile's provider, model, `modeId`, `thinkingOptionId`, `options` and `notes` [MCP, trial]. `create_agent` has no profile parameter [docs, MCP]: pick the profile by its notes, then copy `provider/model`, `settings.modeId`, `settings.thinkingOptionId`, and `options` into `settings.features`. The user's profiles win for the roles they cover; `references/models.md` fills the rest. When a profile's provider or model is unavailable, check `list_providers` and `list_models` and write the choice in the record; never swap provider silently, since another provider can mean another account and another mode.
- **Permission mode.** Each lane's mode is `settings.modeId` on `create_agent` [MCP]. A profile's `modeId` is the user's permission choice for that work: use it as saved, and start a lane above it only when the user has said so for this run. With no profile configured, the skill's full-access default applies: Claude `bypassPermissions`, Codex `full-access`, Antigravity (Gemini) `full-access` [MCP: `list_providers`]. A provider fallback keeps the mode level of the profile it replaces; a higher mode needs the user's yes for this run. Either way, say each lane's mode in the line that tells the user the runtime, before the first lane starts. Prompting modes: Claude `default` or `auto`, Codex `auto` (Codex has no `default`) [MCP]. Never raise a running lane's mode (`set_agent_mode`, `update_agent`, `sessionMode` on `send_agent_prompt`) to get past a prompt.
- **Account, per provider.** A provider is an account. A second Claude account is a custom provider in `agents.providers` of `~/.paseo/config.json` with `"extends": "claude"`, a `label` and `env.CLAUDE_CONFIG_DIR` pointing at a directory where that account signed in to Claude Code [docs: custom-providers shows `extends` and `env`; `CLAUDE_CONFIG_DIR` from Paseo issue 9305; measured in the trial]. The account is fixed when the agent is created (Paseo issue 2780, closed not planned): to change account, start a new lane on the other provider and hand over through files. Never edit Paseo's config, sign anyone in, or restart or reload the daemon yourself (`P restart` and `P reload` touch every agent on the machine); if the account is wrong, ask the user. Record only the sign-in method and whether it is the intended account. A Codex account per provider (`CODEX_HOME` in `env`) is unverified.
- **Codex speed tier and plan mode.** `inspect_provider` with `codex/<model>` (the bare `codex` lists no features) shows `service_tier` (`default`, `flex`, `priority` "Fast", `ultrafast`; "Faster tiers increase usage") and `plan_mode` [MCP]. Codex lanes pass `settings.features.service_tier` explicitly, a paid tier only with the user's yes (`references/models.md`); `create_agent`'s schema example `{ fast_mode: true }` is a Claude feature in 0.17.4 [MCP]. A `plan_mode` reviewer cannot write files, even in `full-access` [trial]: it returns the review in its final message and the coordinator saves it as `review-<lane>.md`, reading the full text with `get_agent_activity` because the report truncates long replies [trial].
- **Record** in the run record header: host Paseo, the coordinator's agent id and workspace id, and the profiles read; for each lane its agent id, workspace id, branch and base SHA.

## Mapping

| Coordinator step | Paseo |
| --- | --- |
| Start a lane | Writer lanes: `create_workspace` with `isolation: "worktree"`, `mode: "branch-off"`, `path` = the source checkout, `baseBranch` = the freshly fetched remote ref (`origin/main`), `branchName` = the lane branch, `worktreeSlug` [MCP]; check the worktree's HEAD equals the recorded base SHA. Then `create_agent` with `title` (≤ 60 chars), `provider` = `<provider>/<model>`, `settings` = `{modeId, thinkingOptionId, features}` from the profile, `workspaceId`, `labels` (e.g. `run`, `lane`), `initialPrompt` = "Read <run-dir>/<brief>.md and follow it; end with the READY line it names", `notifyOnFinish: true` and `background: false` (unset inherits the caller's value; `true` hides the lane from the Subagents panel) [MCP]. Review lanes go in the writer's workspace and read the pinned head (`git -C <wt> show <sha>:<path>`, `git diff <base>..<sha>`), with no checkout, branch, commit or install there [trial]. On a failed start or no reply, check `list_agents` and `list_workspaces` before retrying. |
| Watch | End the turn. A finish report never enters a running coordinator turn: it waits until the turn ends, then wakes the coordinator, in order [trial, source]. So keep turns short and never wait in the foreground (`P wait`, sleep loops): a lane on a permission prompt waits until your turn ends. `watch-ready.sh` can keep running for Herdr lanes in a mixed run. |
| Collect | The report carries the lane's last response [MCP, trial]. A lane can send `finished` with no new READY line (one lane sent two) [trial]; errors and cancels arrive as other events [source]: a report with no new READY line is a stop, not a completion, so read the lane's status and match reports to READY lines by head. The proof is the READY line, the hand-over file and your checks (SKILL.md, Collect). |
| Lane question or permission prompt | A permission request is reported to the coordinator [MCP; untested]. `list_pending_permissions` spans every agent on the machine: act only on requests from your own lanes' agent ids. `respond_to_permission` takes `agentId`, `requestId` and `response: {behavior: "allow"}` or `{behavior: "deny", message: "<reason>"}` [MCP]; CLI `P permit allow\|deny <agent> [req_id]`, `--message` on deny only [CLI]. Never `--all` or `updatedPermissions`. Allow only an action the brief already covers; SKILL.md's Permission list goes to the user; when unsure, deny with the reason. A question ends the lane's turn and wakes you; answer with a follow-up. |
| Follow-up to the same lane | `send_agent_prompt` with `activeTurnBehavior` left out: the default `queue` waits for the running turn to end [MCP, CLI]; messages arrive in send order. A message to an idle lane starts a turn at once [trial]. A turn that ends while a queued message waits rolls straight into the next turn with no `finished` report of its own, so each step's proof is its READY or GATE line in the files, and a backstop wake catches the gap [trial]. |
| Change of course now | `activeTurnBehavior: "steer"` joins the running turn, and a provider that cannot steer interrupts it instead; `"interrupt"` stops the turn and starts a new one [MCP]. An unread steer is lost if the turn stops, with the queued messages it carried [MCP]: read `get_agent_activity` after a steer. Steer only a correction that must reach the current turn. |
| Stuck lane | `get_agent_status` (status, `activeTurn`, `pendingPermissions`, `requiresAttention`, `attentionReason`) and `get_agent_activity` with a low `limit` [MCP, trial]. |
| Stop | `cancel_agent` aborts the current run and keeps the agent; `kill_agent` ends it for good [MCP]. Prefer `cancel_agent`, then check the effect you were stopping did not happen (no push, migration or deploy). |
| PRs | Lanes open their PRs per the brief. A branch-off worktree has no upstream [trial]: the first push is `git push -u origin <branch>`. |
| Close | After the PR ships or the review is collected: `get_agent_status`, then `archive_agent` (it interrupts a running agent) [MCP]. `archive_workspace` archives every agent in the workspace and can force-remove the worktree [source]: use it only on a workspace that neither a live lane nor the coordinator uses, after its PR merged and nothing in the worktree is still needed (unpushed commits, untracked or ignored files). Never on the coordinator's own workspace. |
| Show the user | Visible lanes show in the Subagents panel beside the coordinator's chat [MCP, trial]; `P agent open <id>` opens one in Paseo Desktop [CLI]. Tell the user the lane titles. `scripts/status.sh <run-dir> <any-name>` shows READY lines, gates and the log; its Workers section reads Herdr only. |
| The user's decisions | Ask in the coordinator's chat, one decision per question (SKILL.md, Reporting). |
| Cloud gate | On a Herdr pane for now (`references/pipeline.md`). A Paseo terminal starts the session: `create_terminal` in the worktree, the command by `send_terminal_keys` (`literal: true`), then `Enter`; `capture_terminal` shows the URL; `kill_terminal` after [MCP, trial]. Its result is untested (Trial). |

## Brief additions

- Completion stays in files. The READY line and the file path also go in the lane's final message, so the report carries them. A lane does not end its turn while a background job it started is still running.
- Base: `create_workspace` creates the lane branch at `baseBranch`; `origin/main` gave HEAD = the fetched SHA [trial]. A SHA as `baseBranch` is unverified. The writer brief still checks HEAD against the pinned SHA (`templates/lane-brief.md`).
- Setup: the trial's new worktree had no `node_modules` [trial], and `P workspace setup <id>` "Allow and run setup" [CLI] suggests setup scripts may wait for approval. The brief installs through `heavy.sh` only what is missing.

## What does not carry over

- **Coordinator hand-over.** A fresh coordinator session is a new agent: it checks each lane with `get_agent_status`. Reports from lanes the old coordinator started may not reach it (unverified); a follow-up from the new coordinator subscribes it [MCP: `notifyOnFinish` on `send_agent_prompt`].
- **Idle release.** Paseo Desktop can release an idle agent's process after a set time (a desktop setting). Whether a follow-up to a released lane keeps its context is unverified: send repairs while the lane is fresh, or carry the full context in the repair.
- **Unattended stretches.** There is no `STOPPED` signal; an error report for a quota stop or crash is documented [MCP], untested. Before one, arm one deadline wake with `create_heartbeat` (`cron`, `maxRuns: 1`, `expiresIn`) [MCP]; it wakes an idle coordinator [trial]. Delete it after use: each fire is a turn.
- **Remote machines.** `create_workspace` and `create_agent` take a `serverId` [MCP]; remote lanes stay on Herdr until tested.

## Still unverified

A Paseo-terminal cloud gate's result; steer on a working lane; error and permission reports; whether `service_tier` and the thinking level reach a Codex session; a Codex account per provider; a follow-up to an idle-released lane; lanes and reports surviving a daemon restart; reports reaching a new coordinator after a hand-over; a SHA as `baseBranch`; long lanes that compact; a real repo task (brief → READY → repair → ship).

## Trial

### 2026-11-25, first run (the run that wrote this page)

Coordinator: a Paseo 0.17.4 agent on a custom Claude provider (Opus 5.5) in a local-checkout workspace. One writer lane, a second writer lane, three review lanes; times UTC.

| Step | What happened |
| --- | --- |
| `create_workspace` (worktree, branch-off, `baseBranch: origin/main`) | Returned at once; HEAD = the fetched base SHA; branch checked out; no upstream; no `node_modules`. |
| Writer lane (custom Claude provider, `bypassPermissions`, thinking high) | Returned at once, running. Mode `bypassPermissions`; wrote outside its worktree with no prompt; `CLAUDE_CONFIG_DIR` = the custom provider's directory: a lane on another account through a custom provider works. Hand-over about 7 min after start. |
| Reports while the coordinator's turn ran | The writer's two `finished` reports (its READY turn and a later short turn) were held during the coordinator's turn and delivered in order when it ended, with the lane's last response. |
| Heartbeat | Fired on time and woke an idle coordinator. |
| Steer to an idle lane | Started a new turn at once. |
| Three reviewers in parallel, one message | Codex review profile with `plan_mode`, `full-access`: could not write its probe or review file, returned the review in its final message, which the report truncated. A Claude reviewer on Fable 5.2 through a custom provider: wrote its files. Antigravity Gemini, `full-access`: wrote its files. |
| Feature ids | Claude: `fast_mode`, `ultracode`. Codex: `service_tier`, `plan_mode`. |

### 2026-11-25, cloud gate from a Paseo terminal

A lane tried gating its docs PR with a cloud session (Sonnet, bypass) started from a Paseo terminal.

| Step | What happened |
| --- | --- |
| Start | `create_terminal`, the command by `send_terminal_keys` with `literal: true`, then `Enter`: the session URL printed and the command returned in 22 s; no other key. |
| Result | No PR comment within 45 minutes, cause unknown. The PR got a local gate. |

## Where Paseo pays

1. **Reports with no watcher** [trial]: finish reports wake an idle coordinator, with no watcher to re-arm (`references/lessons.md`: "The watcher lapsed after a long review and lines piled up").
2. **A per-lane account and Codex speed tier** through a custom provider and `settings.features` (Claude account measured; tier from the schema).
3. **Follow-ups that queue, steer or interrupt** [MCP; steer on a working lane untested]. Orca has no mid-turn steer.
4. **A worktree and an agent in two calls**, with the user's profiles as the model table's source; no input box to check [trial].

Stay on Herdr for: interactive cloud gates, live worker status in `status.sh`, remote machines, and a Codex lane on a second account, until the tests below pass.

## Next tests, in order

1. A lane in a prompting mode that hits a permission prompt, one that hits its quota, with the coordinator's turn ended: which reports arrive, and does `respond_to_permission` let the lane go on?
2. Steer and interrupt on a working Claude lane and a working Codex lane.
3. `service_tier` and thinking level on a Codex lane: does the session use them?
4. A daemon restart and an idle release with a lane mid-task: does it resume, keep its context, and still report?
5. A coordinator hand-over: do the new coordinator's follow-ups bring the lanes' reports to it?
6. One full lane on a real repo: brief → READY → repair → ship.

Until these pass, tell the user which are still open when you recommend Paseo for a long or unattended run.
