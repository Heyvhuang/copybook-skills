#!/bin/bash
# batch.sh: merge PR heads in order onto a base without a worktree, for one gate run on the result.
# Usage: [BATCH_PUSH=1] batch.sh <repo-dir> <base-ref> <name> <head>...
# Prints MERGED per head, TREE-EQUALS-HEAD when the batch adds nothing to the last head, and BATCH <sha>.
# Stops at the first conflict (CONFLICT and the paths); merges nothing into any branch.
# BATCH_PUSH=1 pushes the batch commit to origin as refs/heads/batch/<name>.
R=${1:?usage: batch.sh <repo-dir> <base-ref> <name> <head>...}; base=${2:?base}; name=${3:?name}; shift 3
[ "$#" -ge 1 ] || { echo 'usage: batch.sh <repo-dir> <base-ref> <name> <head>...' >&2; exit 2; }
cd "$R" || exit 1
cur=$(git rev-parse --verify -q "${base}^{commit}") || { echo "no such base: $base" >&2; exit 1; }
echo "BASE ${cur}"
for h in "$@"; do
  hc=$(git rev-parse --verify -q "${h}^{commit}") || { echo "no such head: $h" >&2; exit 1; }
  if ! out=$(git merge-tree --write-tree --name-only "$cur" "$hc"); then
    echo "CONFLICT ${hc} on ${cur}"; echo "$out" | sed -n '2,/^$/p' | sed '/^$/d'; exit 1
  fi
  t=$(echo "$out" | head -1)
  cur=$(git commit-tree "$t" -p "$cur" -p "$hc" -m "batch ${name}: + ${hc:0:8}") || exit 1
  echo "MERGED ${hc} -> ${cur}"
done
[ "$t" = "$(git rev-parse "${hc}^{tree}")" ] && echo "TREE-EQUALS-HEAD ${hc}"
echo "BATCH ${cur}"
if [ "${BATCH_PUSH:-0}" = 1 ]; then git push -q origin "${cur}:refs/heads/batch/${name}" && echo "PUSHED batch/${name}"; fi
