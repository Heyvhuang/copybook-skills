#!/bin/bash
# wait-cloud-check.sh: exit when a PR comment "Cloud check (... head <head>): PASS|FAIL" names this head.
# Usage: wait-cloud-check.sh <repo-dir> <pr> <head-sha-or-prefix> [timeout-seconds]   (run in the background)
# Prints the comment's first line, or TIMEOUT. Reads comments with gh every 60 s.
R=${1:?usage: wait-cloud-check.sh <repo-dir> <pr> <head> [timeout-seconds]}; pr=${2:?pr}; h=${3:?head}
cd "$R" || exit 1
h=${h:0:8}; end=$((SECONDS+${4:-2700}))
while :; do
  l=$(gh pr view "$pr" --json comments -q '.comments[].body' 2>/dev/null | grep -m1 -E "^Cloud check \(.*head ${h}[0-9a-f]*\): (PASS|FAIL)")
  [ -n "$l" ] && { echo "$l"; exit 0; }
  [ $SECONDS -ge $end ] && { echo "TIMEOUT: no cloud check comment for head $h on #$pr"; exit 0; }
  sleep 60
done
