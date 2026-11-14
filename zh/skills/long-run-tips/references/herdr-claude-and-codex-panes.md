# Herdr：Claude 和 Codex 同跑一个任务

结论靠你在窗口间搬来搬去：拆任务，每个 agent 自己的 worktree 和目标，一个执行、一个审查。

## 步骤

1. 复制提示词，把任务填进 [TASK]。
2. 在 Herdr 里发给主 agent，Claude 和 Codex 各占一个窗格。
3. 得到：主 agent 拆好任务，一个执行一个审查，不用你在窗口之间传话。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
Run this task with multiple agents in parallel:

[TASK]

You are the coordinator. Check which agents and panes are available, then split the task only where pieces can move independently.

Give each agent one clear outcome. State the deliverable, how it will be checked, what it may change, and what it must not touch.

Research and review agents may share the current workspace, but they must stay read-only. For work inside a Git repo, give every agent that edits files its own worktree so no two writers share a checkout.

Use Herdr to assign work to the other panes, wait for their results, read their output, and follow up yourself. Do not ask me to relay messages.

When different agents are available, have one execute and another review. Swap roles on the next pass if useful. Settle factual disagreements with a test. You decide judgment calls.

Bring the work together in one place. For a Git repo, integrate through one checkout and rerun the real checks. Do not push, publish, touch production, or expose secrets without my approval.

Finish with the result, verification evidence, unresolved issues, and any panes or worktrees still running.
```

## 背景

有了 Herdr，Claude 和 Codex 各占一个窗格。主 agent 负责派活、等结果、读输出、追问。以前我得自己把每个结论在窗口之间搬来搬去。手上有 ChatGPT、Codex 和别的 agent 时，一个干活，另一个审查。

## 来源

来自 [Copybook](https://copybook.page/zh/t/run-one-task-across-claude-and-codex-with-herdr)：@Voxyz_ai 2026年8月8日[发在 X 上](https://x.com/Voxyz_ai/status/2086059460502417772)，截至 2026年9月5日有 884 次收藏。适用于 Claude Code 和 Codex。
