#!/usr/bin/env bash
# THEE — The Door. Receives the unknown. Asks: The what? 🍥
set -euo pipefail

INCOMING="intake/incoming.md"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
FRAGMENT="${1:-}"

if [[ -z "$FRAGMENT" ]]; then
  echo "Usage: bash tools/thee.sh \"your fragment\""
  echo ""
  echo "THEE asks: The what?"
  exit 1
fi

if [[ ! -f "$INCOMING" ]]; then
  echo "Error: $INCOMING not found. Run from repo root."
  exit 1
fi

FRAGMENT_BLOCK=$(printf '%s\n' "$FRAGMENT" | sed 's/^/  /')
printf "\n---\nreceived: %s\nfragment: |-\n%s\nthe what:\nyod mark:\nember:     warm\n---\n" "$TIMESTAMP" "$FRAGMENT_BLOCK" >> "$INCOMING"

echo ""
echo "THEE received: \"$FRAGMENT\""
echo "The what?"
echo ""
echo "Fragment logged to $INCOMING"
echo "Next: bash tools/yod.sh \"smallest true action\""
