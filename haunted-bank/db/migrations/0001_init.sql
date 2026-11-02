-- Haunted Bank schema (stub). Finalized by the haunted-bank spec.
CREATE TABLE IF NOT EXISTS accounts (
    id          TEXT PRIMARY KEY,
    holder_name TEXT        NOT NULL,
    balance     NUMERIC(14, 2) NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS transfers (
    id          TEXT PRIMARY KEY,
    from_acct   TEXT        NOT NULL REFERENCES accounts(id),
    to_acct     TEXT        NOT NULL REFERENCES accounts(id),
    amount      NUMERIC(14, 2) NOT NULL,
    created_at  TIMESTAMPTZ NOT NULL
);
