---
inclusion: always
---

# Tech stack

| Area | Choice |
|---|---|
| Core language | Rust (stable, edition 2024), single Cargo workspace |
| Async runtime | tokio |
| HTTP API | axum |
| PostgreSQL wire | `pgwire` crate (proxy side) |
| MCP server | `rmcp` (official Rust MCP SDK), stdio transport |
| TUI | `ratatui` |
| Crypt storage | SQLite (embedded) |
| Property-based tests | `proptest` |
| Legacy batch | GnuCOBOL, run in a container (`cobc` is not required on the host) |
| FTP server (demo) | container image, passive mode |
| Sandbox | Docker (Firecracker is a stretch goal) |
| Web UI | SvelteKit + TypeScript, D3 for the Seance timeline |
| Agents | Kiro Crew app in the separate `necromancer-crew` repo |

## Commands
- Build/check: `cargo check --workspace`
- Tests: `cargo test --workspace`
- Lint: `cargo clippy --workspace --all-targets -- -D warnings`
- Format: `cargo fmt --all`
- Demo stack: `docker compose -f deploy/docker-compose.yml up`

## Constraints
- Add crates with `cargo add`; shared versions live in `[workspace.dependencies]`.
- `unsafe` is denied workspace-wide; only `time-freezer` may use it, each block with a `// SAFETY:` comment.
- The public demo must run until 2027-01-29 **without** LLM credits: agent
  sessions are recorded and can be replayed; capture/replay itself never needs an LLM.
