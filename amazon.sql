DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
    item_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT(20) NOT NULL,
    primary key (item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("How to become Rich!", "Books",10.00,50),
("Star Wars", "Movies",15.00,110),
("Lamps","Furniture",39.99,40),
("Toms","Shoes",49.99,30),
("Gucci Shirt","Clothing",499.99,12),
("Notebook","Utensils",40.00,14),
("Pencils","Utensils",12.99,133),
("Headset","Computer Accessories",59.99,17),
("Mac Charger","Computer Accessories",48.77.9),
("Mac Mouse","Computer Accessories".30.00,8);