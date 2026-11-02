# Hosting

The public demo must stay online, free and unrestricted, until the end of the
judging period: **2027-01-29 13:00 PT**.

- One small VPS running `deploy/docker-compose.yml`.
- Rate-limit resurrections per visitor so judges can't exhaust the box.
- Agent sessions are served from recordings (Kiro credits expire 2026-12-31);
  capture and deterministic replay run live.
- Health check + automatic restart on every service.
