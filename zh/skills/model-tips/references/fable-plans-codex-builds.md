# Fable 5 管规划，后端给 Codex

Fable 5 烧 token 太快：规划和前端留给它，后端用 /goal 派给 Codex；另附一条前端改版提示词。

## 步骤

1. 复制主会话和 Codex 分工的提示词，前端改版那条按需取用。
2. 在 Claude Code 里发给跑 Fable 5 的主会话。
3. 得到：Fable 5 只管规划和前端，后端用 /goal 交给 Codex。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词：主会话和 Codex 分工

```text
to save tokens, keep this main session (fable 5) on planning and frontend tasks, its visual output and ideas are worth the price. for backend and heavier implementation, write a clear spec and dispatch to codex (gpt-5.5 xhigh) with /goal to execute, my quota there sits unused anyway. you may keep the hardest parts in this session.
```

## 提示词：前端改版

```text
重新设计这个项目的 {你的页面，比如定价页}。创意上完全自由，但视觉必须够冲击力、够有互动感，带动效和一个隐藏彩蛋。先搜一遍 2026 年的设计趋势，再用上。
```

## 背景

Fable 5 烧 token 很快，但 prompt 这样写就用得起。主会话只管规划和前端，这部分的视觉产出和创意值这个价钱。后端和更重的实现，用 `/goal` 交给 Codex。

我一直在测一条前端设计 prompt，效果不错。把页面换成你自己的。

## 来源

来自 [Copybook](https://copybook.page/zh/t/keep-fable-on-planning-and-send-backend-to-codex)：@Voxyz_ai 2026年6月11日[发在 X 上](https://x.com/Voxyz_ai/status/2065142760915472691)，截至 2026年7月22日有 2,520 次收藏。最近一次检查：发帖当天，Fable 5，可用。适用于 Claude Code 和 Codex。
