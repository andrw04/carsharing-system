-- 1 Функция рассчета total и discount После завершения поездки
CREATE OR REPLACE FUNCTION calculate_total_sum()
RETURNS TRIGGER AS $$
DECLARE discount NUMERIC;
DECLARE time_interval NUMERIC;
BEGIN
-- Проверка наличия обновления конкретных столбцов, чтобы избежать цикла
    IF NEW.end_time IS DISTINCT FROM OLD.end_time OR NEW.start_time IS DISTINCT FROM OLD.start_time THEN
        SELECT discounts.value INTO discount
        FROM discounts
        WHERE discounts.id = (SELECT discount_id FROM users_discounts WHERE users_discounts.user_id = NEW.user_id);

        SELECT EXTRACT(EPOCH FROM (NEW.end_time - NEW.start_time)) / 60 INTO time_interval;

        UPDATE driving_sessions
        SET 
            total = ROUND(time_interval * (SELECT price FROM tariffs WHERE id = tariff_id), 2),
            total_discount = ROUND(time_interval * (SELECT price FROM tariffs WHERE id = tariff_id) * (1 - discount / 100), 2)
        WHERE id = NEW.id;
    END IF;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;


-- 1 триггер на завершение поездки
CREATE TRIGGER calculate_total_sum_trigger
AFTER UPDATE ON driving_sessions
FOR EACH ROW
EXECUTE PROCEDURE calculate_total_sum();


-- 1 Процедура начала поездки
CREATE OR REPLACE FUNCTION start_driving_session(
    p_user_id INTEGER,
    p_car_id INTEGER,
    p_start_time TIMESTAMP,
    p_tariff_id INTEGER
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO driving_sessions (user_id, car_id, start_time, tariff_id)
    VALUES (p_user_id, p_car_id, p_start_time, p_tariff_id);
END;
$$ LANGUAGE plpgsql;


-- 2 Процедура на завершение поездки
CREATE OR REPLACE FUNCTION stop_driving_session(
    p_session_id INTEGER,
    p_end_time TIMESTAMP
)
RETURNS VOID AS $$
BEGIN
    UPDATE driving_sessions
    SET end_time = p_end_time
    WHERE id = p_session_id;
END;
$$ LANGUAGE plpgsql;


-- 2 Функция триггера на добавление штрафа
CREATE OR REPLACE FUNCTION fine_insert()
RETURNS TRIGGER AS $$
DECLARE 
    user_balance NUMERIC;
BEGIN
    
    SELECT balance INTO user_balance
    FROM users
    WHERE id = NEW.user_id;
    
    IF user_balance >= NEW.price THEN
        UPDATE users
        SET balance = user_balance - NEW.price
        WHERE id = NEW.user_id;
        
        UPDATE fines
        SET fine_status = FALSE
        WHERE id = NEW.id;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- 2 Триггер на добавление штрафа пользователю
CREATE TRIGGER handle_fine_insert_trigger
AFTER INSERT ON fines
FOR EACH ROW
EXECUTE PROCEDURE fine_insert();


-- 3 Процедура на добавление баланса пользователю
CREATE OR REPLACE FUNCTION update_user_balance(
    p_user_id INTEGER,
    p_amount NUMERIC
)
RETURNS VOID AS $$
BEGIN
    UPDATE users
    SET balance = balance + p_amount
    WHERE id = p_user_id;
END;
$$ LANGUAGE plpgsql;


-- 3 Функция ставит статус автомобиля на In Use
CREATE OR REPLACE FUNCTION take_car()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE cars
    SET car_status_id = 3
    WHERE id = NEW.car_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- 3 Триггер на начало поездки
CREATE TRIGGER take_car_trigger
AFTER INSERT ON driving_sessions
FOR EACH ROW
EXECUTE PROCEDURE take_car();


-- 4 Функция ставит статус автомобиля на Available
CREATE OR REPLACE FUNCTION leave_car()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE cars
    SET car_status_id = 1
    WHERE id = NEW.car_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- 4 Триггер на завершение поездки
CREATE TRIGGER leave_car_trigger
AFTER UPDATE ON driving_sessions
FOR EACH ROW
EXECUTE PROCEDURE leave_car();

-- 5 Процедура оплаты штрафа
CREATE OR REPLACE FUNCTION pay_fine(
    p_user_id INTEGER,
    p_fine_id INTEGER
)
RETURNS VOID AS $$
DECLARE
    user_balance NUMERIC;
DECLARE
    fine_price NUMERIC;
BEGIN
    SELECT users.balance INTO user_balance
    FROM users
    WHERE id = p_user_id;

    SELECT fines.price INTO fine_price
    FROM fines
    WHERE id = p_fine_id;

    IF user_balance >= fine_price THEN
        UPDATE users
        SET balance = balance - fine_price
        WHERE id = p_user_id;

        UPDATE fines
        SET fine_status = FALSE
        WHERE id = p_fine_id;
    END IF; 
END;
$$ LANGUAGE plpgsql;