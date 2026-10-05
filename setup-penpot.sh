#!/bin/bash

echo "==================================================="
echo "[1/4] Creating local Penpot directory..."
echo "==================================================="
mkdir -p ~/penpot
cd ~/penpot

echo "==================================================="
echo "[2/4] Downloading official Docker Compose file..."
echo "==================================================="
curl -s -o docker-compose.yaml https://githubusercontent.com

echo "==================================================="
echo "[3/4] Modifying flags for local profile registration..."
echo "==================================================="
sed -i 's/PENPOT_FLAGS: disable-email-verification enable-smtp enable-prepl-server disable-secure-session-cookies enable-mcp enable-admin-console/PENPOT_FLAGS: disable-email-verification enable-smtp enable-prepl-server disable-secure-session-cookies enable-mcp enable-admin-console registration/g' docker-compose.yaml

echo "==================================================="
echo "[4/4] Starting Penpot containers in Docker..."
echo "==================================================="
docker compose up -d

echo "==================================================="
echo "SETUP COMPLETE! Open http://localhost:9001 in your browser."
echo "==================================================="
