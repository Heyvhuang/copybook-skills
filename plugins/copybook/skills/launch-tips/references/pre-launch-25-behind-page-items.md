# Pre-launch check: 25 behind-the-page items

Trouble behind the page: keys, billing abuse, payments, monitoring and launch day fixed in one pass; what needs you listed last.

## Steps

1. Copy the prompt.
2. Send the whole prompt to Claude Code in your site's project.
3. You get: Five subagents list issues in 25 checks; after your OK, it fixes them and gives you what's left.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Before you ship a vibe-coded site, have Opus 5.5 send out 5 subagents to check these 25 things behind the pages, then fix them all in one pass:

Keys and access
- Keep secret keys like your OpenAI key and Stripe secret key on the server only. Search your frontend files and git history, and replace any that show up
- Check login and permissions on the server for every endpoint, and validate what users submit there too
- Turn on RLS or write proper security rules for your database, so users can only read and write their own data
- Keep the bucket that holds user uploads private, and share files through links that expire
- Set HttpOnly and Secure on your login cookies
- Keep passwords, tokens and API keys out of your logs

Don't let anyone run up your bill
- Set spending caps or alerts on pay-per-use services like AI, SMS and email
- Rate-limit sign-up, login and verification-code endpoints, and cap AI calls per user per day
- Limit upload size and file types
- Add a CAPTCHA to sign-up, and hold free credits until the email is verified

Where the money comes in
- Verify the signature on every payment webhook
- If the same payment webhook arrives twice, record it once
- Only trust amounts your server calculates
- In test mode, run through a refund, a canceled subscription and a failed charge, and make sure the statuses line up
- When a trial ends or a subscription lapses, remove access on time

When something breaks
- Hook up error monitoring so you're the first to know when something fails
- Back up the database daily, and restore a backup into a fresh database once to test it
- Get notified when a scheduled job fails, before users notice stale data
- Add an external uptime monitor that alerts you the moment the site goes down
- Make sure you can ban an account that's hammering your API with one click from your admin panel

Launch day
- Turn off debug mode and delete test accounts and test data
- Switch payments from test to live, and set up the live keys and webhook signing secret again
- Turn on two-factor auth for Stripe, your hosting platform and your database dashboard
- Turn on auto-renew for your domain and your HTTPS certificate
- Run a security check on your dependencies (like npm audit) and upgrade anything with known vulnerabilities

For effort, follow Anthropic's cost guide. The default medium is enough for well-scoped checks like these. The keys and payments groups are expensive to get wrong, so raise those to high. Thariq tested it: turning effort up mostly buys more verification and edge-case testing.

Send this whole post to Claude Code. If you need to, add this line at the end 👇
"Send one subagent per group to check it without editing anything, and note which file or dashboard each issue is in. Run the keys and payments subagents at high effort. When you find a secret, report only where it is and never paste its value. Then fix everything yourself from their lists, so no two agents edit the same file. For things I have to do in a dashboard, like rotating keys, turning on two-factor auth or setting spending caps, give me the steps and I'll do them. For things only I know, like what the caps should be or how many AI calls per day to allow, ask me first and don't make them up. Don't rewrite git history, don't touch the production database, and only test payments in test mode. Show me the list of issues first, don't change anything until I confirm, and when you're done, tell me what you changed and what's left for me to do."
```

## Background

Part 2: before you ship a vibe-coded site, have Opus 5.5 send out 5 subagents to check these 25 things behind the pages, then fix them all in one pass.

For effort, follow Anthropic's cost guide. The default medium is enough for well-scoped checks like these. The keys and payments groups are expensive to get wrong, so raise those to high. Thariq tested it: turning effort up mostly buys more verification and edge-case testing.

Send the whole list to Claude Code.

## Source

From [Copybook](https://copybook.page/t/check-25-things-behind-the-scenes-before-shipping): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2109328172273606771) on 11 Oct 2026, 1.4K saves as of 8 Nov 2026. For Claude Code.
