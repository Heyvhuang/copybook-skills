# Logging plan and daily fix list

Broken features, stuck users, slow steps: ranked by users affected, with log lines; the worst one already has a test.

## Steps

1. Copy the Step 1 prompt, then the Step 2 prompt.
2. Send Step 1 to your agent in the app's project, then paste Step 2 into /schedule in Claude Code.
3. You get: A logging plan to approve first, then each morning a ranked list and a test for the worst one.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Step 1: add proper logging

```text
Help me plan logging for this app so we can fully replay one user's experience: what they did, the key steps inside the app, and what they saw in the end. Give every session an ID, and never log passwords, tokens or personal data. Store the logs where an agent running on a daily schedule can read them. Show me the plan first, and don't write any code until I approve it.
```

## Step 2: run once a day

```text
Read this app's logs from the past 24 hours. Find broken features, places where users got stuck, and steps that are slow or unnecessary. Rank them by how many users each one affects, and quote the log lines behind each one. Turn the worst one into a test that reproduces it. Don't change any code yet.
```

## Background

Almost any app can **improve itself a little every day**. All it takes is two prompts.

In Claude Code, type `/schedule` and paste the Step 2 prompt in. It runs in the cloud and **keeps going with your laptop closed**, as long as it can read your logs.

Step 3: every morning, read the ranked list and pick one to fix. The worst one already has a test, so just have your agent fix it until that test passes.

## Source

From [Copybook](https://copybook.page/t/daily-fix-list-from-your-apps-logs): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2115228299400196368) on 27 Oct 2026, 366 saves as of 3 Nov 2026. For Claude Code.
