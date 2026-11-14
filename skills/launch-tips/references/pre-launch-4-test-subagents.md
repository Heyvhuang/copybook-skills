# Pre-launch check: 4 test subagents

Try to break it yourself first: 16 questions on security, data, flows and environment, issues ranked by severity, then fixed.

## Steps

1. Copy the prompt.
2. Send it to Claude Code, and confirm the four subagent files it shows you.
3. You get: Four read-only subagents test 16 questions and hand issues ranked by severity to the main session.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Before you ship, have Opus 5.5 send out 4 subagents whose only job is to break your app, and split these 16 questions between them:

Security
- Do your bundled frontend JS or git history contain private keys like sk_ or service_role?
- Skip the UI and call your APIs directly, logged out or with someone else's ID. Does the server stop you?
- Change the price, quantity or role in a request and send it again. Does the server accept it?
- Hit the same endpoint 100 times in a row. Is there a rate limit per user and IP?
- Hide a snippet that pops an alert in Markdown, rich text or an uploaded SVG. Does it run when another account opens it?

Data
- Load 10,000 records. Does the page still open?
- Use a 200-character name with emoji. Does it break the layout?
- Sign up with the same email in different capitalization. Did you just get two accounts?
- Submit an empty form. Is there now a blank record in your database?

Flows
- Place the same order twice at once, and replay the same payment webhook twice. Did you get two orders?
- Refresh or hit Back halfway through a form. Is what you typed still there?
- Save while offline: it says saved, but nothing was stored
- Upload a 50MB image. Does everything freeze?

Environment
- On a small phone screen at 200% zoom, can you still tap every button?
- Switch to Safari's engine. Does the layout fall apart?
- For users in other time zones, are dates, deadlines and check-ins off by a day?

Set all 4 subagents to high effort. The security one covers payments and login, where one mistake is a disaster, so you can raise it to xhigh or even max. Anthropic's Thariq has said that turning effort up mostly buys more verification and edge-case testing.

Send this whole post to Claude Code, and add this line at the end 👇
"Create 4 testing subagents in ~/.claude/agents, one for each group above: security-breaker, data-breaker, flow-breaker and env-breaker. Use model opus for all of them, effort high, and xhigh for security-breaker. Give them permission only to read files, run commands and use a browser (Playwright), with no changes to code or config. Install Playwright first if it's missing.
Before every launch, run the app locally or in a test environment and have each of them work through its group item by item. If login is needed, ask me for two test accounts first. Use payment test mode only. Mock the AI APIs, or use a test key with a spending cap. Write test data only to a test database and clean it up afterwards. If you find production keys or a live domain, stop immediately and ask me.
For every issue, write the steps to reproduce, a screenshot and the fix. Combine them, rank them by severity and hand them to the main session to fix. Mark anything you can't test as "untested" with the reason. Show me the files you'll create first, and don't write them until I confirm."
```

## Background

Before you ship, have Opus 5.5 send out 4 subagents whose only job is to break your app, and split 16 questions between them: security, data, flows and environment.

Set all 4 subagents to high effort. The security one covers payments and login, where one mistake is a disaster, so you can raise it to xhigh or even max. Anthropic's Thariq has said that turning effort up mostly buys more verification and edge-case testing.

Send the whole list to Claude Code, with the instruction at the end.

## Source

From [Copybook](https://copybook.page/t/send-4-subagents-to-break-your-app-before-shipping): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2104224555040452925) on 27 Sep 2026, 2.1K saves as of 25 Oct 2026. For Claude Code.
