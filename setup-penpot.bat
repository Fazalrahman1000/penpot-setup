@echo off
echo ===================================================
echo [1/4] Creating local Penpot directory...
echo ===================================================
if not exist "E:\penpot" (
    mkdir "E:\penpot"
)
cd /d "E:\penpot"

echo ===================================================
echo [2/4] Downloading official Docker Compose file...
echo ===================================================
curl -s -o docker-compose.yaml https://githubusercontent.com

echo ===================================================
echo [3/4] Modifying flags for Windows local profile registration...
echo ===================================================
powershell -Command "(gc docker-compose.yaml) -replace 'PENPOT_FLAGS: disable-email-verification enable-smtp enable-prepl-server disable-secure-session-cookies enable-mcp enable-admin-console', 'PENPOT_FLAGS: disable-email-verification enable-smtp enable-prepl-server disable-secure-session-cookies enable-mcp enable-admin-console registration' | Out-File -encoding ASCII docker-compose.yaml"

echo ===================================================
echo [4/4] Starting Penpot containers in Docker...
echo ===================================================
docker compose up -d

echo ===================================================
echo SETUP COMPLETE! Open http://localhost:9001 in your browser.
echo ===================================================
pause
