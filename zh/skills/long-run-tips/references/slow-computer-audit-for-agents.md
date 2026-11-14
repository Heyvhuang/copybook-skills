# 多 agent 时电脑变慢的排查

开着很多 agent 电脑就卡：先 dry run 理清进程树和开机启动项，再只清理你批准的那些。

## 步骤

1. 复制提示词。
2. 在要检查的电脑上把它发给 Codex，macOS 或 Windows 都行。
3. 得到：一份 dry run 清单列出拖慢电脑的东西，只清理你逐项批准的。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

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

## 背景

我同时开着更多会话和 subagent，Mac 被拖慢了。它是一台 64GB 统一内存的 M1 Max。内存小的机器在同样的负载下，会更早遇到内存压力和 swap。

我让 Sol 理出完整的进程树。它查了没关的开发服务、重复的 MCP server、headless 浏览器、登录项、VPN 和网络扩展、浏览器辅助进程和更新程序。我把多余的项分批清掉，重启，正常用了一天，再查一次。现在同样的多 agent 负载很少再卡，我还能多开几个会话。

我把这次排查写成了一条 macOS 和 Windows 都能用的 prompt。第一轮只做 dry run。

## 来源

来自 [Copybook](https://copybook.page/zh/t/audit-what-slows-your-computer-when-agents-run)：@Voxyz_ai 2026年7月13日[发在 X 上](https://x.com/Voxyz_ai/status/2076773589429141806)，截至 2026年8月10日有 673 次收藏。适用于 Codex。
