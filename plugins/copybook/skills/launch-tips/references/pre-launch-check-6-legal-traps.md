# Pre-launch check: 6 legal traps

Review the product’s data collection, fonts, session replay, marketing email, renewals and user uploads against the rules that apply to it.

## Steps

Identify where the product operates and which of the six features it has. For each, cite the file or service you checked and mark missing evidence. Check current official sources before suggesting a change or quoting a penalty. General-audience services do not all need to ask a visitor’s age. DMCA agent registration is one condition for certain service providers seeking a safe harbor. Report findings before making changes. See the [FTC’s COPPA guidance](https://www.ftc.gov/business-guidance/resources/complying-coppa-frequently-asked-questions) and the [US Copyright Office’s section 512 guide](https://www.copyright.gov/512/).

If these steps save a rule in a file such as AGENTS.md and you are doing the work it governs, follow the rule in this task now and offer once to add it to the file.

## Original post

The excerpts below are for reference. Follow the scoped steps above.

### Checklist

```text
Claude Code tip: a vibe-coded app can get you sued with zero sales. Before you ship, have Opus 5.5 send out 6 subagents to check these 6 legal traps, then fix them all in one pass:

No under-13 check at signup
→ Collecting personal info from kids under 13 without parental consent breaks COPPA: up to $53K per violation
→ Add an age check at signup. Under 13 needs verifiable parental consent, and if you can't get it, don't let them sign up

Fonts loaded from Google's servers
→ The moment an EU visitor opens a page, their IP goes to Google without their consent. In 2022, a Munich court ordered a site to pay one visitor €100 under GDPR
→ Download the fonts and host them on your own server

Session replay on by default
→ Recording what visitors type and click can get you sued for wiretapping in California (CIPA): $5,000 in damages per violation
→ Turn it off, or ask for consent first and mask what people type into inputs

Marketing emails missing an unsubscribe link or a mailing address
→ That breaks CAN-SPAM: up to $53K per email
→ Put an unsubscribe link and a valid mailing address in every marketing email

No renewal terms next to the subscribe button
→ In California, if you auto-renew without the user's clear consent, the renewal may count as a free gift to them
→ Next to the button, say how often you charge, how much, and how to cancel, and have users tick a box to agree

User uploads, but no registered DMCA agent
→ If a user uploads infringing content, you may not get safe harbor protection. Registering costs $6 and lasts 3 years, then you renew
→ Register on the US Copyright Office website

Most of these amounts are counted per instance: each child, each recording and each email can count as one, even with zero sales. This follows US and EU rules and isn't legal advice. If you're not sure, ask a lawyer.
```

### Line to add at the end

```text
Send one subagent per item to check it without editing anything, and note which file or which dashboard each issue is in. Then fix everything yourself from their lists, so no two agents edit the same file. For things I have to do myself, like registering a DMCA agent or changing my email service's settings, just give me the steps. For things only I know, like my mailing address or prices, ask me first and don't make them up. Show me the list of issues first, flag anything you're not sure applies to me, don't change anything until I confirm, and when you're done, tell me what you changed.
```

### Background

A vibe-coded app can get you sued with zero sales. Before you ship, have Opus 5.5 send out 6 subagents to check these 6 legal traps, then fix them all in one pass.

Most of these amounts are counted per instance: each child, each recording and each email can count as one, even with zero sales. This follows US and EU rules and isn't legal advice. If you're not sure, ask a lawyer.

Send this whole post to Claude Code. If you need to, add this line at the end.

## Source

From [Copybook](https://copybook.page/t/check-6-legal-traps-with-6-subagents-before-shipping): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2107901270719603185) on 7 Oct 2026, 1.2K saves as of 4 Nov 2026. For Claude Code.
