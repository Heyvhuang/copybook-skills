# Slow-computer audit when agents run

Many agents open and the Mac bogs down: a dry-run map of processes and startup items, cleaned only where you approve.

## Steps

1. Copy the prompt.
2. Send it to Codex on the computer you want to check, macOS or Windows.
3. You get: A dry-run table of what slows the machine; nothing is cleaned up until you approve each item.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Run a coding-agent performance audit on this computer. Detect macOS or Windows and record the hardware configuration first. Use only built-in, read-only tools. Do not spawn subagents or modify anything on the first pass.

1. Establish a baseline.

Take several samples, not one snapshot.

Check CPU, load average or processor queue, memory pressure or available / committed memory, swap / pagefile growth, disk I/O, free space, thermal throttling, sleep blockers, attached displays, and process / thread counts.

If a metric is unavailable, report it and continue. Do not install tools.

2. Build a process tree.

Aggregate the main process and helpers for each application family.

Focus on:
→ AI: Codex, Claude Code, MCP servers, code indexers, headless browsers
→ Development: Node / Bun / Python, Docker / WSL / VMs, dev servers, watchers, test processes, databases
→ Background: browser helpers, sync processes, updaters

Record the parent process, runtime, CPU, memory, disk and network activity, listening ports, project directory, and whether a terminal, editor, or active session is still using it.

3. Audit every startup source.

macOS:
→ Login Items and Allow in Background
→ LaunchAgents, LaunchDaemons, Homebrew services
→ system and network extensions

Windows:
→ Startup Apps, Services, Scheduled Tasks, Run keys
→ WSL and Docker Desktop
→ VPN, proxy, and network filters

On both platforms, inspect browsers, menu-bar or system-tray monitors, Adobe and Office helpers, cloud sync, and stale VPN, DNS, or proxy entries.

4. Inspect large disk consumers.

Include build outputs, node_modules, Docker data, DerivedData or simulators, Downloads, and duplicate project copies. Do not bulk-delete caches or personal files.

5. Label each item.

Use: active and needed / idle / orphaned / duplicate / unknown.

Prioritize items that meet all three conditions:
→ long-running
→ no longer needed
→ sustained CPU, memory, disk, or network use

6. Return a dry-run table.

For every item, include:
→ evidence
→ expected benefit and risk
→ whether a restart is required
→ recommended action: keep / quit normally / stop / disable at startup / uninstall / investigate
→ reversible commands and rollback steps

Without my item-by-item approval, do not kill processes, delete files, uninstall software, unload services, change startup items or network settings, or restart the computer. If sudo or Administrator access is required, explain the purpose and risk, then wait for approval.

Do not disable FileVault, BitLocker, firewalls, Defender, or other system security controls. Preserve the active agent sessions, terminals, editors, databases, sync jobs, VPNs, and security tools that I explicitly say are still in use.

After I approve the plan, handle one group at a time and remeasure after each. Once done, reboot, wait 5-10 minutes, and measure again. Use the computer normally for a day, then repeat the audit. Show the before / after results and flag any processes or services that returned.
```

## Background

I kept more sessions and subagents running at once. My Mac bogged down. It's an M1 Max with 64GB of unified memory. Lower-memory machines will hit memory pressure and swap sooner under the same load.

I asked Sol to map the full process tree. It checked for stale dev services, duplicate MCP servers, headless browsers, login items, VPN and network extensions, browser helpers and updaters. I cleaned up the redundant items in batches, rebooted, used the Mac normally for a day, then checked again. The same multi-agent workload now rarely stutters, and I can keep more sessions open.

I turned the audit into a prompt for macOS and Windows. The first pass is dry-run only.

## Source

From [Copybook](https://copybook.page/t/audit-what-slows-your-computer-when-agents-run): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2076773589429141806) on 13 Jul 2026, 673 saves as of 10 Aug 2026. For Codex.
