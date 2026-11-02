---
inclusion: always
---

# Product: Necromancer

**Tagline:** No bug stays dead.

Necromancer captures every request that dies in production, resurrects it
byte-for-byte in a sandbox, lets agents find and patch the root cause, then
**proves** the patch by replaying the exact traffic that originally failed.

## Audience
Backend and SRE teams on call for systems that span decades: modern services
glued to legacy batch jobs (COBOL, FTP drops, fixed-width files). Their worst
incidents cross eras and cannot be reproduced.

## Hackathon context
- Kiroween 2026, category **Frankenstein**: stitch together seemingly
  incompatible technologies (1959 COBOL, 1971 FTP, 1996 PostgreSQL, 2026 Rust
  and AI agents) into one unexpectedly powerful product.
- Also targeting: Best Demo, Best Kiro Crew App (separate repo `necromancer-crew`).
- Solo builder. Deadline: 2026-12-04 14:00 PT. Scope discipline beats ambition.

## Vocabulary (use consistently in code, UI and docs)
| Term | Meaning |
|---|---|
| death | a request that ended in error, timeout or wrong result |
| tape | full replayable record of one request (see `necro-tape`) |
| grave | group of tapes sharing one failure fingerprint |
| resurrection | deterministic replay of a tape in the sarcophagus |
| divergence | first point where a replay differs from the original tape |
| exorcism | patch verified by replay + property-based tests |
| crypt / sarcophagus / seance | storage / sandbox / capture-replay proxy |

## Non-negotiables
- **Everything in English**: code, comments, UI copy, docs, commits.
- The Halloween theme must *serve the function*, never decorate it.
- Every feature must strengthen at least one judging criterion (see `judging.md`).
- The demo must show the real product working. No faked flows.
