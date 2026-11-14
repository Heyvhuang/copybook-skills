# 睡前报告：今晚能放心跑的任务

额度每晚用不完：睡前一小时从今天的活里挑 3-5 个可撤回、能验证的，写好提示词，什么都不改。

## 步骤

1. 复制提示词。
2. 在 Claude Code 或 Codex 里设成自动化，定在睡前一小时。
3. 得到：每晚一份报告：3-5 个能放心跑一夜的任务，各附一条能直接贴的 prompt。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
Run this review every day, one hour before bedtime.

Inspect only sources you already have access to:

→ Repositories changed today, including git status
→ Unfinished issues, TODOs, and plans
→ Recent failed tests or builds
→ Handoff notes left by agents

Find 3-5 tasks that Claude Code/Codex could safely handle overnight.

Every candidate must:

→ have a clear goal and definition of done
→ require no decisions from me while it runs
→ fit in an isolated branch or worktree
→ have an exact test, build, or verification command
→ be fully reversible

Exclude anything that requires merging, deploying, sending messages, spending money, changing credentials, or touching production data.

For each candidate, return:

1. Task
2. Where you found it
3. What it could deliver by morning
4. How to verify it
5. What it must not touch
6. A complete prompt I can paste into Claude Code/Codex

That execution prompt must include the working directory, branch or worktree, definition of done, verification commands, and the changes, test results, and blockers it must hand back in the morning.

Rank the candidates by value and likelihood of finishing before morning.

If nothing is suitable, write: “No tasks are safe to run overnight.” Don’t invent tasks to fill the report.

Stop after writing the report. Don’t edit files, start an agent, or run any candidate task.
```

## 背景

如果你的 Claude Code 或 Codex 额度总是用不完，就把这个自动化定在睡前一小时。它会扫一遍当天没做完的工作，列出 3-5 个可以放心留着跑一整夜的任务。

它只写报告，不碰代码，也不启动 agent。

怎么用：

- 先从一个仓库开始。如果报告一直能找出有用的活，再把 issue tracker 和 agent 的交接记录加进来。
- 早上先看 diff 和验证结果，再决定合并什么。

## 来源

来自 [Copybook](https://copybook.page/zh/t/schedule-a-bedtime-report-of-overnight-tasks)：@Voxyz_ai 2026年8月12日[发在 X 上](https://x.com/Voxyz_ai/status/2087579867139264681)，截至 2026年9月9日有 570 次收藏。适用于 Claude Code 和 Codex。
