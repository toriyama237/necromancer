# Architecture

## Data flow
```
           capture                                   replay
 client -> seance-proxy -> real deps        tape -> seance-proxy (answers from tape)
              |                                        ^
              v                                        |
            tape --> crypt (graves) --> sarcophagus ---+--> service in container
                                          |                 + time-freezer (LD_PRELOAD)
                                          v
                                 divergence report --> necro-server --> Necropolis UI
                                          |
                                       necro-mcp --> Kiro / necromancer-crew agents
```

## Key decisions
| Decision | Why |
|---|---|
| Record at the network boundary (proxy), not in the app | Works for any language, including COBOL; no code changes |
| Pin time/randomness with `LD_PRELOAD` | Language-agnostic; reproduces clock-dependent bugs |
| SQLite for the crypt | Zero ops for a solo build; tapes are append-only |
| Docker sandbox for MVP | Good enough isolation; Firecracker is a stretch goal |
| Agents in a separate Crew app | Hackathon rule for the Crew prize; clean separation via MCP |
| Recorded agent sessions in the public demo | Demo must outlive LLM credits (judging ends 2027-01-29) |

## Known limitations (MVP)
- Thread scheduling is not recorded: concurrency races are not replayed deterministically.
- Statically linked binaries bypass `LD_PRELOAD`.
