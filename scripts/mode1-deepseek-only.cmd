@echo off
echo.
echo ============================================
echo  РЕЖИМ 1: Только DeepSeek V4 Pro
echo  Без Claude — максимальная экономия
echo ============================================
echo.
echo [1/2] Запуск fcc-server в фоне...
set PATH=C:\Users\profi\.local\bin;%PATH%
cd /d "c:\Users\profi\Documents\Project\deepseek v4_claude code\free-claude-code"
start "fcc-server" /min cmd /c fcc-server
timeout /t 3 /nobreak > /dev/null
echo [2/2] Запуск DeepSeek...
echo.
claude-ds

