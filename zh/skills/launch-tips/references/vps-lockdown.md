# VPS lockdown: Cloudflare only, SSH over Tailscale

With Docker, ufw doesn't help: visitors reach your site only through Cloudflare, and only you SSH in, over Tailscale.

## Steps

1. Copy the prompt.
2. Send it to Claude Code or Codex on the server.
3. You get: Your site only through Cloudflare, SSH only for you over Tailscale, and how to check from outside.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
First check that my domain is proxied through Cloudflare and this server serves HTTPS on 443. Then install Tailscale and join this server to my tailnet. Lock the firewall down: 443 only from Cloudflare's IP ranges, SSH 22 only from Tailscale, everything else closed, including ports Docker publishes. Keep public SSH open until I confirm I can log in over Tailscale. When you're done, show me how to check from outside that it worked.
```

## Background

With Docker, ufw doesn't help. The ports your containers publish go straight around it. Key-only SSH login isn't enough either. When sshd itself has a vulnerability, attackers still get in.

If your domain already goes through Cloudflare's proxy, open Claude Code or Codex on the server and send it the prompt. Once it's done, visitors can only reach your site through Cloudflare, and only you can SSH in, over Tailscale.

## Source

From [Copybook](https://copybook.page/t/lock-down-a-vps-behind-cloudflare-and-tailscale): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2114009025528426980) on 24 Oct 2026, 1.2K saves as of 21 Nov 2026. For Claude Code and Codex.
