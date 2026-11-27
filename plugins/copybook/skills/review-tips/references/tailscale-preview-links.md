# Tailscale preview links on your phone: a rule

Agent links that say localhost: Tailscale links to previews, review pages and dashboards that open right on your phone.

## Steps

1. Copy the Tailscale link rule.
2. Add it to your AGENTS.md or CLAUDE.md, with Tailscale on your computer and phone, same account.
3. You get: Links the agent published with tailscale serve and opened itself to check they work.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Rule: Tailscale links

```markdown
Any time you give me a link to something running on this computer (a preview, a review page, a dashboard), give me a Tailscale link, never localhost. I work across several computers and my phone. Publish it with tailscale serve, open the link yourself to check it works, then send it.
```

## Check: Stop hook

```json
{
  "hooks": {
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "command -v jq >/dev/null || { echo 'This check needs jq.' >&2; exit 1; }; jq -c 'if .stop_hook_active == true then empty else [(.last_assistant_message // \"\") | scan(\"(?i)https?://(?:[^\\\\s/?#@]*@)?(\\\\[[0-9A-Fa-f:.]+\\\\]|[A-Za-z0-9._-]+)\") | .[0] | ascii_downcase | ltrimstr(\"[\") | rtrimstr(\"]\") | rtrimstr(\".\") | select(. == \"localhost\" or . == \"127.0.0.1\" or . == \"::1\" or . == \"0.0.0.0\")] | if length > 0 then {decision: \"block\", reason: \"Your reply links to \\(.[0]). Publish it with tailscale serve, open the Tailscale link yourself to check it works, then send that link instead.\"} else empty end end'"
          }
        ]
      }
    ]
  }
}
```

When a reply links to localhost, 127.0.0.1, ::1 or 0.0.0.0, Claude Code is sent back once to publish a Tailscale link instead; it reads only the links in the reply and lets the second stop through. Needs `jq` (built into macOS 15 and later); without it the hook reports an error and blocks nothing. Merge it into `.claude/settings.json`. Copybook wrote and tested it on Claude Code 2.1.331, 24 Nov 2026.

This check is Copybook's, not part of the tip, and runs on the user's machine once added. Offer it once the tip is in place, show it, and add it only if the user says yes.

## Background

1. Install Tailscale on your computer and your phone, same account (free).
2. Open your project in Claude Code or Codex.
3. Ask it to run the project and send you a preview link.
4. Add this and the link opens right on your phone. Save it to AGENTS.md or CLAUDE.md and it works every time.

## Source

From [Copybook](https://copybook.page/t/open-preview-links-on-your-phone-with-tailscale): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2121702208546967753) on 14 Nov 2026, 4.2K saves as of 21 Nov 2026. For Claude Code and Codex.
