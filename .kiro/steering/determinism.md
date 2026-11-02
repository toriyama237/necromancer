---
inclusion: auto
name: determinism
description: Rules for deterministic capture and replay. Use when working on tapes, the seance proxy, the time freezer or the sarcophagus.
---

# Determinism rules

A replay is valid only if every input the process can observe comes from the tape.

Sources of non-determinism and how each one is pinned:
| Source | Pinned by |
|---|---|
| Wall clock / monotonic clock | time-freezer (`clock_gettime`, `gettimeofday`, `time`) |
| Randomness | time-freezer (`getrandom`, `/dev/urandom` reads) |
| Database answers | seance-proxy replaying PostgreSQL wire responses |
| Outbound HTTP | seance-proxy replaying recorded responses |
| FTP files | seance-proxy replaying control + data channels |
| Ordering of concurrent requests | out of scope for MVP (documented limitation) |

- When a replay asks for something not on the tape, fail loudly with a
  **divergence** pointing at the exact exchange. Never improvise a response.
- Matching of outbound exchanges is by sequence index first, content hash second.
