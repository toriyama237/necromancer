# Necropolis (web UI)

SvelteKit + TypeScript. Scaffolded with `npx sv create` when the UI spec starts.

## Screens
1. **Graveyard**: live graves, one lane per era (COBOL 1959, FTP 1971,
   PostgreSQL 1996, Rust 2026), size = death count, English epitaphs.
2. **Seance**: swimlane timeline of one tape across systems; time scrubber;
   decoded payloads (SQL, FTP, EBCDIC/hex record); original vs replay with the
   divergence highlighted.
3. **Council**: live (or recorded) agent session feed and the proposed patch diff.
4. **Exorcism**: before/after replay and property-based test results.

## Design rules
WCAG AA contrast, full keyboard navigation, `prefers-reduced-motion`,
dead/alive never conveyed by color alone. Gothic, sober, readable.
