# Seed: crypt (`crates/crypt`)

Goal: SQLite-backed append-only storage of tapes; graves = tapes grouped by
failure fingerprint with count, first/last seen, era of the failing layer.
Queries needed by UI and MCP: list graves (filters), get tape, live feed of new deaths.
