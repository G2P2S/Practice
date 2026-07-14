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

### Диапазон [312; 805]

<img width="417" height="392" alt="Снимок экрана — 2026-07-14 в 17 53 31" src="https://github.com/user-attachments/assets/5cadf0b8-5926-45a7-9f2c-84f64dc51308" />

### Диапазон [227; 1000]

<img width="419" height="549" alt="Снимок экрана — 2026-07-14 в 17 54 52" src="https://github.com/user-attachments/assets/8ddf5b3b-0230-4952-92e0-d5dc2ab5a9ec" />

### Диапазон [461; 950]

<img width="402" height="421" alt="Снимок экрана — 2026-07-14 в 17 56 03" src="https://github.com/user-attachments/assets/2a3b4f49-6742-451e-a3c0-0e303568e104" />

## Используемые технологии

* Swift
* Swift Package Manager
* Xcode
* Git
* GitHub
