# Codex 设置检查：按 GPT-6.2 指南

Sol 够用却把 Astra 开满：查出模型、effort、subagent 和 AGENTS.md 的问题，各附能粘贴的配置。

## 步骤

1. 复制提示词。
2. 在项目里用 codex --search 启动 Codex，发给 GPT-6.2 Astra。
3. 得到：每个问题附上指南原句和能粘贴的配置改法，再列出哪类活适合 Sol 或 Astra。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
读一下这两个页面。如果拿不到正文，就停下来告诉我：
https://developers.openai.com/codex/models
https://learn.chatgpt.com/guides/prompting-gpt-6-2-astra

然后对照它们检查我的 Codex 设置：~/.codex/config.toml、~/.codex/AGENTS.md，以及我项目里的 AGENTS.md 文件和 skill。找三类问题：
1. 模型或 effort 档位跟活不匹配。Astra 是我的默认模型，或者默认 effort 高于 Extra High，都标出来。按指南来：日常写代码用 Sol，快速摸底用 Medium，跨几个系统追一个原因用 High，只有几个原因相互影响时才用 Extra High。
2. 能并行的活没有说明。对能并行的活，查一下对应的 skill 或 AGENTS.md 有没有写要用 subagent、什么时候用。
3. AGENTS.md 里写得太多。Codex 能从代码、测试和文档里自己弄明白的内容，以及替它做好的常规决定，都标出来。

每个问题都引用我的设置和指南里对应的那句话，说明它的代价、会在哪里出错，再给出最小的改法，写成我能直接粘贴的配置。

然后看看这个项目的代码和最近的提交，给我一张表：这里哪类活适合 Sol 或 Astra，用哪档 effort。

最后告诉我去哪里看我的 Codex 用量，以及怎么把我待办里的一个任务分别用 Sol 和 Astra 跑一遍，比较各自用了多少。

先给我看建议，暂时什么都别改。
```

## 背景

OpenAI 刚发布了在 Codex 里用 GPT-6.2 的完整指南。你可以让 GPT-6.2 Astra 用它检查一遍你的 Codex 设置。

调好了，6.2 比上一代便宜得多。6.2 Astra 比 GPT-6 Astra 便宜 20%，6.2 Sol 的价格只有 Astra 的四分之一。Plus 套餐每 5 小时能发的消息也比上一代多：Sol 是 17-180 条，Astra 是 6-50 条。

一开始先别把 Astra 开满。日常写代码，Sol 就够了。只有在跨好几个服务追一个 bug 时，才换成 Astra。

一次性的配置检查，正适合花一条 Astra 消息。用 `codex --search` 启动 Codex（默认它只搜缓存，可能看不到昨天新出的页面），再把这段 prompt 发给 GPT-6.2 Astra。

## 来源

来自 [Copybook](https://copybook.page/zh/t/review-your-codex-setup-with-openais-gpt-6-2-guide)：@Voxyz_ai 2026年11月18日[发在 X 上](https://x.com/Voxyz_ai/status/2123038513352622087)，截至 2026年11月19日有 1,929 次收藏。适用于 Codex。
