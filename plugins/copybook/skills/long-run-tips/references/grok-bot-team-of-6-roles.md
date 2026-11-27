# Grok Bot team of 6 roles

Which work deserves its own Bot: six roles with ownership, handoffs and limits, and what stays a Skill or a routine.

## Steps

1. Copy the six roles.
2. Set up one Grok Bot per role and give each Bot the Plugins it needs.
3. You get: A Grok Bot team where each role owns its work and hands off to the others.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Six roles

```text
1. Nexus (Coordination)

This is the Bot I use most. It reads today's tasks and each Bot's checkpoint, sets priorities, then hands the work to the right role.

It also runs the nightly review, but only updates one TEAM_ALIGNMENT.md file. Conflicts, external messages, spending, and changes to important files come back to me.

2. Scout (Research and Leads)

Scout reads X, GitHub, documentation, papers, and videos, and runs the daily content radar.

Every result needs a source, a reason it is worth following, and a clear next owner. Content signals go to Quill, customer leads go to Guide, and technical issues go to Forge.

3. Quill (Content)

Quill reads my writing rules, previous work, and approved phrasing, then turns research into posts, articles, and replies.

When facts are missing, it asks Scout. For code or product details, it asks Forge. It prepares drafts but never publishes on its own.

4. Forge (Engineering and Automation)

Forge writes code, builds automations and MCPs, deploys, and verifies the result.

Guide can call it when a customer asks a technical question. Nexus can hand it repetitive work to turn into a tool. Every delivery needs test results, screenshots, or files I can inspect. A delivery does not count as complete without that evidence.

5. Guide (Customers and Delivery)

Guide manages customers, prospects, briefs, feedback, delivery, and follow-up.

Each important customer gets a separate context packet containing recent conversations, current goals, promises made, and open problems. Guide asks Scout to research a company or contact, and asks Forge for technical answers. Customer emails and messages remain drafts.

6. Ledger (Finance and Reconciliation)

Ledger reads Wise, PayPal, invoices, and subscription data through my self-hosted MCP, then handles reconciliation, revenue records, and anomaly alerts.

The real API keys stay on my own server. Ledger can prepare payment or refund recommendations, but every financial write still needs my approval.
```

## What each piece is

```text
Bot = owns an ongoing work queue and needs its own memory  
Skill = a reusable method  
Routine = a task triggered on a schedule  
Packet = context for one customer or project  
Connector / MCP = access to external data and tools
```

## Background

If you're building a Grok Bot team, I'd start with these six roles.

A Bot needs recurring work, its own memory and task list, and regular handoffs. One-off capabilities stay as Skills or routines.

Once the roles are set, give each Bot the Plugins it needs. For example, Nexus can use Gmail, Calendar, Slack, and Granola. Quill can read Drive and Notion. Guide can use Gmail, Slack, and meeting notes. Forge can connect to code repositories and cloud services. Ledger continues to use my self-hosted MCP.

Repeated methods become Skills. Work that needs to run on a schedule becomes a routine. Customer emails stay drafts, labelled "BOT DRAFT · NOT SENT · HUMAN REVIEW REQUIRED", and are sent only after I approve them.

I start new capabilities as Skills. Once something has recurring work, its own state, and frequent handoffs with other Bots, then I create a Bot for it.

## Source

From [Copybook](https://copybook.page/t/start-a-grok-bot-team-with-six-roles): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2089355252306767990) on 17 Aug 2026, 1.5K saves as of 14 Sep 2026. For Grok.
