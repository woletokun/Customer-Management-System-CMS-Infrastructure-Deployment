# Deployment Flow

## Overview

Defines how changes move from development to production.

---

## Flow

1. Code deployed to DEV environment
2. Tested and validated
3. Promoted to UAT
4. User acceptance testing performed
5. Approved changes deployed to PROD

---

## Responsibilities

- DevOps: infrastructure + deployment
- Developers: code changes
- QA: validation

---

## Rollback Strategy

- Restore previous build
- Switch database replica if needed