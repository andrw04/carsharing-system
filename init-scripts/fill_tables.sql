INSERT INTO brands (name) VALUES
('Toyota'),
('Volkswagen'),
('Hyundai'),
('Ford'),
('Nissan'),
('Honda'),
('Chevrolet'),
('Skoda');


INSERT INTO models (name, brand_id) VALUES
('Corolla', 1),
('Camry', 1),
('Land Cruiser', 1),
('Highlander', 1),
('RAV4', 1),
('Yaris', 1),
('Avensis', 1),
('Prius', 1),
('Golf', 2),
('Passat', 2),
('Tiguan', 2),
('Polo', 2),
('Touareg', 2),
('Jetta', 2),
('Scirocco', 2),
('Elantra', 3),
('Tucson', 3),
('Santa Fe', 3),
('Sonata', 3),
('Creta', 3),
('Fiesta', 4),
('Focus', 4),
('Mustang', 4),
('Explorer', 4),
('Maxima', 5),
('Leaf', 5),
('Juke', 5),
('Accord', 6),
('Civic', 6),
('CR-V', 6),
('Cobalt', 7),
('Camaro', 7),
('Octavia', 8),
('Rapid', 8),
('Superb', 8);


INSERT INTO car_statuses (title, description) VALUES
('Available', 'The car is free and ready to use.'),
('Reserved', 'The car has been reserved by a specific user and is awaiting the start of the trip.'),
('In use', 'The car is in use at the moment.'),
('Maintenance', 'The car is undergoing maintenance.'),
('Not available', 'The car is temporarily or permanently unavailable for use.');


INSERT INTO cars (color, model_id, year, license_plate_number, vin, car_status_id, latitude, longitude) VALUES
('Red', 1, 2023, 'ABC123', '1HGCM82633A123456', 1, 53.902334, 27.5618791),
('Blue', 2, 2022, 'XYZ789', '1HGCM82633A123457', 2, 53.902334, 27.5618792),
('Green', 3, 2021, 'DEF456', '1HGCM82633A123458', 3, 53.902334, 27.5618793),
('Yellow', 4, 2020, 'GHI789', '1HGCM82633A123459', 4, 53.902334, 27.5618794),
('Black', 5, 2019, 'JKL012', '1HGCM82633A123450', 5, 53.902334, 27.5618795),
('White', 6, 2018, 'MNO345', '1HGCM82633A123451', 1, 53.902334, 27.5618796),
('Silver', 7, 2017, 'PQR678', '1HGCM82633A123452', 2, 53.902334, 27.5618797),
('Gray', 8, 2016, 'STU901', '1HGCM82633A123453', 3, 53.902334, 27.5618798),
('Red', 1, 2023, 'ABC124', '1HGCM82633A123461', 4, 53.902334, 27.5618801),
('Blue', 2, 2022, 'XYZ780', '1HGCM82633A123462', 5, 53.902334, 27.5618802),
('Green', 3, 2021, 'DEF457', '1HGCM82633A123463', 1, 53.902334, 27.5618803),
('Yellow', 4, 2020, 'GHI788', '1HGCM82633A123464', 2, 53.902334, 27.5618804),
('Black', 5, 2019, 'JKL013', '1HGCM82633A123465', 3, 53.902334, 27.5618805),
('White', 6, 2018, 'MNO346', '1HGCM82633A123466', 4, 53.902334, 27.5618806),
('Silver', 7, 2017, 'PQR679', '1HGCM82633A123467', 5, 53.902334, 27.5618807),
('Gray', 8, 2016, 'STU902', '1HGCM82633A123468', 1, 53.902334, 27.5618808),
('Purple', 1, 2015, 'YZA568', '1HGCM82633A123469', 2, 53.902334, 27.5618809),
('Pink', 2, 2014, 'QWE789', '1HGCM82633A123470', 3, 53.902334, 27.5618810),
('Red', 3, 2023, 'ABC125', '1HGCM82633A123471', 4, 53.902334, 27.5618811),
('Blue', 4, 2022, 'XYZ781', '1HGCM82633A123472', 5, 53.902334, 27.5618812),
('Green', 5, 2021, 'DEF458', '1HGCM82633A123473', 1, 53.902334, 27.5618813),
('Yellow', 6, 2020, 'GHI787', '1HGCM82633A123474', 2, 53.902334, 27.5618814),
('Black', 7, 2019, 'JKL014', '1HGCM82633A123475', 3, 53.902334, 27.5618815),
('White', 8, 2018, 'MNO347', '1HGCM82633A123476', 4, 53.902334, 27.5618816),
('Silver', 1, 2017, 'PQR680', '1HGCM82633A123477', 5, 53.902334, 27.5618817),
('Gray', 2, 2016, 'STU903', '1HGCM82633A123478', 1, 53.902334, 27.5618818),
('Purple', 3, 2015, 'YZA569', '1HGCM82633A123479', 2, 53.902334, 27.5618819),
('Pink', 4, 2014, 'QWE790', '1HGCM82633A123480', 3, 53.902334, 27.5618820),
('Red', 5, 2023, 'ABC126', '1HGCM82633A123481', 4, 53.902334, 27.5618821),
('Blue', 6, 2022, 'XYZ782', '1HGCM82633A123482', 5, 53.902334, 27.5618822),
('Green', 7, 2021, 'DEF459', '1HGCM82633A123483', 1, 53.902334, 27.5618823),
('Yellow', 8, 2020, 'GHI786', '1HGCM82633A123484', 2, 53.902334, 27.5618824),
('Black', 1, 2019, 'JKL015', '1HGCM82633A123485', 3, 53.902334, 27.5618825),
('White', 2, 2018, 'MNO348', '1HGCM82633A123486', 4, 53.902334, 27.5618826),
('Silver', 3, 2017, 'PQR681', '1HGCM82633A123487', 5, 53.902334, 27.5618827),
('Gray', 4, 2016, 'STU904', '1HGCM82633A123488', 1, 53.902334, 27.5618828),
('Purple', 5, 2015, 'YZA570', '1HGCM82633A123489', 2, 53.902334, 27.5618829),
('Pink', 6, 2014, 'QWE791', '1HGCM82633A123490', 3, 53.902334, 27.5618830),
('Red', 7, 2023, 'ABC127', '1HGCM82633A123491', 4, 53.902334, 27.5618831),
('Blue', 8, 2022, 'XYZ783', '1HGCM82633A123492', 5, 53.902334, 27.5618832),
('Green', 1, 2021, 'DEF460', '1HGCM82633A123493', 1, 53.902334, 27.5618833),
('Yellow', 2, 2020, 'GHI785', '1HGCM82633A123494', 2, 53.902334, 27.5618834),
('Black', 3, 2019, 'JKL016', '1HGCM82633A123495', 3, 53.902334, 27.5618835),
('White', 4, 2018, 'MNO349', '1HGCM82633A123496', 4, 53.902334, 27.5618836),
('Silver', 5, 2017, 'PQR682', '1HGCM82633A123497', 5, 53.902334, 27.5618837),
('Gray', 6, 2016, 'STU905', '1HGCM82633A123498', 1, 53.902334, 27.5618838),
('Purple', 7, 2015, 'YZA571', '1HGCM82633A123499', 2, 53.902334, 27.5618839),
('Pink', 8, 2014, 'QWE792', '1HGCM82633A123500', 3, 53.902334, 27.5618840),
('Red', 1, 2023, 'ABC128', '1HGCM82633A123501', 4, 53.902334, 27.5618842),
('Blue', 2, 2022, 'XYZ784', '1HGCM82633A123502', 5, 53.902334, 27.5618843);


INSERT INTO users (username, password, driving_license, first_name, last_name, email, phone, balance) VALUES
('user1', '7c6a180b36896a0a8c02787eeafb0e4c', 'DL12345', 'Ivan', 'Ivanov', 'user1@example.com', '+375291234567', 100.00),
('user2', '6cb75f652a9b52798eb6cf2201057c73', 'DL12346', 'Petr', 'Petrov', 'user2@example.com', '+375291234568', 200.00),
('user3', '819b0643d6b89dc9b579fdfc9094f28e', 'DL12347', 'Sergey', 'Sergeev', 'user3@example.com', '+375291234569', 300.00),
('user4', '34cc93ece0ba9e3f6f235d4af979b16c', 'DL12348', 'Dmitry', 'Dmitriev', 'user4@example.com', '+375291234570', 400.00),
('user5', 'db0edd04aaac4506f7edab03ac855d56', 'DL12349', 'Alexey', 'Alexeev', 'user5@example.com', '+375291234571', 500.00),
('user6', '218dd27aebeccecae69ad8408d9a36bf', 'DL12350', 'Nikolay', 'Nikolaev', 'user6@example.com', '+375291234572', 600.00),
('user7', '00cdb7bb942cf6b290ceb97d6aca64a3', 'DL12351', 'Vladimir', 'Vladimirov', 'user7@example.com', '+375291234573', 700.00),
('user8', 'b25ef06be3b6948c0bc431da46c2c738', 'DL12352', 'Mikhail', 'Mikhailov', 'user8@example.com', '+375291234574', 800.00),
('user9', '5d69dd95ac183c9643780ed7027d128a', 'DL12353', 'Andrey', 'Andreev', 'user9@example.com', '+375291234575', 900.00),
('user10', '87e897e3b54a405da144968b2ca19b45', 'DL12354', 'Yury', 'Yuriev', 'user10@example.com', '+375291234576', 1000.00),
('user11', '1e5c2776cf544e213c3d279c40719643', 'DL12355', 'Anton', 'Antonov', 'user11@example.com', '+375291234577', 1100.00),
('user12', 'c24a542f884e144451f9063b79e7994e', 'DL12356', 'Boris', 'Borisov', 'user12@example.com', '+375291234578', 1200.00),
('user13', 'ee684912c7e588d03ccb40f17ed080c9', 'DL12357', 'Viktor', 'Viktorov', 'user13@example.com', '+375291234579', 1300.00),
('user14', '578cde069875dc9c732646e45b64ba79', 'DL12358', 'Grigory', 'Grigoriev', 'user14@example.com', '+375291234580', 1400.00),
('user15', '9141fea0574f83e190ab7479d516630d', 'DL12359', 'Konstantin', 'Konstantinov', 'user15@example.com', '+375291234581', 1500.00),
('user16', '2b40aaa979727c43411c305540bbed50', 'DL12360', 'Leonid', 'Leonidov', 'user16@example.com', '+375291234582', 1600.00),
('user17', 'a63f9709abc75bf8bd8f6e1ba9992573', 'DL12361', 'Oleg', 'Olegov', 'user17@example.com', '+375291234583', 1700.00),
('user18', '80b8bdceb474b5127b6aca386bb8ce14', 'DL12362', 'Roman', 'Romanov', 'user18@example.com', '+375291234584', 1800.00),
('user19', 'e532ae6f28f4c2be70b500d3d34724eb', 'DL12363', 'Stanislav', 'Stanislavov', 'user19@example.com', '+375291234585', 1900.00),
('user20 ', 'aee67d9bb569ad1562f7b67cfccbd2ef', 'DL12364', 'Timofey', 'Timofeev', 'user20 @example.com', '+375291234586', 2000.00);


INSERT INTO tariffs (title, price) VALUES
('Basic', 10.00),
('Standard', 20.00),
('Premium', 30.00),
('Deluxe', 40.00),
('Ultimate', 50.00);


INSERT INTO driving_sessions (user_id, car_id, start_time, end_time, tariff_id, total, total_discount) VALUES
(1, 1, '2023-01-01 10:00:00', '2023-01-01 11:00:00', 1, 10.00, 5.00),
(2, 2, '2023-01-02 12:00:00', '2023-01-02 13:00:00', 2, 20.00, 10.00),
(3, 3, '2023-01-03 14:00:00', '2023-01-03 15:00:00', 3, 30.00, 15.00),
(4, 4, '2023-01-04 16:00:00', '2023-01-04 17:00:00', 4, 40.00, 20.00),
(5, 5, '2023-01-05 18:00:00', '2023-01-05 19:00:00', 5, 50.00, 25.00),
(6, 6 ,'2023-01-06 20:00:00', '2023-01-06 21:00:00', 1, 10.00, 5.00),
(7, 7 ,'2023-01-07 22:00:00', '2023-01-07 23:59:59', 2, 20.00, 10.00),
(8, 8 ,'2023-01-08 10:30:00', '2023-01-08 11:30:00', 3, 30.00, 15.00),
(9, 9 ,'2023-01-09 12:30:00', '2023-01-09 13:30:00', 4, 40.00, 20.00),
(10, 10, '2023-01-10 14:30:00', '2023-01-10 15:30:00', 5, 50.00, 25.00),
(11, 11, '2023-02-11 16:30:30', '2023-02-11 17:30:30', 1, 10.50, 5.25),
(12, 12, '2023-02-12 18:30:30', '2023-02-12 19:30:30', 2, 20.50, 10.25),
(13, 13, '2023-02-13 20:30:30', '2023-02-13 21:30:30', 3, 30.50, 15.25),
(14, 14, '2023-02-14 22:30:30', '2023-02-14 23:59:59', 4, 40.50, 20.25);


INSERT INTO fines (user_id, date_and_time, description, fine_status, price) VALUES
(1, '2023-01-01 12:00:00', 'Did not return the car at the specified time.', false, 50.00),
(2, '2023-01-02 15:30:00', 'Left the car out of the car-sharing area.', false, 30.00),
(3, '2023-01-03 16:45:00', 'Left the car in a dirty condition.', false, 70.00),
(4, '2023-01-04 19:20:00', 'Damaged the car.', true, 20.00),
(5, '2023-01-05 22:10:00', 'Didn’t report a car malfunction.', false, 40.00),
(6, '2023-02-06 23:30:00', 'Left the car with the windows.', true, 60.00),
(7, '2023-02-07 10:30:30', 'Smoked in the car.', false, 80.00),
(8, '2023-02-08 12:30:30', 'Smoked in the car.', true, 10.00),
(9, '2023-02-09 14:30:30', 'Left the car with the windows.', false, 100.00),
(10, '2023-02-10 16:30:30', 'Did not return the car at the specified time.', true, 200.00);


INSERT INTO discounts (title, description, value) VALUES
('New user', 'Doscount for a new users.', 10),
('Birthday', 'Discount on users birthday.', 15),
('Regular customer', 'Discount for regular customers who have been using the service for more than a year.', 20),
('High mileage', 'Discount for users who have traveled more than 1000 km.', 25),
('Invite a friend', 'Discount for users who invite a friend to the service.', 30);


INSERT INTO users_discounts (user_id, discount_id, date_of_use) VALUES
(1, 1, '2023-01-01 12:00:00'),
(2, 2, '2023-01-02 15:30:00'),
(3, 3, '2023-01-03 16:45:00'),
(4, 4, '2023-01-04 19:20:00'),
(5, 5, '2023-01-05 22:10:00'),
(6, 1, '2023-02-06 23:30:00'),
(7, 2, '2023-02-07 10:30:30'),
(8, 3, '2023-02-08 12:30:30'),
(9, 4, '2023-02-09 14:30:30'),
(10, 5, '2023-02-10 16:30:30');