# ub-mode：Clean Code 作者的 agent 规则

agent 的代码藏着 bug，测试骗你：每次改动都照这个 skill 来，自带 crapper、dryer、mutator 检查。

## 步骤

1. 复制提示词。
2. 发给 Claude Code、Grok 或 Cursor。
3. 得到：下一次改动照规则来；没装 crapper、dryer、mutator 就跳过那几步。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
把 GitHub 上 unclebob/ub-mode 的 ub-mode skill 装进我的 skills 文件夹，下一次改动用 /ub-mode。如果没装 crapper、dryer 或 mutator，就跳过那几步。
```

## 背景

Clean Code 的作者刚刚公开了**他自己的 agent 写代码时遵守的规则**。

- 只把崩溃藏起来的防护，不算修好。
- 如果每个函数都返回空，测试还能通过，就把这个测试扔掉。
- 只做能解决问题的最小改动。
- 改代码之前，先写会失败的测试。

这个 skill 是 unclebob/ub-mode 里的一个 SKILL.md：先让它跑起来，再把它做对，然后是日常做法。其中 crapper、dryer、mutator 几步会调用他的配套工具，分别查复杂度、查重复和做变异测试。

装上它，你的 agent 写的代码**藏不住 bug，测试也骗不了你**。

## 来源

来自 [Copybook](https://copybook.page/zh/t/install-ub-mode-the-clean-code-authors-rules-for-agents)：@Voxyz_ai 2026年10月26日[发在 X 上](https://x.com/Voxyz_ai/status/2114724983297528249)，截至 2026年11月2日有 313 次收藏。适用于 Claude Code、Cursor 和 Grok。
