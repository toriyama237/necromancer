# Seed: seance proxy (`crates/seance-proxy`)

Goal: capture and replay traffic for HTTP/1.1, PostgreSQL wire protocol v3
(simple + extended query), and FTP (control channel + passive data channel).

Capture: transparent forwarding, write exchanges to a tape, no behavior change.
Replay: answer from the tape; any unexpected request is a divergence, never improvised.

Properties to test: codec round-trips per protocol; capture-then-replay yields
identical bytes to the client.
