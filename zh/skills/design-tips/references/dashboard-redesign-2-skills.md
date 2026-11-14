# 仪表盘改版：两个 skill 加两条提示词

仪表盘一眼 AI 做的：ui-ux-pro-max 加 frontend-design，改版提示词里点名它们，再从 4 个角度审查。

## 步骤

1. 复制两段安装命令，再复制改版和并行审查两条提示词。
2. 在 Claude Code 里跑安装，把 {} 换成你的页面发改版提示词，再发审查。
3. 得到：改版后的页面，从 4 个角度在真实浏览器里查过，修到过关为止。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 安装 ui-ux-pro-max

```text
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@ui-ux-pro-max-skill
```

## 安装 frontend-design

```text
/plugin marketplace add anthropics/skills
/plugin install example-skills@anthropic-agent-skills
```

## 提示词：改版

```text
Using /ui-ux-pro-max and /frontend-design, redesign {these new pages} for this project. Full creative freedom, but it must be visually striking and interactive, with motion and hidden easter eggs. First search for 2026 design trends and apply them.
```

## 提示词：并行审查

```text
Treat making {these pages} not look AI-made as one complete goal, not the next small fix. Split it into independent pieces and spawn a parallel agent for each, every agent with its own goal, deliverable, and pass bar. 1, does it look AI-made: the three templates, purple gradient, emoji icons. 2, detail: spacing, contrast 4.5:1, hover, cursor. 3, typography: a real point of view or default system fonts. 4, responsive plus keyboard focus and reduced motion. Run them at once, merge the results, resolve conflicts, render it in a real browser and check the screenshots, fix, pass again, and don't stop until it clears the bar.
```

## 背景

我让 Claude Code 或 Codex 做仪表盘，结果一眼就看得出是 AI 做的。毛病出在两处。一是千篇一律：来回就是那三套模板。二是细节粗糙：图标用 emoji，按钮没有 hover，到处是 AI 紫色渐变。

解法是两个免费的 skill 加两条 prompt。

ui-ux-pro-max 拿到你的需求，返回一整套设计系统：带 hex 值的颜色、带 Google Fonts 链接的字体，以及一份交付前检查清单（图标不用 emoji，能点的都加 cursor-pointer，hover 过渡 150-300ms，文字对比度 4.5:1，不用 AI 紫色渐变）。

frontend-design 是 Anthropic 自己的 skill。它把 AI 从模板默认值里拉出来，还点出了这些默认值最后都会变成的三种样子。装好以后，它先选一个方向，批评自己的方案，扔掉任何换个项目也会照做的东西，再写代码。

prompt 里要点名这两个 skill，不然它们不会触发。把 `{}` 换成你的页面。

做完以后，把审查拆给几个并行的 agent，每个只看一个角度。一遍看全部，只会看得很浅。

## 来源

来自 [Copybook](https://copybook.page/zh/t/stop-ai-looking-dashboards-with-two-design-skills)：@Voxyz_ai 2026年6月30日[发在 X 上](https://x.com/Voxyz_ai/status/2071928115052335364)，截至 2026年7月28日有 1,295 次收藏。适用于 Claude Code 和 Codex。
