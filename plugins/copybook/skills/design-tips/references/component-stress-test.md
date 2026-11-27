# Component stress test in every state

Sample data proves little: the real component rendered in every state that matters, fixed only where a failure reproduces.

## Steps

1. Copy the /goal prompt and fill in [COMPONENT NAME OR PATH].
2. Send it to Codex in your project.
3. You get: Your component rendered in every relevant state, with only reproducible problems fixed.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
/goal Check [COMPONENT NAME OR PATH] and make sure it survives the content and states it will encounter in real use.

INSPECT ONLY THIS COMPONENT.

Do not modify it yet. Read its actual props, slots, states, data sources, and where it is used. Based on what it really accepts, select the stress cases that apply.

TEST THESE WHEN RELEVANT:

→ No data, one item, and many items
→ Loading, error, disabled, and permission-denied states
→ Normal text, very long text, and an unbreakable string
→ Missing images, very large numbers, and incomplete data
→ A 320px viewport and any other widths the component supports
→ Dark mode; skip it if the project does not support it

Do not add irrelevant cases just to make the list longer.

BUILD THE TEST PAGE:

Create a temporary page inside the app. Import the real component and use the project’s existing fonts, styles, tokens, and layout context. Render every scenario side by side in one pass.

Do not rebuild a lookalike component or connect to production data.

Open the page and record only problems you can actually reproduce. Do not predict failures from the code or report personal taste as a bug.

FIX ONLY CONFIRMED PROBLEMS:

Fix them one at a time. After each change, rerender the original failing state and verify:

→ Content no longer overflows or disappears
→ Primary actions still work
→ Keyboard and focus behavior did not regress
→ States that already passed were not broken

Do not use this as an excuse to redesign the component, change its public API, or touch functionality outside the test page.

RETURN:

→ Every state you tested
→ Before-and-after screenshots
→ What you fixed
→ Anything still unresolved
→ Relevant test and build results

DONE WHEN:

Every applicable state has been rendered, every confirmed problem has been fixed and retested, the existing tests pass, and the build succeeds.
```

## Background

Before you ship, use `/goal` to stress-test your app's most important component in every state that matters. A component working with sample data only proves that the sample didn't break it. What happens with no data? Does a long title push the button off a phone screen? When the API fails, does the user still have a next step?

This `/goal` puts the real component on a temporary page and runs all those states at once. It only changes the component when a failure can be reproduced, then reruns the exact same state after each fix.

## Source

From [Copybook](https://copybook.page/t/stress-test-a-component-in-every-state): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2092688531705729210) on 26 Aug 2026, 487 saves as of 23 Sep 2026. For Codex.
