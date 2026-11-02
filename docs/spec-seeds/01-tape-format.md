# Seed: tape format (`crates/necro-tape`)

Goal: one self-contained, versioned record of a request's life that is enough
to replay it deterministically.

Must contain: inbound request; ordered outbound exchanges (protocol, request
bytes, response bytes, timing); clock reads; random bytes; outcome (success,
error, timeout) and failure fingerprint inputs.

Properties to test: encode/decode round-trip; fingerprint stability (same
failure, different timestamps produces the same fingerprint); version compatibility.
