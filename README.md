# **CARSHARING SYSTEM**

Project for Data Models and Database Management Systems

## List of requirements:

### Unauthorized user:

-   registrate
-   log in
-   view tariffs
-   view available cars locations

### Authorized user:

-   rent a car
-   book a car
-   to put money into the account
-   check fines
-   check history of driving sessions
-   get discount

### Admin:

-   add and delete cars
-   add and delete tariffs
-   manage booked reservation
-   fine manage
-   block users
-   manage discounts
-   manage fines

## Инфологическая модель

### 1 discounts

Описывает скидки, предоставляемые пользователям

-   title VARCHAR NOT NULL - название скидки
-   description TEXT NOT NULL - краткое описание предоставляемой скидки
-   value INTEGER - значение предоставляемой скидки в %

### 2 user_discounts

Связывает таблицы пользователей и скидок

-   user_id SERIAL FK - идентификатор пользователя
-   discount_id SERIAL FK - идентификатор скидки
-   date_of_use TIMESTAMP - дата использования скидки

### 3 fines

Описывает штрафы, которые получают пользователи

-   user_id SERIAL FK - идентификатор пользователя, который получил штраф
-   date_and_time TIMESTAMP - дата и время выдачи штрафа
-   description TEXT - описание причины выдачи штрафа (нарушение)
-   fine_status BOOLEAN - статус штрафа (активен/неактивен)

### 4 users

Описывает модель пользователя системы

-   username VARCHAR - логин пользователя, спользутеся для входа
-   password VARCHAR - пароль, который пользователь использует для входа в систему (хешируется заранее)
-   first_name VARCHAR - имя пользователя
-   last_name VARCHAR - фамилия пользователя
-   email VARCHAR - почта пользователя
-   phone VARCHAR - номер телефона

### 5 accounts

Описывает баланс определенного пользователя

-   user_id SERAIL FK PK - пользователь, к которому прикреплен баланс
-   balance NUMERIC - баланс пользователя в $

### 6 driving sessions

Описывает сессии вождения

-   user_id SERIAL FK - идентификатор пользователя
-   car_id SERIAL FK - идентификатор автомобиля
-   start_time TIMESTAMP - время начала сессии вождения
-   end_time TIMESTAMP - время окончания сессии вождения
-   tariff_id SERAIL FK - идентификатор тарифа, по которому начисление счета

### 7 tariffs

Описывает тарифы, доступные пользователю

-   title VARCHAR - название тарифа
-   price NUMERIC - цена

### 8 cars

Описывает автомобили, доступные для аренды

-   brand VARCHAR - бренд автомобиля
-   model VARCHAR - модель автомобиля
-   color VARCHAR - цвет автомобиля
-   year INTEGER - год выпуска автомобиля
-   license_plate_number VARCHAR - номер
-   vin VARCHAR - vin-номер автомобиля
-   car_status_id SERIAL FK - идентификатор статуса автомобиля (свободен, забронирован и тд)
-   car_location SERIAL FK - местоположение автомобиля
-   state_id SERIAL FK - идентификатор состояния автомобиля (уровень топлива, состояние двигателя и тд)

### 9 car_statuses

Описывает статус автомобиля относительно доступности (свободен, забронирован и тд)

-   title VARCHAR - название текущего состояния
-   description VARCHAR - краткое описание состояния

### 10 locations

Описывает координаты местоположения автомобиля

-   latitude NUMERIC - широта
-   longitude NUMERIC - долгота

### 11 states

Описывает техническое состояние автомобиля

-   fuel_level INTEGER - уровень топлива
-   engine_state VARCHAR - состояние двигателя

## Diagram

![diagram](~/../model-scheme/db.png)
