# Herdr in a coordinator run

Herdr lanes: recommended when the coordinator runs in a terminal, Codex or the Claude desktop app, for any lane that needs a cloud gate or a remote machine, and for mid-turn steering, its own account or Codex speed tier unless the host is Paseo (SKILL.md, Runtime). The mechanics live in the parallel-goal-fleet skill: its `SKILL.md`, `references/herdr.md` (session, worker start, dispatch, waiting, quick reviews) and `references/cleanup.md`. Read the section you need there. This page adds only what the coordinator learned on the example run. Counts from two coordinator transcripts: `agent prompt` 224, `pane read` 126, `agent list` 62, `agent start` 56, `workspace close` 33.

## 0. Full access and providers

Workers start without permission prompts (read the warning in SKILL.md, Runtime). Verified in Herdr 0.9.5, still the latest release on 25 Nov 2026:

| Provider | Start | Checked |
| --- | --- | --- |
| Claude | `H agent start <w> --kind claude --pane <p> -- --session-id <uuid> --model <claude-id> --effort <e> --permission-mode bypassPermissions` | status line `bypass permissions on`; wrote outside its cwd without a prompt |
| Codex | `H agent start <w> --kind codex --pane <p> -- -m <codex-id> -c model_reasoning_effort=<e> -s danger-full-access -a never` | fresh pane ran its task in 10.2 s from workspace create, no dialog |

`<claude-id>`, `<codex-id>` and `<e>` come from `references/models.md`; these checks ran with `claude-opus-5-5` and `gpt-6.1-sol`. The first bypass launch of Claude Code asks you to confirm once; answer it in that pane. To keep permission prompts, leave out `--permission-mode bypassPermissions`, `-s danger-full-access` and `-a never`. Lanes then wait at each dialog: read panes on every tick and answer within the brief's scope.

## 1. Host-aware startup

- First reconcile: `H agent list`, the run record's lanes table, panes with unsent text. Reuse what is running; never restart, stop or close another run's server or panes.
- Wrapper used throughout: `H() { env -u HERDR_SESSION herdr --session <run-session> "$@"; }`.
- **Claude desktop app**: start the run's server from the app's terminal panel and show an attached tab every run.
- **Claude Code CLI**: the canonical headless server; attach a TUI in another terminal if someone wants to watch.
- **Codex**: use its own terminal and browser capabilities; Claude panel tools do not exist there.
- A server restart restarts its workers: re-prompt each standing lane with its brief path and queue position.

## 2. Base for writer lanes

```bash
git -C <repo> fetch origin <branch>                 # read-only fetch of the intended base
BASE=$(git -C <repo> rev-parse origin/<branch>)     # or the brief's frozen base SHA
H worktree create --cwd <repo> --base "$BASE" --branch <lane-branch> --path <work>/wt/<lane> --label <lane> --no-focus
```

Record `BASE` in the brief and run record. Keep a deliberately frozen base when the brief pins one. If fetch fails, record "freshness unverified" and use the allowed local ref; never update or reset the shared checkout to fix it (on the example run local `main` was once a day behind `origin/main`). Install dependencies inside the worktree with the project's package manager.

## 3. Talking to a running lane

Decide first whether the message steers, queues or is held (SKILL.md, A lane). A held message isn't sent at all: it waits under Holds in the run record until its evidence or the user's yes is there.

| Lane state | How to send |
| --- | --- |
| Idle | `H agent prompt <name or pane> "<text>"` |
| Busy Codex, steer | `H pane send-text <pane> "<text>"`, then `H pane send-keys <pane> Enter`: it joins the current turn |
| Busy Codex, queue | `H pane send-text <pane> "<text>" && sleep 1 && H pane send-keys <pane> Tab`: it waits for the next turn |
| Busy Claude Code | paste with `send-text`, then `Enter`: it queues and reaches the worker once the running tool calls finish, inside the same turn, so it acts as a correction. `Ctrl+X` then `Enter` (v2.1.247+) marks it to wait its turn without interrupting; `Ctrl+X` then `Ctrl+S` (v2.1.275+) sends the draft and everything queued at once |
| Dialog or menu | `agent prompt` refuses a lane Herdr sees as blocked (`agent_blocked`, nothing sent); read with `pane read --source visible`, then `send-keys Down` / `Enter` within scope |

Sources, read 18 Nov 2026: Codex CLI [developer commands](https://learn.chatgpt.com/docs/developer-commands?surface=cli) (Enter steers, Tab queues; Codex CLI 0.169 here) and Claude Code [queued messages](https://code.claude.com/docs/en/interactive-mode#queue-messages-while-claude-works) and [chat keys](https://code.claude.com/docs/en/keybindings#chat-actions). On the example run the Codex Tab queue and the Escape stop were used; `agent prompt` was sent to busy Claude workers without confirming that it queues every time, and the Claude Ctrl+X chords were not sent through Herdr. Herdr 0.9.5's `pane send-keys --help` names only `esc`; its bundled guide (`herdr --skill`) writes a Ctrl chord as `ctrl+c`, so Ctrl+X is `ctrl+x`. Check the pane after trying one.

**Check it landed.** Read the pane (`pane read --source visible`) after every send. The message landed when it shows in the conversation or in the CLI's queue (Claude Code shows queued messages in grey until it starts on them) and the input box is empty. Text still in the box was not sent: press the key for the mode you meant, once. A busy `agent prompt --wait` can return on the current turn ending, which proves nothing about your message.

**Stopping a lane.** When work must stop now (wrong target, a held action about to run): `H pane send-keys <pane> esc`, read the pane until the turn shows as interrupted, and check the effect you were stopping did not happen (no push, no migration, no deploy) before sending anything new. Claude Code sends what was queued as soon as Esc interrupts, so look at the queue first and take back anything stale. Then `H agent prompt <name> "Coordinator: STOP … read <new brief>"`. A lane that stopped by itself (crash, quota, a dialog) is a stalled lane: read the pane, log it, and answer the dialog or resume the worker from its recorded session id.

Messages start `Coordinator:` and name files, PRs and heads, not chat context.

## 4. Traps and fixes

- **Codex hook-review dialog**: after `~/.codex/hooks.json` is edited, the hooks no longer match their trusted hashes in `~/.codex/config.toml`, and every new Codex pane opens "N hooks need review" at start. The first prompt vanishes into it while `agent prompt --wait --until working` still returns `working`; three lanes sat about 3 minutes before anyone read the pane. Show the user the new hook commands and let them choose to trust them in one Codex TUI. Until then, read the pane after each first send, `send-keys escape`, and resend. Herdr's own Codex integration is a hook in that file (`herdr integration status` names it), so rerunning `herdr integration install codex`, as the 0.9.5 release notes ask, can bring the dialog back.
- **`invalid_agent_name`**: a name starts with a lowercase letter, then lowercase letters, digits, `-` or `_`, 32 characters at most (`[a-z][a-z0-9_-]{0,31}`, `herdr --skill`). A script that ignores the failed `agent start` then waits on a lane that never existed; stop on a non-zero exit.
- **`agent_name_taken`**: names are unique per server. Reuse that worker (it keeps context) or start under a new name; address by pane id when unsure.
- **Brief left unsent / messages queued and never submitted / lane sitting on a dialog**: read the pane after every send and on every tick.
- **Standing monitor stopped and idle**: briefs tell standing lanes to write a STOP line to the run record before stopping; your tick reads their panes.
- **Status flicker**: completion is the READY line plus your own check, never `done`/`idle`.
- **Compaction**: long lanes compact mid-task. Keep follow-ups self-contained (brief path, PR, head, exact change). Whether idle lanes compact on their own is not established.
- **`rm` permission prompts** stopped auto-mode Claude workers on the example run. Even with prompts off, keep the rule: scratch output outside the worktree; never delete files.

## 5. Closing lanes

Idle sessions pile up. On a tick, close this run's workspaces whose PRs shipped and have no follow-up (`H workspace close <workspace>`); keep gates, shipping, reviewers of open releases and lanes with live work; worktrees stay on disk; log what you closed. Owner sessions that other sessions report to are never archived.
