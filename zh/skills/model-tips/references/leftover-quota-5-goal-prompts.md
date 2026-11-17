# 用完 Codex 剩余额度的 5 条 /goal

额度重置前还剩一半：完整 UI/UX 审查、能点的代码地图、量得出的提速、清理工作区、清理 Codex。

## 步骤

1. 从 5 条 /goal 提示词里挑一条复制：审查、代码地图、提速或清理。
2. 在额度重置之前，贴进 Codex。
3. 得到：Codex 用本来要作废的额度，把整件事做完。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词：用三个 skill 做 UI/UX 审查

```text
/goal Launch the real site for this project and use the three skills below to audit and improve it:

→ `$ux-audit`: click, type, and complete the core flows like a real user. Find anything confusing, hard to use, or simply broken.

→ `$impeccable`: review the visual hierarchy, typography, spacing, component consistency, mobile experience, and every important UI state.

→ `$transitions-dev`: review the existing motion and add the right transitions wherever feedback or a state change needs to feel clearer.

First check whether all three skills are available. If one is missing, use the skill installer to install it from the original source, load it, and continue.

If `$ux-audit` is marked Claude Code-only and can’t be called directly, read its `SKILL.md` and follow its interaction-first workflow.

Start with `$ux-audit` to walk through the entire product. Then use `$impeccable` to fix the visual and UX issues. Finish with `$transitions-dev` to review dropdowns, modals, tabs, loading, success, error, and other state changes.

Don’t stop at a report. Fix the issues, then run through the core flows again.

Finish with:

→ Desktop and mobile before/after screenshots
→ The 5 most important improvements
→ Anything still unresolved
→ A final version I can open and test
```

## 提示词：给代码库做一张能点的地图

```text
/goal Analyze the current codebase and generate an interactive code map that opens directly in a browser.

The map should include:

→ Major modules, services, databases, and external dependencies
→ Calls and data flows between modules
→ The 3-5 most important end-to-end flows
→ The tests and source evidence behind each module

Clicking any module should show its role, upstream callers, dependencies, downstream impact, and related tests.

Keep the first screen to no more than 20 primary nodes. Group lower-level files under their parent modules so the map doesn’t turn into a tangled mess.

Output:

→ docs/codemap/codemap.html
→ docs/codemap/codemap.json
→ docs/codemap/codemap.lock

When finished, open the map and verify that every path, node, and flow matches the current codebase.
```

## 提示词：让 app 变快，并量出快了多少

```text
/goal Make this app measurably faster.

Launch the real app and run through [CORE FLOW]. Record the current load time, interaction responsiveness, CPU usage, memory usage, and any visible stutters.

Use those measurements to find the worst bottlenecks. Don’t guess.

Change one thing at a time. After every change, rerun the exact same flow. Keep the change if the app gets faster. Revert it if nothing improves.

Continue until the core flow no longer has any obvious bottlenecks.

Finish with a simple before/after report:

→ The original measurements
→ What you changed
→ The new measurements
→ Any bottlenecks you didn’t address
```

## 提示词：清理工作区

```text
/goal Review every project under [WORKSPACE PATH] and clean up the half-finished work that has piled up.

Create a short card for every project:

→ What it does
→ When the last meaningful change happened
→ Whether it still runs
→ What remains unfinished
→ Whether it overlaps with another project

Then classify each one as:

→ Keep working
→ Finish soon
→ Merge candidate
→ Archive candidate
→ Delete candidate

Pick the 3 highest-value unfinished tasks and complete the obvious parts.

Do not delete, merge, push, or deploy anything. Leave those actions in the final list.

Finish with an overview of the entire workspace and the 10 most valuable things to work on next.
```

## 提示词：清理 Codex 本身

```text
/goal Audit my current Codex setup, including AGENTS.md, skills, custom agents, commands, plugins, MCP servers, and automations.

Find:

→ Duplicated functionality
→ Stale or unused items
→ Conflicting rules
→ Anything consuming unnecessary context
→ Workflows that still require manual cleanup

Back up the current configuration first. Then merge obvious duplicates, shorten bloated rules, move stale items into an archive, and fix broken paths or configuration.

Next, generate a clickable toolkit map.

Clicking any item should show its purpose, trigger, scope, source, and overlap with other tools.

Finish by telling me:

→ What you cleaned up
→ How much context you saved
→ What should still be deleted or rewritten
→ The 10 tools most worth keeping
```

## 背景

额度重置时还剩一半，等于白白扔掉好几天的 Sol。用 `/goal` 把最后一点也用上：审查整个网站、给代码库画地图、给 app 提速，或者清掉工作区里做了一半的东西。

## 来源

来自 [Copybook](https://copybook.page/zh/t/five-goal-prompts-for-leftover-codex-quota)：@Voxyz_ai 2026年8月23日[发在 X 上](https://x.com/Voxyz_ai/status/2091603024817062192)，截至 2026年9月20日有 2,633 次收藏。适用于 Codex。
