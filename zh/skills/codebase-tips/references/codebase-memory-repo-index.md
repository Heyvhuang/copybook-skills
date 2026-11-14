# codebase-memory 仓库索引

每个问题几十轮 grep 和读文件：仓库连成一张函数、文件和依赖的图，顺手找出能安全删的死函数。

## 步骤

1. 复制两条提示词。
2. 在项目里按顺序发给 Claude Code 或 Codex。
3. 得到：localhost:9749 上一张仓库关系图，外加一份可以放心删的废弃函数清单。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词：安装 codebase-memory 并打开地图

```text
帮我在这个仓库装上 codebase-memory，装好后给我看看这张图。

从 https://github.com/DeusData/codebase-memory-mcp 安装：
curl -fsSL https://raw.githubusercontent.com/DeusData/codebase-memory-mcp/main/install.sh | bash -s -- --ui

装好后重启，索引这个项目，再打开 localhost:9749，让我看看这张图。
```

## 提示词：用并行 /goal 找死函数

```text
Use codebase-memory to find dead functions that can be safely deleted.

For this task, write yourself a new end-to-end /goal: complete the whole plan, not just the next step, until the architecture, implementation, tests, review, and final result meet the standard.

Split that goal into independent pieces, spawn as many parallel agents as needed to do it better and faster, and give each agent its own dedicated /goal that includes its expected deliverable, verification, and completion standard.

Dispatch them concurrently, keep tracking progress in the right place, synthesize results as they return, resolve conflicts, continue implementation, run real-time validation after important steps, and finish with review, submission/commit when appropriate, and a final summary.

Validation should cover the real end-to-end path, including browser/computer use, clicks, keyboard actions, and any necessary operation.

Do not stop after partial progress unless blocked by missing credentials, destructive ambiguity, or conflicting requirements.
```

## 背景

别再对 Claude Code 或 Codex 说「读一下这个文件」「那个也读一下」「把整个仓库 grep 一遍」。装上 codebase-memory。它索引 Linux 内核 28M 行代码只要 3 分钟，你的仓库几秒就好。

索引一次，整个仓库的每个函数、文件和依赖就连成一张图。一次查询，顶掉几十轮 grep 和读文件。在 31 个真实仓库上的测试结果：结构类查询少用 10 倍 token，复杂任务的答案质量 83%，工具调用少 2.1 倍。

这两段 prompt 直接发给你的 agent。

## 来源

来自 [Copybook](https://copybook.page/zh/t/index-your-repo-with-codebase-memory)：@Voxyz_ai 2026年6月26日[发在 X 上](https://x.com/Voxyz_ai/status/2070495084374581535)，截至 2026年7月24日有 8,358 次收藏。适用于 Claude Code 和 Codex。
