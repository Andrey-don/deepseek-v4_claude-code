# Настройка: DeepSeek V4 + Claude Code в VS Code

## Архитектура

Всё происходит внутри VS Code с использованием Split Terminal.

``
 VS Code -> Split Terminal
   Левая панель:  deepseek    <- DeepSeek TUI
   Правая панель: claude      <- Claude Sonnet 4.6
```

---

## Что установлено

| Инструмент | Команда | Назначение |
|------------|---------|------------|
| free-claude-code | claude-ds | Claude Code c DeepSeek под капотом |
| DeepSeek TUI | deepseek | Нативный TUI для DeepSeek |
| fcc-server | fcc-server | Прокси-сервер для claude-ds |

---

## Режим 1: Только DeepSeek V4

1. Терминал VS Code: Ctrl+``\n2. Команда: deepseek
3. При первом запуске: выбери язык, вставь API ключ

Команды внутри DeepSeek TUI:
- /model - выбрать модель Pro или Flash
- /anchor - зафиксировать сообщение после компакта
- /verbose - показать цепочку рассуждений
- /compact - сжать контекст
- Plan и Tasks - панели справа с очередью задач

---

## Режим 2: Claude Sonnet 4.6 оркестратор + DeepSeek исполнитель

1. Терминал 1: cd free-claude-code && fcc-server
2. Нажми Split Terminal (кнопка справа сверху в панели)
3. Левая панель (исполнитель): claude-ds
4. Правая панель (оркестратор): claude
5. Claude делегирует через bash: claude-ds -p задача

---

## Режим 3: DeepSeek TUI оркестратор + Claude Sonnet 4.6 эксперт

1. Split Terminal в VS Code
2. Левая панель: deepseek
3. Правая панель: claude
4. DeepSeek делегирует сложные задачи: claude -p задача

---

## Команды

    deepseek                 - запустить DeepSeek TUI интерактивно
    deepseek задача          - одиночный промт без интерактива
    claude-ds                - Claude Code с DeepSeek (нужен fcc-server)
    claude-ds -p задача      - одиночный промт через прокси
    claude                   - Claude Sonnet 4.6
    claude -p задача         - одиночный промт в Claude

---

## Цены токенов

| Модель | Input | Output |
|--------|-------|--------|
| Claude Sonnet 4.6 | 3.00$ / 1M | 15.00$ / 1M |
| DeepSeek V4 Pro | 1.74$ / 1M | 3.48$ / 1M |
| DeepSeek V4 Flash | 0.07$ / 1M | 0.28$ / 1M |

---

## Репозитории

- free-claude-code: https://github.com/Alishahryar1/free-claude-code
- DeepSeek TUI: https://github.com/Hmbown/DeepSeek-TUI
