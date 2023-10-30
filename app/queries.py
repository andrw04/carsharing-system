def get_users():
    return "SELECT * FROM users;"

def create_user(username, password, driving_license, first_name, last_name, email, phone):
    return f"INSERT INTO users VALUES ('{username}', '{password}', '{driving_license}', '{first_name}', '{last_name}', '{email}', '{phone}', 0);"