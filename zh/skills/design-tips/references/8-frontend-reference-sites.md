# 写进 CLAUDE.md 的 8 个前端参考网站

卡在风格、组件、动效、演示视频或收尾：8 个网站按卡点分好，存进 CLAUDE.md，该用哪个它知道。

## 步骤

1. 复制 8 个网站下面的提示词。
2. 发给 Claude Code，它先给你看要加的内容，你确认后再写。
3. 得到：~/.claude/CLAUDE.md 多一段「前端参考」，Claude Code 知道何时用哪个。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
在 ~/.claude/CLAUDE.md 加一段「前端参考」。只在新做页面、我说不好看、或我点名某个网站时才用，小改动直接做：
- 定风格：从 styles.refero.design 或 GitHub 上的 VoltAgent/awesome-design-md 挑一个贴近产品的 DESIGN.md，放进项目根目录，并在项目的 CLAUDE.md 里加一行 @DESIGN.md，以后每次都按它的配色、字体、间距来做。
- 缺组件：先在 21st.dev 找，装了它的 MCP 就直接调用，它有免费额度，调用前先告诉我要找什么；再去 component.gallery 看成熟的设计系统怎么做同一个组件。
- 做动效：去 kinetics.colorion.co 拿现成的 prompt 或 React 代码。
- 做演示视频：我从 whatships.com 挑好参考视频发给你，你抽帧拼成一张图，看清节奏和转场，再用 HyperFrames（hyperframes.dev）做。
- 做完觉得不对：用 Impeccable（impeccable.style）的 polish、distill 过一遍。
项目里已有的设计系统和组件优先，外部参考只补还没定下来的部分。需要的 MCP、skill 或命令行工具没装，先问我要不要装，不要自己模仿。网页读不到原文就停下，让我把内容贴给你，不要凭记忆补。每次用了外部参考，告诉我用了哪个、改了哪些。先把要加的内容给我看，我确认后再写。
```

## 背景

Opus 5.5 写前端已经很强，再给它配上这 8 个网站，简直开了挂：2,000+ 个真实产品网站的设计风格、12,000+ 个组件和模板、153 个带 prompt 的动效，都能直接喂给它。

按你卡在哪一步分好了：

**不知道做成什么风格**

- [Refero Styles](https://styles.refero.design)：每个产品网站的配色、字体、间距，都整理成一份给 AI 读的 DESIGN.md，挑一个放进项目让它照着做
- [awesome-design-md](https://github.com/VoltAgent/awesome-design-md)：GitHub 上 118k 星的 DESIGN.md 合集，74 个品牌，MIT 开源

**组件做得太糙**

- [21st.dev](https://21st.dev)：React / Tailwind 组件和模板，接上它的 MCP，Claude Code 能自己搜；复制安装有免费额度
- [Component Gallery](https://component.gallery)：按组件查，看 95 个设计系统怎么做同一个组件

**动效没感觉**

- [Kinetics](https://kinetics.colorion.co)：弹簧物理动效，每个都能复制 CSS、React 或一段现成的 AI prompt

**要做演示视频**

- [whatships](https://whatships.com)：2,000+ 条产品发布视频，挑一条同类的发给它，让它抽帧拼成一张图照着做
- [HyperFrames](https://hyperframes.dev)：Claude Code 用 HTML 写视频，HyperFrames 渲染成 MP4

**做完总觉得差点意思**

- [Impeccable](https://impeccable.style)：装进 Claude Code 的一套设计命令，bolder、distill、polish 把「再好看点」变成具体改法

把这段发给 Claude Code，让它记住这张表。

## 来源

来自 [Copybook](https://copybook.page/zh/t/give-opus-5-5-eight-frontend-reference-sites)：@Voxyz_ai 2026年9月27日[发在 X 上](https://x.com/Voxyz_ai/status/2104284941437784139)，截至 2026年10月25日有 1,693 次收藏。适用于 Claude Code。
