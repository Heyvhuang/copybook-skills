# VPS 加固：只走 Cloudflare，SSH 走 Tailscale

用了 Docker，ufw 拦不住：访客只能经 Cloudflare 进来，SSH 只有你能经 Tailscale 登录。

## 步骤

1. 复制提示词。
2. 在服务器上把它发给 Claude Code 或 Codex。
3. 得到：网站只经 Cloudflare 访问，SSH 只有你能经 Tailscale 登录，还能从外部检查。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
先检查我的域名是否经 Cloudflare 代理，以及这台服务器是否在 443 上提供 HTTPS。然后安装 Tailscale，把这台服务器加入我的 tailnet。把防火墙锁紧：443 只允许来自 Cloudflare 的 IP 段，SSH 22 只允许来自 Tailscale，其他全部关闭，包括 Docker 发布的端口。在我确认能经 Tailscale 登录之前，保留公网 SSH。完成后，告诉我怎么从外部检查它是否生效。
```

## 背景

用了 Docker，ufw 就不管用了。容器发布的端口会直接绕过它。只允许密钥登录 SSH 也不够。sshd 本身有漏洞时，攻击者照样能进来。

如果你的域名已经走 Cloudflare 代理，在服务器上打开 Claude Code 或 Codex，把提示词发给它。它做完后，访客只能经 Cloudflare 访问你的网站，SSH 只有你能登录，而且要经 Tailscale。

## 来源

来自 [Copybook](https://copybook.page/zh/t/lock-down-a-vps-behind-cloudflare-and-tailscale)：@Voxyz_ai 2026年10月24日[发在 X 上](https://x.com/Voxyz_ai/status/2114009025528426980)，截至 2026年10月31日有 1,226 次收藏。适用于 Claude Code 和 Codex。
