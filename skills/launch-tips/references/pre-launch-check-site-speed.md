# Pre-launch check: 20 things that slow a site

A vibe-coded site that loads slowly: images, fonts, frontend, database, APIs and servers, fixed in one pass and re-measured.

## Steps

1. Copy the prompt; when you need it, the line at the end tells it how to run.
2. Send it to Opus 5.5 in Claude Code, in your site's project.
3. You get: 4 subagents check, then the main session fixes everything, with before-and-after Lighthouse numbers.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Before you ship a vibe-coded site, have Opus 5.5 send out 4 subagents to check these 20 things that slow it down, then fix them all in one pass:

Images and fonts
- Convert every image to WebP or AVIF, sized to how big it actually shows on the page
- Serve big images from Supabase Storage through next/image at the right size. On the Pro plan, Supabase's own image transformations work too
- Lazy-load images and videos below the fold, and load the big image at the top of the page first
- Load fonts the way your framework does it (next/font in Next.js), and keep it to one or two fonts
- Remove third-party scripts you don't use, and run analytics and chat widgets after the page has loaded

Frontend code
- Run a bundle analyzer to find the biggest packages, and where a whole library gets imported, import only the parts you use, like single lodash functions
- Load heavy components the first screen doesn't need, like charts, editors and maps, with dynamic import when they're needed
- Fetch the homepage data on the server, so the page opens with content already in it
- Stream AI answers as they're generated
- Show skeletons while data is still loading

Database and APIs
- Index the columns you filter and sort by, including the ones your RLS policies use, like user_id
- In RLS policies, write auth.uid() as (select auth.uid()) so it runs once per query
- Find N+1 queries and turn them into a single query
- Paginate long lists
- Cache API responses that are the same for everyone, and never cache anything tied to a logged-in user
- Move heavy work like sending emails, processing images and building reports to background jobs

Servers and network
- Put your server functions in the same region as your database. New Vercel projects run functions in US East by default
- Turn pages whose content rarely changes into static pages or ISR
- When a page calls APIs one after another, run them in parallel or merge them into one
- In Chrome, emulate a low-end Android phone on slow 4G and click through the main flows

The default medium effort is enough. The database group has to read queries and decide which indexes to add, so raise that one to high.

Send this whole post to Claude Code. If you need to, add this line at the end 👇
"Send one subagent per group to check it without editing anything, and note which file each issue is in and which page it affects. Run the database subagent at high effort. Before changing anything, run a production build (next build && next start in Next.js) or use a preview link, then run Lighthouse three times in mobile mode on the homepage and the two or three slowest pages and note the median. Then fix everything yourself from their lists, measure again the same way, and give me the before-and-after numbers. Don't remove features to gain speed. Ask me before removing dependencies, changing the deploy region or changing the database."
```

## Background

Before you ship a vibe-coded site, have Opus 5.5 send out 4 subagents to check these 20 things that slow it down, then fix them all in one pass.

The default medium effort is enough. The database group has to read queries and decide which indexes to add, so raise that one to high.

Send the whole list to Claude Code.

## Source

From [Copybook](https://copybook.page/t/check-20-things-that-slow-a-vibe-coded-site-down): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2110083153930920113) on 13 Oct 2026, 3.2K saves as of 10 Nov 2026. For Claude Code.
