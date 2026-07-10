# Производственная практика

## Структура проекта

```
Sources/
├── Main.swift           // Точка входа
├── Menu.swift           // Оркестратор и меню программы
├── Errors.swift         // Пользовательские ошибки
├── TwinPrimes.swift     // Задание №1
```

---

## Выполненные задания

### ✅ Задание №1. Поиск чисел-близнецов

**Описание**

Реализован алгоритм поиска всех пар простых чисел, отличающихся на 2.

Поддерживаются:

* поиск на диапазоне по умолчанию `[2; 500]`;
* поиск на произвольном диапазоне.

**Использованные возможности Swift**

* Structures
* Static methods
* Access Control (`private`)
* Error Handling (`throws`)
* Default Parameters
* Tuples
* Arrays
* Functions
* Foundation (`sqrt`)

**Структура решения**

```
run()
 └── findTwins()
      └── isPrime()
```

---

## Результаты работы

### Диапазон [2; 500]

<img width="379" height="518" alt="Снимок экрана — 2026-07-10 в 16 18 10" src="https://github.com/user-attachments/assets/2ad05e8f-a0d6-4d60-960d-3f58e3807b9d" />

## Используемые технологии

* Swift
* Swift Package Manager
* Xcode
* Git
* GitHub
