#!/bin/bash
# heavy.sh — run a heavy check (build, typecheck, wide test run) in one of a few machine-wide slots
# so lanes take turns. Usage: heavy.sh <command...>
# HEAVY_SLOTS (default 2) and HEAVY_DIR (default ~/.local/state/coordinator-heavy) must be the same for every run on the machine.
SLOTS=${HEAVY_SLOTS:-2}
DIR=${HEAVY_DIR:-$HOME/.local/state/coordinator-heavy}
mkdir -p "$DIR"
while :; do
  for i in $(seq 1 "$SLOTS"); do
    L="$DIR/slot-$i"
    if mkdir "$L" 2>/dev/null; then
      echo $$ > "$L/pid"; trap 'rm -f "$L/pid"; rmdir "$L"' EXIT
      echo "heavy.sh: slot $i: $*" >&2; "$@"; exit $?
    fi
    p=$(cat "$L/pid" 2>/dev/null); [ -n "$p" ] && ! kill -0 "$p" 2>/dev/null && { rm -f "$L/pid"; rmdir "$L"; }
  done
  echo "heavy.sh: all $SLOTS slots busy, waiting ($(date '+%H:%M:%S'))" >&2; sleep 30
done
