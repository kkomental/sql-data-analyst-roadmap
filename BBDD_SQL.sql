#### CREACIÓN BBDD ####

CREATE DATABASE datashop;
USE datashop;

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    age INT
    );
    
CREATE TABLE products (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10, 2)
    );
    
CREATE TABLE orders (
	orders_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quality INT,
    order_date DATETIME
    );

DROP DATABASE datashop;
ALTER TABLE orders
ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
ADD CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products (product_id);


