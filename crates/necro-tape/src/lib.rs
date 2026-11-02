//! # necro-tape
//!
//! A **tape** is the complete, replayable record of one request's life:
//! the inbound request, every outbound exchange (SQL, HTTP, FTP) with its
//! response, and every non-deterministic input (clock reads, random bytes).
//!
//! Replaying a tape must reproduce the original execution byte-for-byte.
//! See `docs/spec-seeds/01-tape-format.md`.

/// Monotonic identifier of a tape inside the crypt.
pub type TapeId = u64;
