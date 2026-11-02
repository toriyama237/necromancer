# Seed: Haunted Bank (`haunted-bank/`)

Goal: demo system with real cross-era flow: Rust API + PostgreSQL + FTP drop +
GnuCOBOL settlement batch over fixed-width records.
MVP bugs: #1 amount truncation (PIC 9(5)V99) and #5 midnight cut-off.
No third-party brands in names or data.
