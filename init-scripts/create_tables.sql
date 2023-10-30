CREATE TABLE IF NOT EXISTS brands (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS models (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    brand_id SERIAL REFERENCES brands (id),
    image VARCHAR
);

CREATE TABLE IF NOT EXISTS car_statuses (
    id SERIAL NOT NULL PRIMARY KEY,
    title VARCHAR NOT NULL,
    description VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS cars (
    id SERIAL NOT NULL PRIMARY KEY,
    color VARCHAR NOT NULL,
    model_id SERIAL REFERENCES models (id),
    year INTEGER NOT NULL,
    license_plate_number VARCHAR NOT NULL UNIQUE,
    vin VARCHAR NOT NULL UNIQUE,
    car_status_id SERIAL REFERENCES car_statuses (id),
    latitude NUMERIC NOT NULL,
    longitude NUMERIC NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL NOT NULL PRIMARY KEY,
    username VARCHAR NOT NULL UNIQUE,
    password VARCHAR NOT NULL,
    driving_license VARCHAR NOT NULL UNIQUE,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL UNIQUE,
    phone VARCHAR NOT NULL UNIQUE,
    balance NUMERIC NOT NULL DEFAULT 0 CHECK(balance >= 0)
);

CREATE TABLE IF NOT EXISTS tariffs (
    id SERIAL NOT NULL PRIMARY KEY,
    title VARCHAR NOT NULL,
    price NUMERIC NOT NULL
);

CREATE TABLE IF NOT EXISTS driving_sessions (
    id SERIAL NOT NULL PRIMARY KEY,
    user_id SERIAL REFERENCES users (id),
    car_id SERIAL REFERENCES cars (id),
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    tariff_id SERIAL NOT NULL REFERENCES tariffs (id),
    total NUMERIC NOT NULL,
    total_discount NUMERIC NOT NULL
);

CREATE TABLE IF NOT EXISTS fines (
    id SERIAL NOT NULL PRIMARY KEY,
    user_id SERIAL REFERENCES users (id),
    date_and_time TIMESTAMP NOT NULL,
    description TEXT NOT NULL,
    fine_status BOOLEAN NOT NULL,
    price NUMERIC NOT NULL
);

CREATE TABLE IF NOT EXISTS discounts (
    id SERIAL NOT NULL PRIMARY KEY,
    title VARCHAR NOT NULL UNIQUE,
    description TEXT NOT NULL,
    value INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS users_discounts (
    id SERIAL NOT NULL PRIMARY KEY,
    user_id SERIAL REFERENCES users (id),
    discount_id SERIAL REFERENCES discounts (id),
    date_of_use TIMESTAMP NOT NULL
);