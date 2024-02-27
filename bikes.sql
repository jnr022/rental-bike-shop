-- Create bikes table
CREATE TABLE bikes (
    bike_id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    size INT NOT NULL,
    available BOOLEAN NOT NULL DEFAULT TRUE
);

-- Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    phone VARCHAR(15) NOT NULL UNIQUE,
    name VARCHAR(40) NOT NULL
);

-- Create rentals table
CREATE TABLE rentals (
    rental_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    bike_id INT NOT NULL,
    date_rented DATE NOT NULL DEFAULT NOW(),
    date_returned DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (bike_id) REFERENCES bikes(bike_id)
);

-- Insert data into bikes table
INSERT INTO bikes(type, size) VALUES
    ('Mountain', 27),
    ('Mountain', 28),
    ('Mountain', 29),
    ('Road', 27),
    ('Road', 28),
    ('Road', 29),
    ('BMX', 19),
    ('BMX', 20),
    ('BMX', 21);

-- Viewing the structure of tables
-- \d bikes;
-- \d customers;
-- \d rentals;

-- Viewing data in tables
-- SELECT * FROM bikes;
-- SELECT * FROM customers;
-- SELECT * FROM rentals;
