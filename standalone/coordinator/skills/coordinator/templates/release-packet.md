# <Release name>: release packet

Needs <owner>'s yes for this exact change unless a recorded grant already covers it. Nothing below has run against production. Follow this release's own reviewed runbook: <path>. The sequence below is filled from that runbook, not from another release.

## Cleared (FILLED = sourced fact, not permission)
- PRs at exact heads; SQL file SHA-256; build/deployment it binds to.
- Gate train and its report; review verdict, round, and the exact bytes it reviewed.
- Production baseline read read-only: <history, main sha, sizes> at <time>.

## Compatibility
- Old app + prepared database: <proved how>. Mixed versions during rollout: <proved how>.
- Every serving writer and recovery path (workers, cron, webhooks, MCP, external hosts) and its owner: <list>.

## Sequence (stage → stop condition → readback)
1. <stage> — stop if <condition> — readback: <what proves it>.

## Rollback
- Safe recovery artifact for each stage (proved compatible with the state after that stage): <artifact>.
- Point after which rollback is unsafe: <stage>; after it, forward-fix only.
- Ambiguous failure: read actual schema and history before any retry.

## Not in this release (each needs its own yes)
- <later stages, live mode, settings>

Status words: FILLED, PLANNED (future check, owner, evidence path), UNRESOLVED (named owner must supply it). None is permission.
