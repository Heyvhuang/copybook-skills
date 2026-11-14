# 状态栏缓存倒计时

缓存什么时候过期平时看不到：状态栏常显还剩几分钟，过期后告诉你下一句要重算多少 token。

## 步骤

1. 复制提示词。
2. 把它和那份文档链接一起发给 Claude Code 里的 Opus 5.5。
3. 得到：状态栏一直显示缓存还剩几分钟，过期后告诉你下一句要重算多少 token。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
读这份文档，连同它链到的 status line 字段说明，在我的 Claude Code 状态栏加一段缓存状态。
1. 已经有 status line 就别替换：先把 stdin 存下来，原命令和缓存段用同一份输入，原来的输出不动，缓存段另起一行接在后面。没有就新建一个。
2. 数据从输入里的 prompt_cache 拿：warm、ttl、expires_at、hit_ratio、misses、last_miss_cause、recache_tokens_if_cold。还没有 prompt_cache 就先不显示；版本里没有的字段就跳过。
3. 热的时候绿色，显示进度条和剩余时间，比如「cache ● 1h ████░░ 38m left · hit 91% · misses 0」，剩不到 20% 变黄。
4. 凉了变红，显示「cache ○ cold · next message re-caches 82k tokens」，token 数按 k 取整；有 miss 原因才带上。
5. 在原来 statusLine 所在的 settings 文件里，statusLine 对象里和 command 同级加 "refreshInterval": 30，让倒计时自己走。
Claude Code 低于 2.1.251 就告诉我，别自己升级。改完用样例 JSON 把热、快过期、凉三种状态各跑一遍，把输出给我看。
```

## 背景

你每发一句，Claude Code 都会把整段对话重新发给模型。有缓存，前面那一大段就不用重新算，回得更快，额度也用得少。可缓存会过期，过期以后的第一句，整段对话都得从头再算。还剩多久过期，平时看不到。加上这条，状态栏会一直显示还剩几分钟；过期了，它会告诉你下一句要重新算多少 token。快到点了还有话要问，就先问完。

官方文档里还有几条，我之前都不知道：

- 订阅额度内，主对话缓存 1 小时，subagent 和 workflow 只有 5 分钟；用 API key，或者超额开始扣 usage credits，主对话也只有 5 分钟。
- 中途切模型会整段重算，opusplan 每进出一次 plan mode 都算切一次。
- 会话中途改 CLAUDE.md 不会打破缓存，但也不生效，要 /clear、/compact 或重启才加载。
- 做歪了想重来，用 /rewind 退回去，能接上原来的缓存；/compact 会重新建一份。

把这段 prompt 和这份文档一起发给 Opus 5.5：https://code.claude.com/docs/en/prompt-caching

## 来源

来自 [Copybook](https://copybook.page/zh/t/add-a-cache-countdown-to-the-status-line)：@Voxyz_ai 2026年10月5日[发在 X 上](https://x.com/Voxyz_ai/status/2107184044228452491)，截至 2026年11月2日有 2,547 次收藏。适用于 Claude Code。
