#!/bin/bash

echo "Starting deployment..."

# Pull latest code
git pull origin main

# Install dependencies
npm install

# Build application
npm run build

# Restart service
systemctl restart cms-app

echo "Deployment completed"