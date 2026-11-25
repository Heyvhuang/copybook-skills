# Multiple machines (Herdr 0.9+)

Use local workers for local work. Use an available, authorized remote machine when its checkout, tools, credentials, or capacity fit the task. Herdr 0.9 combines Local and saved SSH machines in one client; it does not copy repositories, skills, credentials, or results between them.

## Saved SSH connections

Inspect the saved profiles when choosing an existing remote target:

```bash
herdr machine list --json
```

The returned `id` identifies a connection profile; `target` is the OpenSSH target and `session` is the remote Herdr session. `enabled` and `selected` are client preferences, not proof that a server or worker is reachable; `herdr machine status [<profile-id>] --json` (0.9.2+) checks that without prompting for authentication. `herdr machine reconnect` needs the user to finish SSH authentication in their own terminal; do not run it for them. Local is implicit and is not a saved SSH profile.

When the task includes adding a machine, use the user's SSH target and an explicit session:

```bash
herdr machine add <ssh-target> --label <label> --remote-session <session>
herdr
```

Run interactively, `machine add` lists the Herdr sessions already running on the host and may ask the user to pick one; without a terminal, omitting `--remote-session` selects the remote default session. `--label` is optional and defaults to the SSH host. `machine add` prepares the remote Herdr installation and starts its server before saving the profile; it is not a read-only bookmark. Existing local clients pick up saved connections automatically. Only manage profiles within the authorized task. If setup needs to install Herdr or stop an incompatible server, explain that concrete effect and obtain any missing authorization; do not accept a stop prompt just to make a connection succeed. Experimental handoff is not an option of `machine add`.

Profile maintenance takes the returned profile ID, not its label or SSH target:

```bash
herdr machine rename <profile-id> --label <label>
herdr machine enable <profile-id>
herdr machine disable <profile-id>
herdr machine remove <profile-id>
```

Disable/remove disconnects the client and leaves remote sessions running. A temporary worker does not require a persistent saved profile; use an existing connection or direct SSH when that is sufficient.

## Route commands to the correct server

Since 0.9.1, Herdr runs control commands through an enabled saved machine. Confirm `--machine` in the installed CLI help, then use the profile ID for reads and mutations (a unique, case-sensitive label also works). Check the session configured for that profile first. Both installations need this support and the remote server must already be running: forwarding never installs, starts, or restarts a server and never falls back to Local. A connection failure does not prove a mutation was not applied; inspect remote state before retrying.

```bash
herdr --machine <profile-id> agent list
```

For a task-owned remote session different from that profile's session, use the SSH method below. Never combine `--machine` with `--remote` or `--session`.

`--remote` attaches a client to one remote session:

```bash
env -u HERDR_SESSION herdr --remote <ssh-target> --session <session>
```

It cannot be combined with control subcommands: `herdr --remote <host> agent list` fails. Run control commands on the target machine instead. For a repeat SSH alias and a simple session name, for example:

```bash
ssh workbox 'env -u HERDR_SESSION herdr --session fleet-review agent list'
ssh workbox 'env -u HERDR_SESSION herdr --session fleet-review workspace list'
```

Use the actual SSH target and remote session from the task/profile. For URI targets with a custom port, translate them to the corresponding OpenSSH arguments or use a configured alias. Quote remote arguments for the remote shell, especially prompts and paths; do not interpolate untrusted text into an SSH command. A persistent SSH shell can use the same `H=(env -u HERDR_SESSION herdr --session <session>)` pattern as [herdr.md](herdr.md).

Keep `host + session + agent/pane ID` together. Different servers can both contain `w1:p1` or an agent named `reviewer`. Selecting a machine/workspace in the UI does not change where a command issued from a pane executes. Discover workers and workspace IDs on the intended server and use the returned IDs for dispatch, reads, follow-up, and cleanup.

## Results and disconnects

Give remote workers paths that exist on their machine. For Git writers, isolate their checkouts on that host and return the commit SHA and verification result. The coordinator retrieves the actual commits or artifacts through the project's authorized Git/file-transfer workflow, integrates them, and validates locally as appropriate. A remote path or completion message alone is not a delivered result.

If a connection drops, other machines can continue. Reconnect to the same host/session and inspect the existing worker before retrying or creating a replacement: the remote work may still be running. Do not resubmit a mutating task simply because its client disconnected.

Keep compatible servers running during client upgrades. Herdr 0.9 requires endpoint generation 1 (`herdr status` shows each side's version and generation); an older server may need an upgrade that stops its panes. Handle that affected server explicitly instead of upgrading all machines. On 0.8.x, use local or direct SSH workers; `herdr machine` is unavailable. The removed `--no-session` mode is not a 0.9 fallback.

Sources: [v0.9.0](https://github.com/herdrdev/herdr/releases/tag/v0.9.0), [v0.9.1](https://github.com/herdrdev/herdr/releases/tag/v0.9.1) and [v0.9.2](https://github.com/herdrdev/herdr/releases/tag/v0.9.2) releases, [machine command implementation](https://github.com/herdrdev/herdr/blob/v0.9.5/src/cli/machine.rs), and [server-scoped agent guidance](https://github.com/herdrdev/herdr/blob/v0.9.5/skills/herdr/SKILL.md). The unified client uses SSH; it does not imply an SSH-free cloud service.
