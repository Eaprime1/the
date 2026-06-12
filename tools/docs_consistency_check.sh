#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"

echo "Running docs consistency check in: $ROOT"

# 1) Duplicate path casing check
DUP_CASE=$(find "$ROOT" -type f -not -path "*/.git/*" | sed "s#^$ROOT/##" | awk '{print tolower($0)}' | sort | uniq -d || true)
if [[ -n "$DUP_CASE" ]]; then
  echo "Case-insensitive path collisions detected:"
  echo "$DUP_CASE"
  exit 1
fi

echo "No case-insensitive path collisions detected."

# 2) Unresolved template placeholders check (strict patterns only)
PLACEHOLDER_PATTERNS=(
  "security@example.com"
  "OWNER/REPO"
  "My Prima Terminal"
  "Fill this in when you fork the template"
  "template placeholder"
)

for pattern in "${PLACEHOLDER_PATTERNS[@]}"; do
  matches=$(grep -RFin --exclude-dir=.git --include='*.md' --include='*.yaml' --include='*.yml' "$pattern" "$ROOT" || true)
  if [[ -n "$matches" ]]; then
    echo "Unresolved template placeholder found: $pattern"
    echo "$matches"
    exit 1
  fi
done

echo "No unresolved template placeholders detected."

# 3) Relative markdown link existence check (outside fenced code blocks)
if ! command -v python3 >/dev/null 2>&1; then
  echo "python3 is required for docs consistency checks."
  exit 1
fi
python3 - "$ROOT" <<'PY'
import re
import sys
from pathlib import Path

root = Path(sys.argv[1]).resolve()
md_files = [p for p in root.rglob("*.md") if ".git" not in p.parts]
link_re = re.compile(r'\[[^\]]+\]\(([^)]+)\)')
errors = []

for md in md_files:
    lines = md.read_text(encoding="utf-8", errors="ignore").splitlines()
    in_fence = False
    for line in lines:
        if line.strip().startswith("```"):
            in_fence = not in_fence
            continue
        if in_fence:
            continue
        for raw_target in link_re.findall(line):
            target = raw_target.strip()
            if not target:
                continue
            if target.startswith(("http://", "https://", "mailto:", "#")):
                continue
            target = target.split("#", 1)[0]
            if target.startswith("<") and target.endswith(">"):
                target = target[1:-1]
            candidate = (md.parent / target).resolve()
            if not candidate.exists():
                errors.append(f"{md}: missing link target -> {raw_target}")

if errors:
    print("Broken relative markdown links detected:")
    for err in errors:
        print(err)
    sys.exit(1)

print("No broken relative markdown links detected.")
PY

echo "Docs consistency check passed."
