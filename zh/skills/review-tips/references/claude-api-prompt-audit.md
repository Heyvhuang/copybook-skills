# /claude-api prompt-audit：换 Fable 5.1 后的 skill 审查

skill 里还留着旧模型名和失效命令：官方 skill 审一遍，列出重复约束和过度强调，附 diff。

## 步骤

1. 复制添加 marketplace 和运行审查的两条命令。
2. Claude Code 里加 marketplace，装 claude-api，再跑审查。
3. 得到：一份 skill 审查报告和建议的 diff，不改任何文件，改哪些由你决定。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 命令：添加 marketplace

```text
/plugin marketplace add anthropics/skills
```

## 命令：运行审查

```text
/claude-api prompt-audit
```

## 背景

刚把 Claude Code 换成 Fable 5.1 的话，先拿它把你的 skill 跑一遍。它在整个工作区里找出了重复的约束、失效的斜杠命令、写死的旧模型名，以及给旧模型写的输出脚手架。

最明显的一处修改：「CRITICAL: You MUST use this tool when...」改成了「Use this tool when...」。Fable 5.1 更按字面执行指令。以前让旧模型不跑偏的额外强调，现在可能引出重复检查和不必要的工具调用。

这条命令只生成一份审查报告和建议的 diff，不改任何文件。每条发现都写明位置、解释和置信度，改哪些由你决定。

这个官方 skill 免费开源：https://github.com/anthropics/skills/tree/main/skills/claude-api

怎么用：

1. 在 Claude Code 里添加 marketplace。
2. 打开 `/plugin`，找到 anthropic-agent-skills，安装 claude-api。
3. 运行审查。

## 来源

来自 [Copybook](https://copybook.page/zh/t/audit-your-skills-with-claude-api-prompt-audit)：@Voxyz_ai 2026年9月3日[发在 X 上](https://x.com/Voxyz_ai/status/2095489486129877331)，截至 2026年10月1日有 479 次收藏。最近一次检查：发帖当天，Fable 5.1，可用。适用于 Claude Code。
