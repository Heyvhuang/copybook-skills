#!/bin/bash
# watch-ready.sh — wake the coordinator when a lane, review or gate finishes.
# Usage: watch-ready.sh <run-dir> [timeout-seconds]   (run one per run, in the background)
# Reads lines starting with <NAME>-READY in <run-dir>/handover-*.md and review-*.md, and the lines
# under "## Done" in <run-dir>/gate/queue.md. Prints BASELINE on first use, CHANGED: + new lines, or TIMEOUT.
RUN=${1:?usage: watch-ready.sh <run-dir> [timeout-seconds]}
mkdir -p "$RUN/tools"; SEEN="$RUN/tools/.ready-seen"
sig() {
  { grep -h -E '^[-*>` ]*[A-Z0-9-]+-READY( |$)' "$RUN"/handover-*.md "$RUN"/review-*.md 2>/dev/null | sed -E 's/^[-*>` ]*//'
    [ -f "$RUN/gate/queue.md" ] && awk '/^## /{d=($0 ~ /^## Done[[:space:]]*$/); next} d' "$RUN/gate/queue.md"
  } | sort
}
now=$(sig)
[ -f "$SEEN" ] || { echo "BASELINE:"; echo "$now" | cut -c1-240; echo "$now" > "$SEEN"; exit 0; }
end=$((SECONDS+${2:-3600}))
while :; do
  if [ "$now" != "$(cat "$SEEN")" ]; then echo "CHANGED:"; comm -13 "$SEEN" <(echo "$now") | cut -c1-240; echo "$now" > "$SEEN"; exit 0; fi
  [ $SECONDS -ge $end ] && { echo "TIMEOUT: nothing new"; exit 0; }
  sleep 20; now=$(sig)
done
