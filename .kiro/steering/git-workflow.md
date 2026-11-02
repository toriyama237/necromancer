---
inclusion: always
---

# Git workflow (follow when proposing commits, branches or PRs)

- Branch from `develop`: `feature/<scope>-<desc>`, `fix/<scope>-<desc>`, `spec/<name>`, `docs/<desc>`, `chore/<desc>`.
- Never commit to `main` or `develop` directly.
- Commit messages follow Conventional Commits: `type(scope): subject`
  - types: feat fix perf refactor test docs build ci chore revert release
  - scopes: tape seance freezer crypt sarcophagus server mcp cli bank cobol ui power crew kiro ci docs deps
  - imperative, lowercase, no trailing period, max 72 chars
- One logical change per commit. Tests or properties in the same PR as the behavior.
- Add user-facing changes to `CHANGELOG.md` under `[Unreleased]`.
