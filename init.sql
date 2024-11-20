CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT
);

INSERT INTO products (name, category, price, stock) VALUES
('Wireless Mouse', 'Electronics', 25.99, 100),
('Mechanical Keyboard', 'Electronics', 79.99, 50),
('Desk Lamp', 'Home & Office', 19.99, 200),
('Office Chair', 'Furniture', 129.99, 15),
('Gaming Monitor', 'Electronics', 299.99, 20),
('Running Shoes', 'Sports', 74.99, 30),
('Electric Kettle', 'Appliances', 39.99, 40),
('Water Bottle', 'Accessories', 9.99, 500),
('Bluetooth Speaker', 'Electronics', 49.99, 25),
('Tennis Racket', 'Sports', 149.99, 10);