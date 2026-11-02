# Contributing

## Setup
```bash
make setup   # installs git hooks from .githooks
make check   # what CI runs
```

## Branching model

```
main      ── stable, always demo-ready. Judges land here. Changes only via release PRs from develop.
develop   ── integration branch. Changes only via squash-merged PRs.
  feature/<scope>-<short-desc>   new capability       feature/seance-pg-extended-query
  fix/<scope>-<short-desc>       bug fix              fix/freezer-gettimeofday-tz
  docs/<short-desc>              documentation        docs/kiro-usage-hooks
  chore/<short-desc>             tooling, deps        chore/bump-tokio
  spec/<name>                    Kiro spec work       spec/tape-format
  release/vX.Y.Z                 release prep         release/v0.2.0
```

1. Branch from `develop`.
2. Open a PR to `develop`. CI must pass. The PR is **squash-merged**, so the PR title becomes the commit.
3. To release: PR `develop -> main` (merge commit), then tag `vX.Y.Z` on `main`. The release workflow builds binaries and publishes the GitHub release.

Both `main` and `develop` are protected: no direct pushes, no force pushes, no deletion, CI required.

## Commit messages: Conventional Commits

```
type(scope)!: subject

body: what and why, wrapped at 72 columns

Refs: #12
BREAKING CHANGE: description (if any)
```

| Type | Use for |
|---|---|
| `feat` | new capability |
| `fix` | bug fix |
| `perf` | performance |
| `refactor` | no behavior change |
| `test` | tests and properties only |
| `docs` | documentation only |
| `build` | build system, dependencies |
| `ci` | CI configuration |
| `chore` | maintenance |
| `revert` | revert a previous commit |
| `release` | release preparation |

**Scopes:** `tape` `seance` `freezer` `crypt` `sarcophagus` `server` `mcp` `cli`
`bank` `cobol` `ui` `power` `crew` `kiro` `ci` `docs` `deps`

Rules: imperative mood, lowercase subject, no trailing period, max 72 characters.

```
feat(seance): replay postgres extended query protocol
fix(freezer): intercept gettimeofday for glibc 2.39
test(tape): add encode/decode round-trip property
docs(kiro): describe the tape-format-guard hook
```

Enforced locally by `.githooks/commit-msg` and on PR titles by CI.

## Versioning
SemVer. Pre-1.0 during the hackathon: `0.MINOR.PATCH`. Every release updates `CHANGELOG.md`.
