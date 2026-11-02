# Seed: time freezer (`crates/time-freezer`)

Goal: LD_PRELOAD shim interposing `clock_gettime`, `gettimeofday`, `time`,
`getrandom` so a resurrected process (Rust or GnuCOBOL) observes recorded values.
Modes: record (pass-through + log) and replay (serve from tape).
Must demonstrate: Haunted Bank bug 5 (23:59:59 UTC cut-off) reproduced on replay.
