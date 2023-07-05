CREATE TABLE tables(
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    seats INT NOT NULL,
    category VARCHAR(200)
);
CREATE TABLE payment_methods (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    payment_method_name VARCHAR(200)
);
CREATE TABLE bookings (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    guests INT NOT NULL,
    amount_billed NUMERIC(10, 2) NOT NULL,
    amount_tipped NUMERIC(10, 2),
    payment_id INT REFERENCES payment_methods,
    table_id INT REFERENCES tables
);