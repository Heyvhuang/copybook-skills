# Internet Archive 的公有领域素材

镜头需要老电影或老唱片：自动搜 Internet Archive 的免费 API，只用公有领域条目，每条记下来源。

## 步骤

1. 复制这条规则。
2. 在你剪视频的项目里把它加给 Claude Code。
3. 得到：素材在 media/ 里，只剪了用到的那段，每一条在 credits.txt 里都有一行。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 规则

```text
需要老电影片段或老唱片音乐时，先读 http://archive.org/developers/，再搜 http://archive.org/advancedsearch.php，找电影加上 collection:prelinger，找音乐加上 collection:78rpm。只用 licenseurl 字段里包含 publicdomain 的条目，没有 licenseurl 的一律跳过。下载到 media/，只剪出用到的那段，并把每个条目的 identifier、title 和 licenseurl 记进 credits.txt。
```

## 背景

Internet Archive 有 17M+ 个视频条目和 14M+ 个音频条目，搜索 API 免费，不用注册账号。其中 1,876 部老电影和将近 70,000 张 78rpm 唱片标为公有领域。

如果你用 Claude Code 剪视频，哪个镜头需要，它就会去 archive.org 找素材或配乐。

## 来源

来自 [Copybook](https://copybook.page/zh/t/pull-public-domain-footage-and-music-from-the-internet-archive)：@Voxyz_ai 2026年10月23日[发在 X 上](https://x.com/Voxyz_ai/status/2113732191209365933)，截至 2026年11月20日有 160 次收藏。适用于 Claude Code。
