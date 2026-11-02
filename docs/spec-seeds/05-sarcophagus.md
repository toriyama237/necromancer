# Seed: sarcophagus (`crates/sarcophagus`)

Goal: given a tape and a service image (or a patched build), start the service
in a container with seance-proxy in replay mode and time-freezer preloaded,
re-send the inbound request, and report: reproduced / fixed / first divergence.
