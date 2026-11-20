# 词汇表

这些技巧里会遇到的词，用大白话说清楚，每个配一个例子。

[copybook.page/zh/glossary](https://copybook.page/zh/glossary) · [English](glossary.md)

[A](#agent) · [C](#claude-code) · [D](#diff) · [G](#git) · [L](#lint-规则) · [M](#mcp) · [P](#pr) · [S](#seo) · [T](#token) · [V](#vibe-coding)

拼音：[C](#仓库) · [E](#额度) · [G](#规则) · [H](#合集) · [M](#命令) · [P](#配置) · [Q](#前端) · [S](#上下文) · [T](#推理强度) · [Z](#终端)

## agent

能自己动手干活的 AI：读文件、跑命令、改东西，做完向你汇报。

例如：Claude Code 和 Codex 都是 agent：你说清要做什么，它们在你的项目里一步步做完。

## AGENTS.md

放在项目最上层的一个文本文件，写着长期有效的要求，Codex 等 agent 在这个项目里开始任何任务前都会先读。

例如：在 AGENTS.md 里加上 Scope Guard，这个仓库里的每次会话，agent 都不会让小任务越做越大。

## API

一个程序通过网络调用另一个程序的方式。Claude API 让你自己的应用直接调用 Claude，按 token 计费。

例如：有条技巧让 Claude Code 把最花钱的 Claude API 调用一档档换成更便宜的模型，准确率不降。

## Claude Code

Anthropic 出的 coding agent，在终端、桌面应用或代码编辑器里都能用，直接处理你项目里的文件。

例如：copybook.page 上大部分技巧，都是复制一段 prompt，在项目文件夹里贴进 Claude Code 或 Codex。

## CLAUDE.md

Claude Code 开工前会读的规则文件。~/.claude 里的全局版本对所有项目生效，项目里的只管这个项目。

例如：把 Orwell 的 6 条写作规则贴进全局 CLAUDE.md，每次会话写出来的都是大白话。

## Codex

OpenAI 出的 coding agent，在终端、代码编辑器或 Codex 应用里都能用，会照 AGENTS.md 里的规则做事。

例如：在 AGENTS.md 里加上 Scope Guard，Codex 就不会让小任务越做越大。

## commit

仓库改动的一次存档，附一句说明：改了什么，为什么改。

例如：代码地图那条规则要求：改代码时，在同一个 commit 里同步更新地图。

## Cursor

自带 coding agent 的代码编辑器。它的 agent 会读你给的规则，也能接 MCP 服务器。

例如：把一条规则贴进 Cursor 的规则里，它的 agent 在这个项目里会读到它。

## diff

把改动逐行列出来的对照：删了哪些行，加了哪些行。

例如：这里很多 prompt 都要求 agent 先给你看 diff，等你同意再写。

## dry run

演练一遍：只列出会改什么，什么都不真改。

例如：清理电脑那条 prompt 先用 dry run 列出拖慢电脑的东西，你逐项批准才清理。

## Git

记录仓库每一次改动的工具，能看谁改了什么、对比版本、退回去。

例如：代码地图的 lock 文件记下它基于哪个 Git commit 生成，agent 就能判断地图过没过期。

## /goal

给 agent 一个大目标的命令，让它一直做到完成。

例如：5 条 /goal 提示词，在额度重置前用剩下的 Codex 额度做完整审查、代码地图或清理。

## lint 规则

自动检查代码的规则，一写出已知的错就会报出来。

例如：把 agent 反复犯的错写成 lint 规则，它看到报错就自己改。

## localhost

把你自己的电脑当成网址。localhost 上的页面跑在你电脑里，只有你打得开。

例如：codebase-memory 把仓库关系图开在 localhost:9749。

## MCP

全称 Model Context Protocol，把外部工具接到 agent 上的标准插口。这类技巧在「连接器」里；Copybook 自己也是一个，可以接进 agent。

例如：codebase-memory 就是一个 MCP 服务器。装好以后，agent 直接问它仓库里的事，不用一个个打开文件。

## PR

全称 pull request：一组提议的改动，有人审过才并进主代码。

例如：把 reviewer 在你 PR 上反复留的意见，变成 AGENTS.md 规则。

## prompt

你发给 AI、告诉它要做什么的那段话。在 copybook.page 上，prompt 就是复制下来原样贴进对话框的文字。

例如：把「先调查再动手」这条 prompt 贴进 Codex，它会先读仓库、写好计划，再改任何东西。

## SEO

搜索引擎优化：让 Google 找得到、排得上你的页面，让人从搜索里来。

例如：做一个免费小工具放在独立页面上，让它从 Google 给你的产品带来用户。

## skill

一个装着说明（有时还有脚本）的文件夹，任务用得上时 agent 就会读它，照着把这类活做好。copybook.page 上这类技巧叫「技能包」。

例如：装一次设计 skill，以后让 agent 做页面，它都会照着做，不用你每次再贴一遍说明。

## subagent

主 agent 派出去做一部分工作的帮手，带着全新的上下文干活，做完交回结果。

例如：上线前派 4 个 subagent，各自去弄坏 app 的一块地方，主 agent 等它们交报告。

## token

AI 模型读写和计费的最小单位，大约一个词或半个词。价格和用量上限都按 token 算。

例如：codebase-memory 回答仓库结构的问题，比一个个读文件省 10 倍 token。

## vibe coding

把想要的东西说给 AI 听、它写什么就用什么，自己不细看代码的做法。

例如：vibe coding 出来的网站上线前，派 5 个 subagent 按 20 项查一遍。

## Vox 精选

Vox 自己挑的技巧，不看收藏数。

例如：标着 Vox 精选的技巧，收藏数可能比旁边的少。

## 仓库

项目的文件夹，连同 Git 记下的全部改动历史。

例如：改东西之前，让 Codex 给你的仓库做一张能点的地图。

## 插件

一步就能装进 Claude Code 或 Codex 的一整包东西，可以同时带来 skill、命令、subagent 和连接器。

例如：一条 /plugin install 命令装好 Epic 的 Unreal Engine 插件，Claude Code 就能在你开着的编辑器里改蓝图。

## 额度

你的套餐允许用多少，用完要等重置，通常是几小时或一周一次。

例如：把 Claude Code 的主模型换成 Opus 5.5，额度更耐用：它的标价是 Fable 5.1 的 40%。

## 规则

写在 AGENTS.md、CLAUDE.md 这类文件里的长期要求，agent 每次会话开始都会读，不用你一遍遍重复。

例如：AGENTS.md 里的 Scope Guard 就是一组规则，从此 agent 不会让小任务越做越大。

## 合集

为同一件事准备的几条技巧，有的要按顺序用。

例如：「上线前检查」把网站上线前要跑的检查放在一起，按要跑的顺序排好。

## 后端

应用里跑在服务器上、看不见的那部分：数据、账号、支付，还有每个按钮背后的逻辑。

例如：有条技巧让 Fable 只管规划和前端，后端交给 Codex。

## 缓存

对话内容的短期记忆，模型不用把前面的全部重读一遍：回复更快，也更省用量。

例如：订阅套餐里，主对话的缓存能留 1 小时，subagent 只有 5 分钟。

## 会话

和 agent 的一次对话，从第一条消息到你关掉或重开为止。每次会话开始都会重新读规则文件。

例如：Claude Code 会记下每次会话，有条技巧把一周的会话记录做成日历。

## 命令

让程序做一件事的一行字。有的在终端里运行，有的以斜杠开头、在 agent 里输入，比如 /goal、/plugin。

例如：npx skills add 在终端里装 skill，/advisor fable 则是在 Claude Code 里输入。

## 模型

AI 本身，负责读和写的那部分，比如 Opus 5.5、Fable 5.1、GPT-6.1 Sol。Claude Code 这样的 agent 用你选的模型干活。

例如：有条技巧让 Opus 5.5 干活，定方案前、错误反复时和说做完前才叫 Fable 来看。

## 配置

工具启动时读取的设置，比如用哪个模型。copybook.page 上这类技巧归在「设置」里。

例如：subagent 定义里的一行 model: opus 就是配置，它决定这个帮手用哪个模型。

## 前端

应用里用户看得到、点得到的部分：页面、按钮、表单，以及它们的样子和动效。

例如：把 8 个前端参考网站交给 Opus 5.5，它设计前就知道去哪儿找参考。

## 上下文

模型干活时一次能看到的全部内容：你的消息、读过的文件和它自己的笔记。有大小上限。

例如：agent 读进来的每个规则文件、每个 skill、每条消息，都要占上下文的地方。

## 收藏

X 上把这条帖子加进书签的人数，按标注的日期统计。

例如：「2,058 收藏，截至 2026年9月27日」：到那天为止，有这么多人收藏了这条帖子。

## 推理强度

模型回答前想得多深，从 low 到 max。强度越高越慢，也越费额度。

例如：有条技巧让 subagent 用 Opus 5.5 的 medium：读代码、跑测试用不着更高。

## 终端

用打字给电脑下命令的文本窗口：Mac 上叫「终端」，Windows 上是 PowerShell。

例如：npx skills add 这类安装命令，在终端里跑一次就行。

## 状态栏

Claude Code 底部的一行，显示模型等实时信息，显示什么由你定。

例如：在状态栏加一个缓存倒计时，看缓存还剩几分钟。
