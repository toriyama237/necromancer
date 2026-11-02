# Necromancer

[![CI](https://github.com/toriyama237/necromancer/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/toriyama237/necromancer/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Conventional Commits](https://img.shields.io/badge/commits-conventional-fe5196.svg)](https://www.conventionalcommits.org/en/v1.0.0/)
[![Kiroween 2026](https://img.shields.io/badge/Kiroween-2026-ff7518.svg)](https://kiroween.devpost.com/)
[![Built with Kiro](https://img.shields.io/badge/built%20with-Kiro-7057ff.svg)](https://kiro.dev/)
[![Category: Frankenstein](https://img.shields.io/badge/category-Frankenstein-2ea44f.svg)](#)
[![Rust 2024](https://img.shields.io/badge/rust-2024%20edition-dea584.svg?logo=rust)](https://www.rust-lang.org/)
[![Open issues](https://img.shields.io/github/issues/toriyama237/necromancer.svg)](https://github.com/toriyama237/necromancer/issues)
[![Last commit](https://img.shields.io/github/last-commit/toriyama237/necromancer/develop.svg)](https://github.com/toriyama237/necromancer/commits/develop)
[![Kiro Crew app](https://img.shields.io/badge/Kiro%20Crew-necromancer--crew-7057ff.svg)](https://github.com/toriyama237/necromancer-crew)

> **No bug stays dead.**

Necromancer captures every request that dies in production, **resurrects it
byte-for-byte** in a sandbox, lets agents find and patch the root cause, then
**proves the fix** by replaying the exact traffic that originally failed.

It works across eras: one request can be followed from a 2026 Rust API,
through PostgreSQL, over a 1971 FTP drop, into a 1959 COBOL settlement batch,
and back.

**Kiroween 2026 · Category: Frankenstein**

> Status: early scaffold. Nothing below is implemented yet.

## Why
On-call engineers lose hours on failures they cannot reproduce: the database
moved on, the partner API answered differently, the clock is not the same.
In systems that mix legacy batch jobs with modern services, nobody can even
follow the request end to end. And when a fix ships, nothing proves it fixes
*that* failure.

## How it works
| Organ | Component | Role |
|---|---|---|
| Ears | `seance-proxy` | Captures HTTP, PostgreSQL wire and FTP traffic onto a tape; replays it later |
| Clock | `time-freezer` | `LD_PRELOAD` shim pinning time and randomness, for any binary, COBOL included |
| Memory | `crypt` | Stores tapes, groups them into graves by failure fingerprint |
| Body | `sarcophagus` | Resurrects the service in a container and finds the first divergence |
| Voice | `necro-mcp` | MCP server: Kiro and agents can list graves, resurrect, verify patches |
| Council | [`necromancer-crew`](https://github.com/toriyama237/necromancer-crew) | Kiro Crew app: four agents that investigate, patch and exorcise |
| Face | `web/necropolis`, `necro` | Graveyard web UI and a 3270-style on-call TUI |

## Repository layout
See [`.kiro/steering/structure.md`](.kiro/steering/structure.md) and
[`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md).

## Quick start
```bash
make setup
make check
docker compose -f deploy/docker-compose.yml up
```

## Contributing
Branching model, commit conventions and release process: [`CONTRIBUTING.md`](CONTRIBUTING.md).

## Built with Kiro
Specs, steering, hooks, MCP, a Kiro power and a Kiro Crew app.
See [`docs/KIRO_USAGE.md`](docs/KIRO_USAGE.md).

## License
[MIT](LICENSE)
