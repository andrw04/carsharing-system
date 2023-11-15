# 1 users

def get_users():
    return "SELECT * FROM users;"

def create_user(username, password, driving_license, first_name, last_name, email, phone):
    return f"""
    INSERT INTO users
    VALUES ('{username}', '{password}', '{driving_license}', '{first_name}', '{last_name}', '{email}', '{phone}', 0);
    """

def delete_user_by_id(id):
    return f"DELETE FROM users WHERE id = {id};"

def update_user_password(id, password):
    return f"""
    UPDATE users
    SET password = '{password}'
    WHERE users.id = {id};
    """

def get_top_users(minimal_driving_sessions_count):
    return f"""
        SELECT * FROM users
        WHERE id IN (SELECT user_id FROM driving_sesions GROUP BY user_id HAVING COUNT(*) > {minimal_driving_sessions_count});
    """

def get_users_total():
    return """
        SELECT user_id, total_discount, SUM(total_discount) OVER (PARTITION BY user_id) AS total_sum
        FROM driving_sessions;
    """

def get_users_with_fines(): # возвращает пользователей у которых есть хотя бы один неоплаченный штраф
    return """
    SELECT * FROM users
    WHERE EXISTS (SELECT * FROM fines WHERE users.id = fines.id AND fines.fine_status = TRUE);
"""

# 2 cars

def get_cars_with_statuses():
    return f"""
    SELECT cars.id, brands.name, models.name, color, year, license_plate_number, longitude, latitude, car_statuses.title FROM cars
    LEFT JOIN models ON cars.model_id = models.id
    LEFT JOIN brands ON models.brand_id = brands.id
    LEFT JOIN car_statuses ON cars.car_status_id = car_statuses.id;
    """

def create_car(color, model_id, year, license_plate_number, vin, car_status_id, latitude, longitude):
    return f"""
    INSERT INTO cars VALUES
    ('{color}', {model_id}, {year}, '{license_plate_number}', '{vin}', {car_status_id}, {latitude}, {longitude});
    """

def delete_car_by_id(id):
    return f"DELETE FROM cars WHERE id = {id};"

def update_car_status(id, status_id):
    return f"""
    UPDATE cars
    SET car_status_id = {status_id}
    WHERE id = {id};
    """

def update_car_coordinates(id, latitude, longitude):
    return f"""
    UPDATE cars
    SET latitude = {latitude}, longitude = {longitude}
    WHERE id = {id};
    """

# 3 tariffs

def get_tariffs():
    return f"SELECT * FROM tariffs;"

def create_tariff(tariff_name, price):
    return f"INSERT INTO tariffs (title, price) VALUES ('{tariff_name}', {price});"

def delete_tariff_by_id(id):
    return f"DELETE FROM tariffs WHERE tariffs.id = {id};"

def update_tariff(id, price):
    return f"UPDATE tariffs SET price = {price} WHERE id = {id};"

# 4 models

def get_models():
    return f"""
    SELECT models.id, brands.name AS brand_name, models.name AS model_name FROM models
    LEFT JOIN brands ON brand_id = brands.id;
    """

def create_model(name, brand_id):
    return "INSERT INTO models (name, brand_id) VALUES ('{name}', {brand_id});"

def delete_model(id):
    return f"DELETE FROM models WHERE models.id = {id};"

# 5 brands

def get_brands():
    return f"SELECT * FROM brands;"

def create_brand(name):
    return f"INSERT INTO brands (name) VALUES ('{name}')"

def delete_brand(id):
    return f"DELETE FROM models WHERE models.id = {id};"

# 6 car statuses

def get_car_statuses():
    return f"SELECT * FROM car_statuses;"


# 7 driving sessions

def create_driving_session(user_id, car_id, start_time, end_time, tariff_id, total, total_discount):
    return f"""
    INSERT INTO driving_sessions (user_id, car_id, start_time, end_time, tariff_id, total, total_discount) VALUES
    ({user_id}, {car_id}, {start_time}, {end_time}, {tariff_id}, {total}, {total_discount});
    """

def delete_driving_session(id):
    return f"DELETE FROM driving_sessions WHERE driving_sessions.id = {id};"

# 8 fines

def get_user_fines(user_id):
    return f"""
    SELECT * FROM fines
    WHERE user_id = {user_id} AND fine_status = TRUE;
    """

def create_fine(user_id, date_and_time, description,price):
    return f"""
    INSERT INTO fines (user_id, date_and_time, description, fine_status, price) VALUES
    ({user_id}, {date_and_time}, {description}, FALSE, {price});
    """

def delete_fine(id):
    return f"DELETE FROM fines WHERE fines.id = {id};"

# 9 discounts

def get_discounts():
    return "SELECT * FROM discounts;"

def create_discount(title, description, value):
    return f"""INSERT INTO (title, description, value) discounts VALUES
    ({title}, {description}, {value});
    """

def delete_discount(id):
    return f"DELETE FROM discounts WHERE discounts.id = {id};"
