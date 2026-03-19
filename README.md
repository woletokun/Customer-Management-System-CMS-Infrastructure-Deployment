***🏢 Customer Management System (CMS) – Infrastructure Deployment

***🏢 Associated with Plexada System Integrators Ltd

***🚀 PROJECT OVERVIEW

Designed and managed multi-environment infrastructure (Development, UAT, Production) for a Customer Management System, ensuring high availability, scalability, security, and resilience.

The project focused on:

Environment standardization

Database reliability (replication + DR)

Middleware integration (WSO2)

Operational stability and issue resolution

***📊 🧱 ARCHITECTURE DIAGRAM


                        ┌────────────────────────────┐
                        │         End Users          │
                        │   (Web / Internal Apps)    │
                        └─────────────┬──────────────┘
                                      │
                                      ▼
                        ┌────────────────────────────┐
                        │       Load Balancer        │
                        │   (Nginx / HAProxy)        │
                        └─────────────┬──────────────┘
                                      │
                    ┌─────────────────┼─────────────────┐
                    ▼                 ▼                 ▼
        ┌──────────────────┐ ┌──────────────────┐ ┌──────────────────┐
        │   DEV ENV        │ │   UAT ENV        │ │   PROD ENV       │
        │ (Isolated Stack) │ │ (Pre-Production) │ │ (Live System)    │
        └────────┬─────────┘ └────────┬─────────┘ └────────┬─────────┘
                 │                    │                    │
                 ▼                    ▼                    ▼
        ┌──────────────────────────────────────────────────────┐
        │        Application Layer (CMS Services)              │
        │         (App Servers + APIs + WSO2 Gateway)          │
        └────────────────────────────┬─────────────────────────┘
                                     │
                                     ▼
        ┌──────────────────────────────────────────────────────┐
        │        Database Layer (PostgreSQL Cluster)           │
        │   Primary DB  →  Read Replica / Standby DB           │
        └────────────────────────────┬─────────────────────────┘
                                     │
                                     ▼
        ┌──────────────────────────────────────────────────────┐
        │ Backup & Disaster Recovery                           │
        │ Scheduled Backups + Replication Failover             │
        └──────────────────────────────────────────────────────┘

        

***🔄 🔁 ARCHITECTURE FLOW

***1️⃣ User Request Flow

Users access CMS via:

Web UI or internal tools

Traffic hits:

Load balancer (NGINX / HAProxy)

***2️⃣ Environment Routing

Requests are routed to:

DEV → for development/testing

UAT → for validation

PROD → for live usage

👉 Each environment is fully isolated

***3️⃣ Application Layer

CMS services run on:

Application servers

API gateways via WSO2

Responsibilities:

API management

Authentication

Service orchestration

***4️⃣ Database Layer

PostgreSQL setup:

Primary (write)

Replica (read / standby)

Features:

Streaming replication

High availability

Data consistency

***5️⃣ Disaster Recovery

Backup strategy:

Scheduled dumps

Replication failover:

Automatic or manual switch

***6️⃣ Operational Flow

Dev → deploy → test in UAT → release to PROD

Issues handled across environments

Infrastructure optimized continuously

***⚙️ INFRASTRUCTURE COMPONENTS

***🖥️ Compute

Linux servers (App + DB)

***🌐 Networking

Load balancer (NGINX / HAProxy)

***🧠 Middleware

WSO2 API Gateway

***🗄️ Database

PostgreSQL (Primary + Replica)

***🔁 DR & Backup

Replication + scheduled backups
