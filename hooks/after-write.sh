#!/usr/bin/env bash

# Simple after-write hook: scan changed files for console.log and FIXME

set -euo pipefail

# Ensure we are in a git repo
if ! git rev-parse --show-toplevel >/dev/null 2>&1; then
  echo "after-write: not inside a git repository; skipping checks." >&2
  exit 0
fi

# Get list of changed/untracked files (no staging required)
changed_files="$(git status --porcelain | awk '{print $2}')"

echo "after-write: checking changed files for potential issues..." >&2

if [ -z "${changed_files}" ]; then
  echo "after-write: no tracked changes detected." >&2
  exit 0
fi

found=0

for f in ${changed_files}; do
  # Only inspect regular files
  if [ -f "${f}" ]; then
    if grep -qi 'console.log' "${f}"; then
      echo "[Warning] console.log found in ${f} — remove debug logging before committing." >&2
      found=1
    fi
    if grep -qi 'fixme' "${f}"; then
      echo "[Warning] FIXME comment detected in ${f}." >&2
      found=1
    fi
  fi
done

if [ "${found}" -eq 1 ]; then
  echo "Run /suggest-commit-message to craft a clean commit." >&2
  # Non-zero so Claude surfaces it as a hook message
  exit 1
fi

echo "after-write: no obvious issues detected." >&2
exit 0
