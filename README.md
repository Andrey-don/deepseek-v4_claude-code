# DeepSeek V4 + Claude Code = экономия в 10 раз

Шаблон для запуска связки Claude Code (Opus 4.7) + DeepSeek V4 Pro внутри VS Code.

## Архитектура

```
VS Code
├── Терминал 1: claude        → Claude Opus 4.7 (оркестратор)
├── Терминал 2: claude-ds     → DeepSeek V4 Pro (исполнитель, ~10x дешевле)
└── Терминал 3: deepseek (опционально) → DeepSeek TUI
```

Claude Opus выступает тимлидом и делегирует простые задачи DeepSeek через bash-команду.

## Цены токенов

| Модель | Input | Output |
|--------|-------|--------|
| Claude Opus 4.7 | $6.25 | $25.00 |
| DeepSeek V4 Pro | $1.74 | $3.48 |

Экономия: **5-10x** на простых и средних задачах.

## Установка

### 1. DeepSeek API ключ
Зарегистрируйся на [platform.deepseek.com](https://platform.deepseek.com), пополни баланс на $2 и создай API ключ.

### 2. free-claude-code
Смотри [SETUP.md](SETUP.md) — пошаговая инструкция.

### 3. DeepSeek TUI (опционально)
```bash
npm install -g deepseek-tui
deepseek
```

## Репозитории

- [free-claude-code](https://github.com/Alishahryar1/free-claude-code) — прокси-сервер для Claude Code
- [DeepSeek-TUI](https://github.com/Hmbown/DeepSeek-TUI) — терминальный интерфейс DeepSeek

## Использование

```bash
# Запускаем прокси-сервер (один раз)
fcc-server &

# Claude с Opus (оркестратор)
claude

# Claude на DeepSeek (исполнитель, дешево)
claude-ds
```
