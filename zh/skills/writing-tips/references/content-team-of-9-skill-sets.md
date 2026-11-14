# 内容团队：9 套 skill

一个人做内容：装好选题、写作、配图、视频、声音和排期的 skill，再拿一个选题试跑。

## 步骤

1. 复制 skill 列表和提示词。
2. 在 Claude Code 里先把 skill 列表发给 Opus 5.5，再发提示词。
3. 得到：装好你会用到的 skill，并把一个选题一路做到 Postiz 里的草稿。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## Skill 列表

```text
选题

1. last30days · 64K 星
选题之前先跑它。它会抓取一个话题最近 30 天在 Reddit、X、YouTube、HN 和 TikTok 上的讨论，按真实互动排序，写成一份简报。问一句 /last30days what's exploding in AI agents?，你就能拿到 5 到 10 个正在升温的话题。Reddit 和 HN 装好就能用；X、YouTube 和 TikTok 要先走一遍它的设置向导。我们自己也在用，找选题时用它拉 Reddit 和 HN 上的讨论。
mvanhorn/last30days-skill

写作

2. marketingskills · 54K 星
写帖子、落地页和邮件用。里面有 50 个营销 skill，做内容用这四个就够了：copywriting、copy-editing、social 和 content-strategy。
coreyhaines31/marketingskills

3. humanizer · 55K 星
初稿写完，最后跑它。它对照维基百科编辑列出的 26 个 AI 写作特征逐条检查，把文字改得像人写的，意思不变。缺了细节，它会停下来问你。给它一段你自己写的文字，它还会贴合你的语气。
blader/humanizer

视觉

4. baoyu-skills · 27K 星
需要封面、信息图或图表时从这里挑。封面和信息图需要图像模型：装好 Codex 并登录了，它会用 Codex 出图；没有的话，装 baoyu-image-gen 并填一个 key。diagram 让 Claude 手写 SVG，装完就能用。作者建议只装你需要的，全装的话每次运行都会多占上下文。
JimLiu/baoyu-skills

5. frontend-slides · 30K 星
做 LinkedIn 轮播图用它。它把幻灯片做成网页，再导出 PDF，LinkedIn 的文档帖要的就是 PDF。
zarazhangrui/frontend-slides

视频

6. HyperFrames · 60K 星
做讲解视频和产品演示用。你写 HTML，它渲染成 MP4；我们有好几条视频就是这样做的。偏好 React 的话，Remotion 的官方 skills（remotion-dev/skills）也行，个人和最多 3 人的公司免费。
heygen-com/hyperframes

7. video-use · 29K 星
自己对着镜头拍了素材？交给它。把原始片段丢进一个文件夹，跟 Claude Code 聊着就能剪。它会剪掉「嗯」、说错重来的开头和停顿，再调色、烧录字幕。渲染完，它会先自己把每个剪辑点检查一遍再给你看。转录用的是 ElevenLabs，所以你需要它的 key。
browser-use/video-use

声音

8. ElevenLabs 官方 skills
视频需要旁白、音乐或另一种语言的版本时用。配音会保留原说话人的声音，还有音效和背景降噪。它和 video-use 共用一个 key，超出免费额度要付费。
elevenlabs/skills

发布

9. Postiz · 37K 星
排期用。它支持 30+ 个平台，包括 X、LinkedIn、TikTok 和 YouTube，还带数据分析。托管版用一条 claude mcp add 加一次登录就能接上 Claude Code，可以免费开始。自托管要在每个平台申请开发者应用，Meta、YouTube 和 TikTok 可能要几周。他们也建议全程有人把关。
gitroomhq/postiz-app
```

## 提示词

```text
按上面的列表帮我搭一条内容流水线：
1. 先问我主要在哪些平台发内容、做不做视频和旁白。只装我会用到的。
2. 先读每个的 README 看安装步骤。用 npx skills add 安装的，都加上 -g -a claude-code，不然可能装到 Claude Code 不读的文件夹里。HyperFrames 用 npx hyperframes skills update，只装核心那一组。baoyu-skills 和 marketingskills 只装我会用到的。video-use 按它的 README 装进 ~/.claude/skills。Postiz 的 MCP 用 claude mcp add 接上，登录我自己点。只能用 /plugin 安装的，把命令列出来，我自己敲。缺 Node、Python 或 ffmpeg 的话，先告诉我。
3. 需要 API key 的（ElevenLabs、图像模型），告诉我去哪里拿、填进哪个环境变量，我自己填。你可以检查它有没有设好，但不要打印它的值。
4. 全部装好、填好之后，提醒我重启 Claude Code，用 claude --continue 回到这里，再在 /mcp 里登录 Postiz。
5. 拿一个选题从头跑到尾：用 last30days 查最近 30 天的讨论，给我 3 个角度挑；写初稿，过一遍 humanizer；封面、轮播图、视频脚本和旁白都基于这份定稿；我要视频的话，做一条短的；最后在 Postiz 里存成草稿。
6. 每一步做完给我看，我说继续再往下。排期或发布任何内容之前，一定等我点头。
```

## 背景

一个人做内容，也能有一整个内容团队。Claude Code 里的 Opus 5.5 当主编，9 套 skill 各管一件事：找选题、写作、配图、剪视频、声音和排期。

把整个列表发给 Claude Code 里的 Opus 5.5，再发提示词。它会一个个装好，再试跑一遍。

## 来源

来自 [Copybook](https://copybook.page/zh/t/content-team-of-9-skill-sets-in-claude-code)：@Voxyz_ai 2026年10月12日[发在 X 上](https://x.com/Voxyz_ai/status/2109660366389064104)，截至 2026年11月9日有 176 次收藏。适用于 Claude Code。
