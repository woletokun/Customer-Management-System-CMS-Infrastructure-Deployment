# PostgreSQL Replication Setup

## Overview

Streaming replication is used for high availability.

---

## Architecture

- Primary DB (read/write)
- Standby DB (read-only)

---

## Steps

1. Configure primary DB (wal_level = replica)
2. Take base backup
3. Configure standby
4. Start replication

---

## Failover

- Promote standby:
  pg_ctl promote