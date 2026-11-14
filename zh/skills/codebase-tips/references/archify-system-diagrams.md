# Archify：从代码画系统图

要给人讲清系统结构：从代码生成一张能搜索、能追踪上下游、能对比版本的 HTML 图，可导出 PNG。

## 步骤

1. 复制全局安装 Archify 的命令，再复制模板或完整系统图提示词。
2. 在终端里运行命令，再在仓库里把模板或提示词发给 Codex 或 Grok Bot。
3. 得到：一张能搜索、能追踪上下游的 HTML 系统图，导出成 PNG。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 命令：全局安装 Archify

```bash
npx skills add tt-a1i/archify -g
```

## 模板

```text
Turn [CODEBASE / FEATURE / WORKFLOW] into a [DIAGRAM TYPE] diagram. Choose from Architecture, Workflow, Sequence, Data Flow, or Lifecycle.
```

## 提示词：完整系统图

```text
Then read this repo and use Archify to generate a system diagram.

Choose the diagram type that best fits what I need to understand: Architecture, Workflow, Sequence, Data Flow, or Lifecycle.

Keep the 8-12 most important components and one primary path. Label external services, databases, and component connections clearly. Put supporting details in cards instead of adding more edges to the main diagram.

Generate and verify a standalone HTML file. Confirm that component search and upstream/downstream tracing work, then export a high-resolution 2400 × 1260 PNG.
```

## 背景

如果只能给 Codex 或 Grok Bot 一个画系统图的 skill，我选 Archify。它在 GitHub 上已经有 29K+ 颗星，现在我要画系统图时默认就用它。

装好以后，你的 agent 可以：

- 生成一个自包含的 HTML 文件，导出成 PNG、SVG 或视频
- 搜索任意组件，追踪它的上下游路径
- 把前后两个版本并排对比，看哪些加了、删了或重新排了

## 来源

来自 [Copybook](https://copybook.page/zh/t/draw-system-diagrams-with-the-archify-skill)：@Voxyz_ai 2026年8月29日[发在 X 上](https://x.com/Voxyz_ai/status/2093677504179400946)，截至 2026年9月26日有 1,560 次收藏。适用于 Codex 和 Grok。
