@echo off
echo.
echo ============================================
echo  РЕЖИМ 2: Claude Sonnet 4.6 + DeepSeek V4
echo  Claude = оркестратор  DeepSeek = исполнитель
echo ============================================
echo.
echo [1/3] Запуск fcc-server в фоне...
set PATH=C:\Users\profi\.local\bin;%PATH%
cd /d "c:\Users\profi\Documents\Project\deepseek v4_claude code\free-claude-code"
start "fcc-server" /min cmd /c fcc-server
timeout /t 3 /nobreak > /dev/null
echo [2/3] Открываем второй терминал с DeepSeek (исполнитель)...
start "DeepSeek исполнитель" cmd /k "set PATH=C:\Users\profi\.local\bin;%PATH% && set ANTHROPIC_API_KEY=freecc && set ANTHROPIC_BASE_URL=http://127.0.0.1:8082 && set ANTHROPIC_AUTH_TOKEN= && set ANTHROPIC_MODEL= && echo [DeepSeek готов — жди задач от Claude] && claude --bare"
timeout /t 2 /nobreak > /dev/null
echo [3/3] Запуск Claude Sonnet 4.6 (оркестратор)...
echo.
echo  ПОДСКАЗКА: Скажи Claude:
echo  "Делегируй простые задачи DeepSeek командой: claude-ds -p "задача""
echo.
claude

