//! # seance-proxy
//!
//! Sits between a service and the rest of the world.
//! - **capture** mode: forwards traffic and writes it to a tape.
//! - **replay** mode: answers in place of the real dependencies, from a tape.
//!
//! Protocols (MVP): HTTP/1.1, PostgreSQL wire protocol v3, FTP (control + passive data).
//! See `docs/spec-seeds/02-seance-proxy.md`.

fn main() {
    println!("seance-proxy: not implemented yet");
}
