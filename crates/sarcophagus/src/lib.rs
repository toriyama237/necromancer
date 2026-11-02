//! # sarcophagus
//!
//! Resurrects a service in an isolated container with `seance-proxy` in
//! replay mode and `time-freezer` preloaded, then compares the new run
//! with the original tape and reports the first divergence.
//!
//! See `docs/spec-seeds/05-sarcophagus.md`.
