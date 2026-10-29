@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js nao foi encontrado. Instale o Node.js e tente novamente.
  pause
  exit /b 1
)

node server.js
if errorlevel 1 (
  echo O servidor nao conseguiu iniciar. Verifique se a porta 8080 ja esta em uso.
  pause
)
