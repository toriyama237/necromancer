#!/usr/bin/env bash
# Guards the Kiroween 2026 submission requirements. Used by CI and pre-commit.
set -euo pipefail
fail=0
err() { echo "✖ $*" >&2; fail=1; }

[ -d .kiro ]          || err "/.kiro directory is missing at the repository root."
[ -d .kiro/steering ] || err "/.kiro/steering is missing."
[ -d .kiro/hooks ]    || err "/.kiro/hooks is missing."
if git check-ignore -q .kiro 2>/dev/null || git check-ignore -q .kiro/steering/product.md 2>/dev/null; then
  err "/.kiro (or a sub-folder) is git-ignored. This can disqualify the submission."
fi
[ -f LICENSE ] || err "LICENSE file is missing (open source license required)."

[ "$fail" -eq 0 ] && echo "✔ Hackathon compliance checks passed."
exit "$fail"
