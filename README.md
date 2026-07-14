# Производственная практика

## Структура проекта

```
Sources/
├── main.swift           // Точка входа
├── Menu.swift           // Оркестратор и меню программы
├── Errors.swift         // Пользовательские ошибки
├── TwinPrimes.swift     // Задание №1
├── Palindrome.swift     // Задание №2
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

### ✅ Задание №2. Проверка строки на палиндром

**Описание**

Реализован алгоритм определения, является ли введенная пользователем строка палиндромом.

Проверка выполняется путем последовательного сравнения символов с начала и конца строки с использованием индексов String.Index.

**Структура решения**

```
run()
 └── isPalindrome()
```

## Результаты работы

Палиндром (нечетное количество символов)

<img width="264" height="189" alt="Снимок экрана — 2026-07-14 в 20 21 09" src="https://github.com/user-attachments/assets/a7d82704-bfac-40c6-a15f-0c61e91feab6" />

Палиндром (четное количество символов)

<img width="275" height="186" alt="Снимок экрана — 2026-07-14 в 20 21 57" src="https://github.com/user-attachments/assets/7874c0b9-6a7b-4bfa-8ad1-fb2e5c297119" />

Строка, не являющаяся палиндромом

<img width="287" height="192" alt="Снимок экрана — 2026-07-14 в 20 22 56" src="https://github.com/user-attachments/assets/8cf17012-dcb0-4a8f-8e23-15e0c24b3dd1" />

Проверка строки, содержащей цифры

<img width="273" height="187" alt="Снимок экрана — 2026-07-14 в 20 23 38" src="https://github.com/user-attachments/assets/5800e758-65bb-4383-8cb4-5001cd2ef4a0" />

Проверка строки, содержащей специальные символы / Unicode

<img width="276" height="192" alt="Снимок экрана — 2026-07-14 в 20 25 08" src="https://github.com/user-attachments/assets/c7d0cfa4-1b11-4378-a724-490a5024f369" />

## Используемые технологии

* Swift
* Swift Package Manager
* Xcode
* Git
* GitHub
