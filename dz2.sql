CREATE DATABASE dz2;
USE dz2;
CREATE TABLE sales
(id INT auto_increment primary key,
order_date DATE,
count_product INT);

INSERT INTO sales (order_date, count_product)
VALUES
('022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT id,
CASE
	WHEN count_product < 100
		THEN 'Маленький заказ'
	WHEN count_product BETWEEN 100 and 300
		THEN 'Средний заказ'
	ELSE 'Большой заказ'
END AS 'Тип заказа'
FROM sales;

CREATE TABLE orders
(id int auto_increment primary key,
employee_id varchar(20),
amount FLOAT,
order_status varchar(20));

INSERT INTO orders (employee_id, amount, order_status)
VALUES 
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT *,
IF (order_status = 'OPEN', 'Order is in open state',
	IF (order_status = 'CLOSED', 'Order is closed', 'Order is cancelled')
	)
AS full_order_status
from orders;