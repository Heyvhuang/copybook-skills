# Scaling check: cache, queue, load balancer

Whether your app needs them yet: six scaling fixes judged from your code, the file behind each answer, the monthly cost of each.

## Steps

1. Copy the prompt.
2. Paste it into Claude Code or Codex in your project.
3. You get: Fixes you need today, ranked by what breaks first if traffic spikes, each with a rough monthly cost.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Check this repo against these six common scaling fixes:
- a cache for slow reads
- a queue for slow background jobs
- a load balancer for heavy traffic
- read replicas for a busy database
- object storage + CDN for files
- retries, timeouts and logs for failures

Start from the code, and only ask me what it can't tell you, like our traffic numbers or which host we're on. For each one, tell me whether we need it today and show the file or query that proves it. If our host already handles one of these, say so and skip it. For the ones we need, give the smallest fix and a rough monthly cost on our current host. Rank them by which part of the app would break first if traffic spiked. For the ones we don't need yet, one line is enough. Don't change any code.
```

## Background

Does your app actually need a cache, a queue or a load balancer yet?

In your project, paste the prompt into Claude Code or Codex. It uses your code as evidence and tells you which ones to add now and roughly how much each adds to your monthly bill.

## Source

From [Copybook](https://copybook.page/t/check-whether-your-app-needs-a-cache-queue-or-load-balancer): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2114386505603137620) on 25 Oct 2026, 79 saves as of 22 Nov 2026. For Claude Code and Codex.
