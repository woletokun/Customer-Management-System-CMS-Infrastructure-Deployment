# Database Failover Guide

## Objective

Ensure high availability during database failure.

---

## Architecture

- Primary DB (active)
- Standby DB (replica)

---

## Failover Process

### Automatic (if configured)

- System detects failure
- Replica promoted automatically

---

### Manual Failover

```bash
pg_ctl promote