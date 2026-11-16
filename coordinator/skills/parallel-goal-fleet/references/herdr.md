# Herdr commands

Use one named session per target host for the task and reuse its workers. Examples target Herdr 0.9.0; the full-access flags were checked on 0.9.5. When using a different installed version, check help for the operation that differs; ordinary local workers do not require multi-machine support.

## Session and workers

Start a task-owned session in a persistent terminal:

```bash
env -u HERDR_SESSION herdr --session <session>
```

For subsequent local commands, keep the session explicit:

```bash
H=(env -u HERDR_SESSION herdr --session <session>)
"${H[@]}" workspace create --cwd <absolute_path> --label <worker> --no-focus
"${H[@]}" agent start <worker> --kind claude --pane <returned_pane_id> \
  -- --session-id <task_owned_uuid> --model claude-opus-5-5 --effort <effort> --permission-mode bypassPermissions
"${H[@]}" agent start <worker> --kind codex --pane <returned_pane_id> \
  -- -m gpt-6.1-sol -c model_reasoning_effort=<effort> -s danger-full-access -a never
```

Use the defaults in `SKILL.md` unless the user requests another model. `<effort>` and the Claude model follow the role rule there; the quick text review below is a review role, so its Claude example runs Opus 5.5 at `high`. Pin `claude-opus-5-5` for Opus 5.5 instead of relying on a floating `opus` alias. Opus 5.5 worked on Claude Code 2.1.280 here; a running 2.1.278 worker rejected it. Fable 5.2 ran on 2.1.319 here but logged `unrecognized_model`; the docs list it from 2.1.321. If a worker rejects the model, upgrade its CLI and restart it with its saved conversation ID. Generate the initial Claude UUID and record it with the task; record the Codex session ID before stopping a Codex worker. To resume in a fresh shell pane after a restart:

```bash
"${H[@]}" agent start <resumed_worker> --kind claude --pane <fresh_pane_id> \
  -- --resume <claude_session_id> --model claude-opus-5-5 --effort <effort> --permission-mode bypassPermissions
"${H[@]}" agent start <resumed_worker> --kind codex --pane <fresh_pane_id> \
  -- resume <codex_session_id> -m gpt-6.1-sol -c model_reasoning_effort=<effort> -s danger-full-access -a never
```

Each start command targets its own returned pane. `agent start` reports agent detection and readiness; normal work needs no additional UI proof. If dispatch encounters an update, trust, or permission prompt, inspect and handle that prompt within the task scope.

For simultaneous Git writers, create each workspace through a worktree:

```bash
"${H[@]}" worktree create --cwd <repo> --base <base_ref> \
  --branch <unique_branch> --path <absolute_path> --label <worker> --no-focus
```

These examples run workers with full access, matching T3 Code's full-access child tasks: Claude `--permission-mode bypassPermissions`; Codex `-s danger-full-access -a never` on the launch, so the user's other Codex sessions keep their own sandbox. A worker can then edit any file and run any command the user account can; use it only where you accept that. Drop those flags to keep permission prompts, and answer the prompts within the task scope. Hooks still run. If the coordinating session's own permission classifier refuses to launch a full-access worker, report it instead of working around it.

## Dispatch and follow-up

Send one clear goal to a ready worker:

```bash
"${H[@]}" agent prompt <worker> "$goal_text" --wait --until working --timeout 30000
"${H[@]}" agent wait <worker> --timeout 60000
"${H[@]}" agent read <worker> --source recent-unwrapped
```

Dispatch independent workers concurrently from the coordinator. While they work, continue useful local work. Reuse the same worker for the next turn.

`agent prompt --wait` observes agent states, not turn identity. In 0.9.0, a submission from a non-working state must show working or blocked activity within 5 seconds (unless the caller timeout expires first), or it returns `agent_prompt_stalled`. On a stalled or timed-out submission, read the pane and check artifacts before deciding whether to retry; text may already have reached the worker. Submit to an idle worker, then read the result and verify it belongs to the requested task. A returned state or completion phrase alone is not proof of success.

Without `--until`, `agent wait` returns on idle, done, or blocked. A timeout does not cancel the worker: continue useful work and use another bounded `agent wait` when needed, without resending the goal. Use `agent read --source visible` to diagnose a blocked worker; long history reads may require idle. If the result is incomplete, ask the worker to write the full result to a file and retrieve it before closing the pane. Increasing `--lines` cannot recover output already lost from the alternate screen.

`pane wait-output` searches existing output, including prompt echo. Avoid using a generic DONE string as a completion test. For a short job needing machine-readable completion, a one-shot CLI command inside a Herdr pane can write its result and exit status to a task-owned output path; check those artifacts instead of terminal formatting. Use `claude --print --output-format json` or `codex exec --json` as appropriate.

## Quick text review

For a self-contained second opinion, create a task-owned directory, put the context packet in `context.txt`, and create a Herdr workspace there. Retain the directory for an ongoing discussion. Run a CLI turn via `pane run` using the returned pane ID. A Claude example (check installed help if flags differ):

```bash
"${H[@]}" pane run <pane_id> 'claude -p --model claude-opus-5-5 --effort high --tools "" --strict-mcp-config --disable-slash-commands --output-format json --system-prompt "Give an independent, concise second opinion using only the supplied context." < /absolute/task-dir/context.txt > /absolute/task-dir/result.json 2> /absolute/task-dir/stderr.log; echo $? > /absolute/task-dir/exit-1.txt'
```

Save the successful result's `session_id` as the model conversation ID, separately from the Herdr session name and pane. For the next revision, use the same host and working directory and resume that exact ID; do not use an unqualified `--continue` that might select another conversation. For example:

```bash
"${H[@]}" pane run <pane_id> 'claude -p --resume <model_session_id> --model claude-opus-5-5 --effort high --tools "" --strict-mcp-config --disable-slash-commands --output-format json --system-prompt "Give an independent, concise second opinion using only the supplied context." < /absolute/task-dir/followup.txt > /absolute/task-dir/result-2.json 2> /absolute/task-dir/stderr-2.log; echo $? > /absolute/task-dir/exit-2.txt'
```

`followup.txt` carries only the revision, latest feedback, and next question; do not prepend the initial packet again. Submit after the previous turn has completed. Check the returned session ID and actual answer before claiming continuity. Preserve separate round outputs. If resumption fails, diagnose it before falling back to a fresh conversation and disclose any context reconstruction.

This uses ordinary CLI authentication. Do not add `--bare` blindly: it changes authentication behavior and can break a working subscription login. `--no-session-persistence` disables later resumption; reserve it for explicitly disposable reviews. Stopping a task-owned Herdr runtime does not by itself erase persisted Claude history, but preserve the working directory and model session ID for resumption.

An output file may exist before completion. Wait for the round's exit file and confirm it contains `0`, then parse the completed JSON, check `is_error`, and inspect the result text; stderr or the pane can explain a failed launch. Use unique exit files per round. If the requested model reports a quota/availability failure and the user authorized a fallback, run that model once with the same context and separate output paths. Do not silently substitute models for other errors. Preserve the result before closing task-owned resources.

## Troubleshooting

Use `agent get`, `agent read --source visible`, or `pane process-info` when startup or execution fails. Do not turn these into a checklist for every worker. Report observed configuration only when actually checked.

For remote workers, use [machines.md](machines.md). `--remote` is a client-attach option and cannot prefix `agent`, `workspace`, or other control subcommands; on Herdr 0.9.5 use `--machine <profile-id>` for its configured session, or run them on the target host with its explicit session.

## Finish

Read and integrate results and run relevant checks. For an ongoing review conversation, retain its routing note, working directory, and model history; leave a useful pane idle or stop only its runtime and resume later. Do not delete the conversation at each round. When the topic is finished, close owned workspaces. For worktree removal or child processes, use [cleanup.md](cleanup.md).

```bash
env -u HERDR_SESSION herdr session stop <session> --json
env -u HERDR_SESSION herdr session delete <session> --json
```

Stop/delete only a session created for this task. Preserve the default session and other work. Herdr provides persistent terminals and state observation; task dependencies and result verification belong to the coordinator.

Sources: [Herdr v0.9.0](https://github.com/herdrdev/herdr/releases/tag/v0.9.0), installed CLI help, and [versioned agent guidance](https://github.com/herdrdev/herdr/blob/v0.9.0/skills/herdr/SKILL.md).
