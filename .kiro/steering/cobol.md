---
inclusion: fileMatch
fileMatchPattern: ["**/*.cbl", "**/*.cpy"]
---

# COBOL conventions (Haunted Bank settlement batch)

- GnuCOBOL, **fixed format** (columns 8-72). Never reflow lines.
- Record layouts live in copybooks under `haunted-bank/settlement/copybooks/`.
- Amounts are `PIC S9(n)V99 COMP-3` or display `PIC 9(n)V99`; keep the
  original (buggy) sizes unless a spec explicitly fixes one.
- Planted bugs are intentional and documented in `haunted-bank/README.md`.
  Do not "fix" them outside a bugfix spec: they are the demo.
