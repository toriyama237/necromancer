---
name: resurrect
description: Resurrect a production failure and prove a fix. Use when the user wants to reproduce, debug or fix an error that happened in production.
---

# Resurrect a dead request

1. `list_graves` to find the failure (filter by route, error or era).
2. `get_tape` to read the full record of the death.
3. `resurrect` to replay it in the sarcophagus and confirm it dies again.
4. Locate the root cause from the reported divergence; write the patch.
5. `verify_patch` to replay the original tape against the patch.
   A fix only counts when the replay now succeeds.
