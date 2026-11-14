# agent 记忆工具：8 个仓库分 4 类

agent 记不住代码、资料、对话和长任务：8 个仓库分 4 类，每类挑一个装，装前先给你看命令。

## 步骤

1. 复制提示词。
2. 在项目里把它发给 Claude Code。
3. 得到：3 个 subagent 按类别各挑一个仓库，你确认后才安装。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
帮我从这 8 个 GitHub 仓库里搭一套第二大脑：DeusData/codebase-memory-mcp、Graphify-Labs/graphify、garrytan/gbrain、AgriciDaniel/claude-obsidian、tobi/qmd、thedotmack/claude-mem、mem0ai/mem0、gastownhall/beads。按四类挑：代码图谱、资料库、会话记忆、任务进度，每类最多一个。先看 CLAUDE.md 和 Claude Code 自带的 memory 已经记了什么，新装的只补它们记不下的部分。派三个 subagent：
- scout（用 Haiku）：逐个读 README，列出安装命令、数据存在哪、要不要 API key、会不会额外花 token、要不要常驻后台进程、许可证。
- architect：看我的项目和 CLAUDE.md，每类挑一个，说明为什么选它，为什么不选同类的另一个。
- verifier：装完我会重启 Claude Code。它用 claude -p 开一个全新会话，问一条之前定下的决定；代码图谱就问某个函数被谁调用。把原始输出贴给我。
装任何东西之前先把命令给我看，我确认后再装。README 读不到就停下，让我把内容贴给你，不要凭记忆补。
```

## 背景

Opus 5.5 已经能自己跑一整夜，再给它配上这 8 个 GitHub 仓库当第二大脑，简直开了挂：3 分钟索引完 Linux 内核的代码图谱，95K 星的 Claude Code 记忆插件，Garry Tan 存了 155K 页的 agent 大脑。

读代码（代码图谱）：

- codebase-memory：只管代码，在本地建图，不用调模型，我们自己的代码图就用它
- Graphify：代码之外，文档、PDF、图片、视频也一起建图，122K 星

管资料（资料库）：

- gbrain：每条事实都带出处，能改能撤，几个 agent 共用一份。我们接过 Gmail 和日历
- claude-obsidian：把资料整理成互相链接、带出处的 Obsidian 页面，存在本地
- qmd：Shopify CEO Tobi 写的本地搜索，笔记、会议记录、文档都在本机检索，不用 API key

记对话（会话记忆）：

- claude-mem：一条命令装好，自动把每次会话压成摘要，下次接着用
- mem0：浏览器插件，ChatGPT、Perplexity、Claude 网页版之间共用一份记忆

盯长任务（任务进度）：

- beads：用一张任务依赖图代替零散的计划文档，长任务不丢上下文

把这段发给 Claude Code，派 3 个 subagent 帮你搭起来。

## 来源

来自 [Copybook](https://copybook.page/zh/t/build-a-second-brain-from-eight-github-repos)：@Voxyz_ai 2026年9月28日[发在 X 上](https://x.com/Voxyz_ai/status/2104617137893507496)，截至 2026年10月26日有 869 次收藏。适用于 Claude Code。
