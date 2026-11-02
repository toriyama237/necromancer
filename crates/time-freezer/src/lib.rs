//! # time-freezer
//!
//! Built as a `cdylib` and injected with `LD_PRELOAD`. Interposes libc
//! `clock_gettime`, `gettimeofday`, `time` and `getrandom` so that a
//! resurrected process (Rust, COBOL, anything dynamically linked) sees
//! exactly the clock and entropy recorded on its tape.
//!
//! See `docs/spec-seeds/03-time-freezer.md`.
