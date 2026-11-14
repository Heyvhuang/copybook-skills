# Luna Max 做 Codex 的 subagent

边界清楚的活交给 Luna Max：建一个 max 推理的 luna_worker，按你装的 Codex 版本校验，先看 diff。

## 步骤

1. 复制提示词。
2. 在 Codex 里把它发给 Sol。
3. 得到：推理强度 max 的 luna_worker，按你的 Codex 版本校验，先给你看 diff。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
create a custom agent named luna_worker at ~/.codex/agents/luna-worker.toml.

use these settings:

model = "gpt-5.6-luna"
model_reasoning_effort = "max"

give it a description and instructions for bounded delegated work. preserve the rest of my config. validate it against my installed Codex version, show me the diff, then use luna_worker for subagent tasks.
```

## 背景

让 Sol 把 Luna Max 配成 subagent。这条 prompt 会建一个自定义 agent 文件，保留你其余的配置，按你装的 Codex 版本校验，先给你看 diff 再用。

另一种做法是不建自定义 agent 文件。让 Sol 留在主线程，每个任务让它单独开一个 Luna Max 的 agent 线程。在 Codex 里，一个线程就是一段独立的对话，有自己的上下文。几个线程可以同时跑，Sol 在主线程里收齐它们的结果。

## 来源

来自 [Copybook](https://copybook.page/zh/t/configure-luna-max-as-a-codex-subagent)：@Voxyz_ai 2026年8月1日[发在 X 上](https://x.com/Voxyz_ai/status/2083545774768402673)，截至 2026年8月29日有 6,052 次收藏。最近一次检查：发帖当天，GPT-5.6 Luna，可用。适用于 Codex。
