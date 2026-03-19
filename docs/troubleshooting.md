# Troubleshooting Guide

## Common Issues

### App not responding

- Check service status:
  systemctl status cms-app

---

### Database connection failed

- Verify DB is running
- Check credentials

---

### Replication broken

- Restart replica
- Check logs

---

## Logs Location

- /var/log/app.log
- /var/log/postgresql/