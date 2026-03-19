# Database Backup Strategy

## Overview

Ensures data durability and recoverability for CMS.

---

## Backup Types

- Full backups (daily)
- Incremental backups (optional future improvement)

---

## Schedule

- Daily backup at 02:00 AM

---

## Storage

- Local disk (temporary)
- Remote storage (optional S3 / offsite)

---

## Retention Policy

- Retain backups for 7 days
- Older backups automatically deleted

---

## Recovery Objective

- RTO: < 1 hour
- RPO: < 24 hours

---

## Tools Used

- pg_dump (PostgreSQL)
- Cron jobs