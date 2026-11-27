#!/bin/bash
# watch-ready.sh — wake the coordinator when a lane, review or gate finishes.
# Usage: watch-ready.sh <run-dir> [timeout-seconds] [herdr-session]   (run one per run, in the background)
# Reads lines starting with <NAME>-READY in <run-dir>/handover-*.md and review-*.md, any files matched by
# READY_GLOBS (space-separated globs relative to <run-dir>; keep it the same on every start), and the lines under "## Done" in
# <run-dir>/gate/queue.md. Prints BASELINE on first use, CHANGED: + new lines, or TIMEOUT.
# Seen lines persist in <run-dir>/tools/.ready-seen, so a line written while no watcher ran fires on the next start.
# With a Herdr session it also prints STOPPED: when a worker seen working stops (done, idle, blocked)
# without a new READY line: a lane that stopped to ask a question, or crashed.
RUN=${1:?usage: watch-ready.sh <run-dir> [timeout-seconds] [herdr-session]}
SESSION=$3
mkdir -p "$RUN/tools"; SEEN="$RUN/tools/.ready-seen"
sig() {
  local extra=() g
  for g in $READY_GLOBS; do extra+=("$RUN"/$g); done
  { grep -h -E '^[-*>` ]*[A-Z0-9-]+-READY( |$)' "$RUN"/handover-*.md "$RUN"/review-*.md "${extra[@]}" 2>/dev/null | sed -E 's/^[-*>` ]*//'
    [ -f "$RUN/gate/queue.md" ] && awk '/^## /{d=($0 ~ /^## Done[[:space:]]*$/); next} d' "$RUN/gate/queue.md"
  } | sort
}
working() {
  [ -n "$SESSION" ] || return 0
  env -u HERDR_SESSION herdr --session "$SESSION" agent list 2>/dev/null | python3 -c '
import json, sys
try: agents = json.load(sys.stdin).get("result", {}).get("agents", [])
except Exception: agents = []
for a in agents: print(a.get("name", "?"), a.get("pane_id", ""), a.get("agent_status", ""))'
}
now=$(sig)
[ -f "$SEEN" ] || { echo "BASELINE:"; echo "$now" | cut -c1-240; echo "$now" > "$SEEN"; exit 0; }
end=$((SECONDS+${2:-3600})); busy=""
while :; do
  if [ "$now" != "$(cat "$SEEN")" ]; then echo "CHANGED:"; comm -13 "$SEEN" <(echo "$now") | cut -c1-240; echo "$now" > "$SEEN"; exit 0; fi
  rows=$(working)
  for w in $busy; do
    st=$(echo "$rows" | awk -v n="$w" '$1==n{print $3}')
    [ "$st" = working ] || { echo "STOPPED: $w ${st:-gone} with no new READY line (read its pane)"; exit 0; }
  done
  busy=$(echo "$rows" | awk '$3=="working"{print $1}' | sort -u | tr '\n' ' ')
  [ $SECONDS -ge $end ] && { echo "TIMEOUT: nothing new"; exit 0; }
  sleep 20; now=$(sig)
done
