---
inclusion: fileMatch
fileMatchPattern: "**/*.rs"
---

# Rust conventions

- Libraries return `thiserror` errors; binaries use `anyhow` at the edges.
- No `unwrap()`/`expect()` outside tests and `main` startup.
- Logging through `tracing`, structured fields, never `println!` in libraries.
- Protocol codecs are pure functions (`bytes -> frames -> bytes`) with no I/O,
  so they can be property-tested.
- Every codec gets a proptest round-trip property: `decode(encode(x)) == x`.
- Public items have doc comments in English.
