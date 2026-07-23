# Производственная практика

## Структура проекта

```
Sources/
└── PracticeProj/
    ├── main.swift                  // Точка входа
    ├── Menu.swift                  // Оркестратор и меню программы
    ├── Errors.swift                // Пользовательские ошибки
    ├── TwinPrimes.swift            // Задание №1
    ├── Palindrome.swift            // Задание №2
    ├── Equipment.swift             // Задание №3
    ├── Deposit.swift               // Задание №4
    ├── MatrixTranspose.swift       // Задание №5
    ├── SumFinder.swift             // Задание №6
    └── Database/
        ├── DatabaseManager.swift   // Работа с базой данных SQLite
        └── DatabaseFactory.swift   // Создание и инициализация базы данных
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

### ✅ Задание №3. Анализ списков оборудования

**Описание**

Реализована программа, которая проводит анализ двух списков оборудования.

Для хранения исходных данных и выполнения запросов используется база данных SQLite. Интеграция SQLite в Swift-проект выполнена с помощью библиотеки SQLite.swift.

Запуск задания осуществляется через главное меню программы.

Программа выполняет следующие действия:

* создаёт подключение к базе данных SQLite;
* создаёт таблицы оборудования и расположения оборудования;
* заполняет таблицы исходными данными;
* объединяет данные таблиц по инвентарному номеру;
* выводит полный список оборудования;
* принимает от пользователя название офиса;
* формирует новый список оборудования, расположенного в указанном офисе.

**Структура базы данных**

```text
Equipment
├── inventory_number — PRIMARY KEY
└── equipment

EquipmentLocation
├── inventory_number — PRIMARY KEY, FOREIGN KEY
└── location
```

Таблицы связаны между собой по полю `inventory_number`.

**Структура решения**

```text
Menu
└── выбор задания №3
     │
     ▼
Equipment
└── run()
     │
     ▼
DatabaseFactory
└── createDatabase()
     │
     ▼
DatabaseManager
├── createTables()
├── seedDatabase()
├── showAllTables()
└── showLocatedEquipment()
```

**Использованные возможности Swift**

* Structures
* Static Methods
* Access Control
* Error Handling (`throws`)
* Optionals
* Tuples
* Arrays
* Functions
* String Interpolation
* Generics

**Использованные технологии**

* Swift
* SQLite
* SQLite.swift
* Swift Package Manager
* Xcode
* Git
* GitHub

## Результаты работы

<img width="431" height="513" alt="Снимок экрана — 2026-07-20 в 15 43 56" src="https://github.com/user-attachments/assets/22ef0d61-f1c5-4cd8-9139-8f22bf755743" />

<img width="440" height="513" alt="Снимок экрана — 2026-07-20 в 15 44 53" src="https://github.com/user-attachments/assets/76d83450-96e2-4a15-b0e9-e00d8f11609b" />

### ✅ Задание №4. Расчёт величины банковского вклада

**Описание**

Реализована программа для расчёта величины банковского вклада с ежемесячной капитализацией процентов.

По условию задачи банк начисляет **16% годовых** на вклад **150 000 рублей**. Программа рассчитывает итоговую сумму вклада через **5 лет (60 месяцев)**, а также поддерживает расчёт для произвольной суммы вклада и любого количества месяцев, введённых пользователем.

Начисление процентов выполняется последовательно для каждого месяца с последующим округлением итогового результата до двух знаков после запятой.

Запуск задания осуществляется через главное меню программы.

**Структура решения**

```text
Menu
└── выбор задания №4
     │
     ▼
Deposit
├── run()
└── calculateDeposit()
```

**Использованные возможности Swift**

* Structures
* Static Methods
* Access Control (`private`)
* Error Handling (`throws`)
* Default Parameters
* Decimal
* Loops (`for`)
* Functions
* Foundation (`NSDecimalRound`)

## Результаты работы

### Расчёт с пользовательскими параметрами

<img width="555" height="290" alt="Снимок экрана — 2026-07-23 в 00 58 50" src="https://github.com/user-attachments/assets/82340353-e2bd-459b-8ab9-19f71babbf4c" />

### Расчёт с параметрами по умолчанию

<img width="468" height="237" alt="Снимок экрана — 2026-07-23 в 00 57 21" src="https://github.com/user-attachments/assets/7c839b02-f08d-4b6f-824d-b769f621b801" />

### ✅ Задание №5. Транспонирование матрицы

**Описание**

Реализована программа для транспонирования матрицы размера `A×B` в матрицу размера `B×A`.

Транспонирование выполняется путем замены строк исходной матрицы на столбцы новой матрицы.

Поддерживаются:

* работа с матрицей, заданной по умолчанию;
* создание матрицы произвольного размера;
* заполнение элементов матрицы пользователем;
* автоматическое формирование транспонированной матрицы.

Для представления матрицы создан вложенный пользовательский тип `Matrix`, который содержит данные матрицы и методы работы с ней.

Матрица хранится в виде двумерного массива:

```swift
[[Int]]
```

Размер матрицы определяется через вычисляемые свойства:

```swift
rows
cols
```

Инициализация матрицы разделена на создание объекта и заполнение данных. Создание матрицы выполняется через инициализаторы, а ввод пользовательских значений вынесен в отдельный метод `fillFromUser()`.

**Структура решения**

```text
Menu
└── выбор задания №5
     │
     ▼
MatrixTranspose
├── runDefault()
├── run()
│
└── Matrix
     ├── init(values:)
     ├── init(rows:cols:)
     ├── fillFromUser()
     ├── printMatrix()
     └── transposed()
```

**Алгоритм транспонирования**

Для каждого элемента исходной матрицы выполняется перенос:

```text
M[row][col] → Mt[col][row]
```

Пример:

```text
Исходная матрица:

1 2 3
4 5 6
7 8 9


Транспонированная матрица:

1 4 7
2 5 8
3 6 9
```

**Использованные возможности Swift**

* Structures
* Nested Types
* Initializers
* Computed Properties
* Mutating Methods
* Access Control (`private`)
* Error Handling (`throws`)
* Optionals
* Arrays
* Two-dimensional Arrays
* Functions

## Результаты работы

### Транспонирование матрицы по умолчанию

<img width="437" height="386" alt="Снимок экрана — 2026-07-23 в 05 15 26" src="https://github.com/user-attachments/assets/ffefc158-5768-4634-a283-ac41434fd638" />

### Транспонирование матрицы с пользовательским вводом

<img width="414" height="717" alt="Снимок экрана — 2026-07-23 в 05 17 14" src="https://github.com/user-attachments/assets/d90d7a18-bd66-4396-89dc-470dea3ad33d" />

## Используемые технологии

* Swift
* Swift Package Manager
* Xcode
* Git
* GitHub
