# The Haunted Bank

A tiny bank whose request path spans 67 years of computing. It exists to die
in interesting ways so Necromancer can resurrect it.

```
client --HTTP/JSON--> haunted-bank-api (Rust, 2026) --SQL--> PostgreSQL (1996)
                                 |
                                 +--FTP (1971)--> settlement drop
                                                       |
                                       SETTLE (COBOL, 1959) via GnuCOBOL
                                       fixed-width records, COMP-3 amounts
```

All traffic between components flows through `seance-proxy`.

## Planted bugs (intentional, do not fix outside a bugfix spec)

| # | Bug | Layer | Why it is hard to reproduce |
|---|---|---|---|
| 1 | Amount field `PIC 9(5)V99` silently truncates transfers of 100,000.00 and above | COBOL | No error anywhere; the customer just loses money |
| 2 | `COMP-3` rounding differs from the API's decimal rounding by 0.01 | COBOL + Rust | Only some amounts, only after settlement |
| 3 | Two-digit expiry year: card expiring `00` is treated as 1900 | COBOL | Depends on stored data and on today's date |
| 4 | Non-ASCII name (e.g. `Zoé`) corrupts the fixed-width record | FTP + COBOL | Encoding mismatch between eras |
| 5 | Transfer at 23:59:59 UTC lands on the wrong settlement day | Rust + COBOL | Depends on the clock: only the time-freezer can replay it |

MVP target: bugs 1 and 5. Others are stretch goals.
