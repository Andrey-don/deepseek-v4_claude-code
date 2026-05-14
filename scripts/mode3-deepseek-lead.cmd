@echo off
echo.
echo ============================================
echo  РЕЖИМ 3: DeepSeek V4 + Claude Sonnet 4.6
echo  DeepSeek = оркестратор  Claude = эксперт
echo ============================================
echo.
echo [1/3] Запуск fcc-server в фоне...
set PATH=C:\Users\profi\.local\bin;%PATH%
cd /d "c:\Users\profi\Documents\Project\deepseek v4_claude code\free-claude-code"
start "fcc-server" /min cmd /c fcc-server
timeout /t 3 /nobreak > /dev/null
echo [2/3] Открываем второй терминал с Claude Sonnet 4.6 (эксперт)...
start "Claude эксперт" cmd /k "echo [Claude Sonnet 4.6 готов — жди сложных задач] && claude"
timeout /t 2 /nobreak > /dev/null
echo [3/3] Запуск DeepSeek V4 (оркестратор)...
echo.
echo  ПОДСКАЗКА: Скажи DeepSeek:
echo  "Сложные архитектурные задачи делегируй Claude командой: claude -p "задача""
echo.
claude-ds

