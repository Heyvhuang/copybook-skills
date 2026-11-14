# Google search check: 12 items for a live site

You can't find your AI-built site by Googling its name: crawling, every page and the whole site, fixed in one pass.

## Steps

1. Copy the prompt.
2. Send it to Opus 5.5 in Claude Code, in your site's project.
3. You get: All fixed in one pass, every main page before and after, and what to confirm in Search Console.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Have Opus 5.5 send out 3 subagents to check these 12 things, then fix them all in one pass:

Crawling
- Curl every main page with Googlebot's user agent. The title and body text should be there without JS
- If the HTML is just an empty root, switch to server-side rendering or prerendering
- Only use robots.txt and noindex to block pages like admin and login
- Pages that don't exist should actually return a 404, not a 200 with a "not found" message
- Link between pages with <a href>, not just onClick navigation

Every page
- Give every page its own title, meta description and canonical, and point each canonical at its own page, not the whole site at the homepage
- Run Lighthouse and get LCP under 2.5 seconds and CLS under 0.1
- Convert images to WebP and give them a width, height and alt text
- Skip FAQ schema. Google stopped showing FAQ rich results in May 2026

Site-wide
- In sitemap.xml, list only URLs you want indexed that return a 200, and add the sitemap's URL to robots.txt
- Crawl the whole site, fix broken links, and make every redirect a single hop
- Add internal links to pages that no other page links to

Send this whole post to Claude Code and add this line at the end 👇
"Send one subagent per group to check without editing anything, and list the URLs with problems and the files behind them. Then fix everything yourself from their lists in one pass. Before changing anything, curl every main page and note its title and how its body text starts. Curl them again when you're done and show me the before and after. Skip anything that doesn't apply, and at the end tell me which ones I have to log in to Search Console to confirm."
```

## Background

Your AI-built site is live, and you can't even find it by Googling its name.

## Source

From [Copybook](https://copybook.page/t/google-search-check-for-a-live-site): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2116304148228722833) on 30 Oct 2026, 829 saves as of 6 Nov 2026. For Claude Code.
