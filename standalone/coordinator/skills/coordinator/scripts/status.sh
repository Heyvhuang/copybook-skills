#!/bin/bash
# status.sh: a live progress board for a coordinator run. Read-only; redraws every 20 s until you press Ctrl-C.
# Usage: status.sh <run-dir> <herdr-session> [repo-path]
# Shows the repo's remote main (when a repo path is given), each Herdr worker's state, the READY lines in the
# run's hand-overs and reviews, the lines under "## Done" in gate/queue.md, and the run record's last six log lines.
# Open it in a terminal tab the user can see. It reads files and asks git and Herdr; it changes nothing.
RUN=${1:?usage: status.sh <run-dir> <herdr-session> [repo-path]}
SESSION=${2:?usage: status.sh <run-dir> <herdr-session> [repo-path]}
REPO=$3
while :; do
  clear 2>/dev/null || printf '\033[2J\033[H'
  echo "$(basename "$RUN") · $SESSION  $(date '+%H:%M:%S')  (refreshes every 20 s, Ctrl-C to stop)"
  if [ -n "$REPO" ]; then
    echo "Remote main: $(git -C "$REPO" ls-remote origin refs/heads/main 2>/dev/null | cut -c1-9)"
  fi
  echo
  echo "== Workers =="
  # Drop HERDR_SESSION, as parallel-goal-fleet's references/herdr.md does, so the board reads the run's session
  # even when it runs inside another Herdr pane.
  env -u HERDR_SESSION herdr --session "$SESSION" agent list 2>/dev/null | python3 -c '
import json, sys
try:
    agents = json.load(sys.stdin).get("result", {}).get("agents", [])
except Exception:
    agents = []
for a in agents:
    print("  %-14s %-8s %s" % (a.get("name", "?"), a.get("agent_status", "?"), a.get("pane_id", "")))
if not agents:
    print("  (the Herdr session is not running, or has no workers)")
'
  echo
  echo "== Handed back =="
  grep -h -E '^[-*>` ]*[A-Z0-9-]+-READY( |$)' "$RUN"/handover-*.md "$RUN"/review-*.md 2>/dev/null | sed -E 's/^[-*>` ]*/  /' | sort -u
  if [ -f "$RUN/gate/queue.md" ]; then
    echo
    echo "== Gate =="
    awk '/^## /{d=($0 ~ /^## Done[[:space:]]*$/); next} d && NF' "$RUN/gate/queue.md" | sed 's/^/  /'
  fi
  echo
  echo "== Run record, last 6 lines =="
  grep '^- ' "$RUN/STATE.md" 2>/dev/null | tail -6 | cut -c1-160 | sed 's/^/  /'
  sleep 20
done
