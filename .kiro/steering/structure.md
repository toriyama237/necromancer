---
inclusion: always
---

# Repository structure

```
crates/necro-tape     tape format (shared types, encoding)  <- everything depends on it
crates/seance-proxy   capture / replay proxy (bin)
crates/time-freezer   LD_PRELOAD shim (cdylib)
crates/crypt          tapes + graves storage (lib)
crates/sarcophagus    replay orchestration + divergence detection (lib)
crates/necro-server   API + WebSocket for the UI (bin)
crates/necro-mcp      MCP server (bin)
crates/necro-cli      `necro` terminal client (bin)
haunted-bank/         demo system: Rust API + PostgreSQL + FTP + COBOL batch
web/necropolis/       SvelteKit UI
power/necromancer/    Kiro power (plugin.json + mcp.json + skills)
deploy/               docker compose, hosting notes
docs/                 architecture, judging map, Kiro usage write-up, spec seeds
```

- Dependency direction: binaries -> libs -> `necro-tape`. Libs never depend on binaries.
- One spec per component under `.kiro/specs/`, seeded from `docs/spec-seeds/`.
