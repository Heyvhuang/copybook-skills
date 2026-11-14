# awesome-design-md 和 shadcn skill

页面总是默认 shadcn 味：Stripe 或 Linear 风格的 DESIGN.md，整套组件照着改，附一页设计系统。

## 步骤

1. 复制安装 shadcn skill 的命令，再复制提示词。
2. 装好后，把提示词连同 DESIGN.md 的 Raw 链接发给 Claude Code。
3. 得到：一个照这份 DESIGN.md 改好样式的新 Next.js 项目，最后附一页设计系统总览。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 安装 shadcn skill

```bash
npx skills add shadcn/ui
```

## 提示词

```text
用 shadcn skill 新建一个 Next.js 项目，照这份 DESIGN.md 搭一套设计系统，最后做一页总览。先把文件下载到项目里再读：<Raw 链接>
```

## 背景

Claude Code 做出来的页面，总带着一股默认 shadcn 味？想换成 Stripe、Linear 那种质感，这两样东西配着用：

1. [**awesome-design-md**](https://github.com/VoltAgent/awesome-design-md)。想要哪种质感，先在这里挑一份。开源仓库，120K 星，照 Stripe、Linear、Vercel、Notion 等 74 个产品的风格整理了 DESIGN.md，社区仿写，非官方。配色、字体、间距、圆角、阴影，还有该做和别做的，都写在里面，agent 能直接读。
2. **shadcn 官方的 skill**。挑好一份交给它。它先新开一个项目，不碰你现有的代码，装上全部组件，再按这份 DESIGN.md 改一遍整套样式。做完会给你一页设计系统总览：颜色查过对比度，每个组件的各种状态都列出来，该做和别做的摆成对照。

装好以后，在 GitHub 打开你挑的那份 DESIGN.md，点 Raw 复制链接，在 Claude Code 里发这一句。

不满意就换一份重跑。看中一套，就让 Claude Code 把主题和组件搬进你的项目，当起点再改成你自己的。

## 来源

来自 [Copybook](https://copybook.page/zh/t/restyle-shadcn-from-a-design-md)：@Voxyz_ai 2026年10月11日[发在 X 上](https://x.com/Voxyz_ai/status/2109388573711512054)，截至 2026年11月8日有 538 次收藏。适用于 Claude Code。
